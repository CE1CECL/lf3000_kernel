/*
 * (C) Copyright 2009
 * jung hyun kim, Nexell Co, <jhkim@nexell.co.kr>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#include <linux/kernel.h>
#include <linux/version.h>
#include <linux/ioport.h>
#include <linux/interrupt.h>
#include <linux/spinlock.h>
#include <linux/init.h>
#include <linux/clocksource.h>
#include <linux/clockchips.h>
#include <linux/delay.h>
#include <linux/clk.h>

#include <asm/mach/time.h>
#include <asm/mach/irq.h>
#include <asm/smp_twd.h>

#include <mach/platform.h>
#include <mach/devices.h>
#include <mach/soc.h>

/*
#define pr_debug 	printk
*/

#define	TIMER_CLOCK_SOURCE_HZ	(1000000)	/* 1MHZ */
#define	TIMER_CLOCK_EVENT_HZ	(1000000)	/* 1MHZ */

/*
 * Timer HW
 */
struct timer_register {
	volatile U32 TCFG0;
	volatile U32 TCFG1;
	volatile U32 TCON;
	volatile U32 TCNTB0;
	volatile U32 TCMPB0;
	volatile U32 TCNTO0;
 	volatile U32 TCNTB1;
	volatile U32 TCMPB1;
	volatile U32 TCNTO1;
	volatile U32 TCNTB2;
	volatile U32 TCMPB2;
	volatile U32 TCNTO2;
	volatile U32 TCNTB3;
	volatile U32 TCMPB3;
	volatile U32 TCNTO3;
	volatile U32 TCNTB4;
	volatile U32 TCNTO4;
	volatile U32 TINT_CSTAT;
};

#define	TCON_AUTO		(1<<3)
#define	TCON_INVERT		(1<<2)
#define	TCON_UPDATE		(1<<1)
#define	TCON_START		(1<<0)
#define TCFG0_CH(ch)	(ch == 0 && ch == 1 ? 8 : 0)
#define TCFG1_CH(ch)	(ch * 4)
#define TCON_CH(ch)		(ch ? ch * 4  + 4 : 0)
#define TINT_CH(ch)		(ch)
#define TINT_CS_CH(ch)	(ch + 5)
#define	TINT_CS_MASK	(0x1F)
#define CH_OFFSET	 	(0xC)

#define	TIMER_BASE		((struct timer_register *)IO_ADDRESS(PHY_BASEADDR_TIMER))
#define	TIMER_READ(ch)	(readl((U8*)&(TIMER_BASE)->TCNTO0 + (CH_OFFSET * ch)))

static void timer_print_hz(int ch, const char* function)
{
	struct timer_register *preg = TIMER_BASE;
	U32 cfg0 = ReadIODW(&preg->TCFG0);
	U32 cfg1 = ReadIODW(&preg->TCFG1);
	U32 scl = (cfg0 >> TCFG0_CH(ch)) & 0xff;
	U32 mux = (cfg1 >> TCFG1_CH(ch)) & 0xf;
	U32 cnt = ReadIODW((U8*)&preg->TCNTB0+(CH_OFFSET * ch));
	if(mux < 5 || ch == 4)
	{
		unsigned long rate;
		char name[16];
		sprintf(name, "%s", CORECLK_NAME_PCLK);
		rate = clk_get_rate(clk_get(NULL, name));
		rate = (rate / (scl+1)) / (1 << mux);
		printk(KERN_INFO "Timer.%d Prescaler%d=%d+1 Divider=/%d [Hz=%lu] Count=%u+1 Hz=%lu (%s)\n",
				ch, (ch == 0 || ch == 1 ? 0 : 1), scl, 1 << mux, rate, cnt, rate / (cnt + 1), function);
	} else {
		unsigned int rate;
		int src, div, periph_clock_id;
		switch(ch)
		{
		case 0:
			periph_clock_id = CLK_ID_TIMER_0;
			break;
		case 1:
			periph_clock_id = CLK_ID_TIMER_1;
			break;
		case 2:
			periph_clock_id = CLK_ID_TIMER_2;
			break;
		case 3:
			periph_clock_id = CLK_ID_TIMER_3;
			break;
		}
		rate = nxp_cpu_periph_get_clock(periph_clock_id, &src, &div);
		rate /= div + 1;
		printk(KERN_INFO "Timer.%d Prescaler%d=%d Divider=TLCK1 [PWMTIMERCLKGEN%d SEL0=PLL%d DIV=%d+1 Hz=%u] Count=%u+1, Hz=%u (%s)\n",
				ch, (ch == 0 && ch == 1 ? 8 : 0), scl, periph_clock_id, src, div, rate, cnt, rate / (cnt + 1), function);
	}
}

static inline void timer_reset(int ch)
{
	nxp_soc_rsc_reset(RESET_ID_TIMER);
}

static inline void timer_clock(int ch, int mux, int scl)
{
	struct timer_register *preg = TIMER_BASE;
	volatile U32 val;

	val  = readl(&preg->TCFG0);
	val &= ~(0xFF   << TCFG0_CH(ch));
	val |=  ((scl-1)<< TCFG0_CH(ch));
	writel(val, &preg->TCFG0);

	val  = readl(&preg->TCFG1);
	val &= ~(0xF << TCFG1_CH(ch));
	val |=  (mux << TCFG1_CH(ch));
	writel(val, &preg->TCFG1);
}

static inline void timer_count(int ch, unsigned int cnt)
{
	struct timer_register *preg = TIMER_BASE;
	writel((cnt-1), (U8*)&preg->TCNTB0+(CH_OFFSET * ch));
	writel((cnt-1), (U8*)&preg->TCMPB0+(CH_OFFSET * ch));
}

static inline void timer_start(int ch, int irqon)
{
	struct timer_register *preg = TIMER_BASE;
	volatile U32 val;
	int on = irqon ? 1 : 0;

	val  = readl(&preg->TINT_CSTAT);
	val &= ~(TINT_CS_MASK<<5 | 0x1 << TINT_CH(ch));
	val |=  (0x1 << TINT_CS_CH(ch) | on << TINT_CH(ch));
	writel(val, &preg->TINT_CSTAT);

	val = readl(&preg->TCON);
	val &= ~(0xE << TCON_CH(ch));
	val |=  (TCON_UPDATE << TCON_CH(ch));
	writel(val, &preg->TCON);

	val &= ~(TCON_UPDATE << TCON_CH(ch));
	val |=  ((TCON_AUTO | TCON_START)  << TCON_CH(ch));
	writel(val, &preg->TCON);
}

static inline void timer_stop(int ch, int irqon)
{
	struct timer_register *preg = TIMER_BASE;
	volatile U32 val;
	int on = irqon ? 1 : 0;

	val  = readl(&preg->TINT_CSTAT);
	val &= ~(TINT_CS_MASK<<5 | 0x1 << TINT_CH(ch));
	val |=  (0x1 << TINT_CS_CH(ch) | on << TINT_CH(ch));
	writel(val, &preg->TINT_CSTAT);

	val  = readl(&preg->TCON);
	val &= ~(TCON_START << TCON_CH(ch));
	writel(val, &preg->TCON);
}

static inline void timer_irq_clear(int ch)
{
	struct timer_register *preg = TIMER_BASE;
	volatile U32 val;
	val  = readl(&preg->TINT_CSTAT);
	val &= ~(TINT_CS_MASK<<5);
	val |= (0x1 << TINT_CS_CH(ch));
	writel(val, &preg->TINT_CSTAT);
}

struct timer_info {
	int			ch;
	int			irq;
	struct clk *clk;
	unsigned long rate;
	int mux;
	int prescale;
	unsigned long tcount;
	unsigned long rcount;
	int in_clkgen;
	/* clock */
};

static struct timer_info tm_src = { 0, };
static struct timer_info tm_evt = { 0, };
#define	tm_source_info()	(&tm_src)
#define	tm_event_info()		(&tm_evt)

/*
 * Timer clock source
 */
static void timer_source_suspend(struct clocksource *cs)
{
	struct timer_info *info = tm_source_info();
	int ch = info->ch;

	info->rcount = (info->tcount - TIMER_READ(ch));
	timer_stop(ch, 0);

	if (info->in_clkgen)
		clk_disable(info->clk);

//	PM_DBGOUT("%s (ch:%d)\n", __func__, ch);
}

static void timer_source_resume(struct clocksource *cs)
{
	struct timer_info *info = tm_source_info();
	int ch = info->ch;
	ulong flags;
	local_irq_save(flags);

	if (info->in_clkgen) {
		clk_set_rate(info->clk, info->rate);
		clk_enable(info->clk);
	}

	timer_reset(ch);
	timer_stop (ch, 0);
	timer_clock(ch, info->mux, info->prescale);
	timer_count(ch, info->rcount+1);	/* restore count */
	timer_start(ch, 0);
	timer_count(ch, info->tcount+1);	/* next count */

	local_irq_restore(flags);
//	PM_DBGOUT("%s (ch:%d, mux=%d, scl=%d)\n", __func__, ch, info->mux, info->prescale);
}

static cycle_t timer_source_read(struct clocksource *cs)
{
	struct timer_info *info = tm_source_info();
	int ch = info->ch;

	info->rcount = (info->tcount - TIMER_READ(ch));
	return (cycle_t)info->rcount;
}

static struct clocksource tm_source_clk = {
	.name 		= "nx-source-timer",
 	.rating		= 300,
 	.read		= timer_source_read,
	.mask		= CLOCKSOURCE_MASK(32),
 	.shift 		= 20,
	.flags		= CLOCK_SOURCE_IS_CONTINUOUS,
	.suspend	= timer_source_suspend,
	.resume		= timer_source_resume,
};

static int __init timer_source_init(int ch)
{
	struct clocksource *cs = &tm_source_clk;
	struct timer_info *info = tm_source_info();
	struct clk *clk = NULL;
	char name[16] = CORECLK_NAME_PCLK;
	unsigned long rate, tclk = 0;
	unsigned long mout, thz, cmp = (-1UL);
	int tscl = 0, tmux = 5, tcnt = (-1UL);
	int mux = 0, scl = 0;
	int version = nxp_cpu_version();

	/* get with PCLK */
	clk  = clk_get(NULL, name);
   	rate = clk_get_rate(clk);
   	for (mux = 0; 5 > mux; mux++) {
   		mout = rate/(1<<mux), scl = mout/TIMER_CLOCK_SOURCE_HZ, thz = mout/scl;
   		if (!(mout%TIMER_CLOCK_SOURCE_HZ) && 256 > scl) {
   			tclk = thz, tmux = mux, tscl = scl;
   			break;
   		}
		if (scl > 256)
			continue;
		if (abs(thz-TIMER_CLOCK_SOURCE_HZ) >= cmp)
			continue;
		tclk = thz, tmux = mux, tscl = scl;
		cmp = abs(thz-TIMER_CLOCK_SOURCE_HZ);
   	}
	info->clk = clk;

	/* get with CLKGEN */
	if (version) {
		sprintf(name, "%s.%d", DEV_NAME_TIMER, ch);
		clk  = clk_get(NULL, name);
		rate = clk_round_rate(clk, TIMER_CLOCK_SOURCE_HZ);
		if (abs(tclk - TIMER_CLOCK_SOURCE_HZ) >= abs(rate - TIMER_CLOCK_SOURCE_HZ)) {
			clk_set_rate(clk, rate);
			tclk = rate, tmux = 5, tscl = 1;
			clk_put(info->clk);
			info->clk = clk;
			info->in_clkgen = 1;
		} else {
			clk_put(clk);
			rate = clk_get_rate(info->clk);	/* PCLK */
		}
	}
	pr_debug("%s (ch:%d, mux=%d, scl=%d, rate=%ld)\n", __func__, ch, tmux, tscl, rate);

	info->ch = ch;
	info->irq = -1;
	info->mux = tmux;
	info->prescale = tscl;
	info->tcount = tcnt;
	info->rate = tclk;

	/*
	 * register timer source
	 */
	cs->mult = clocksource_hz2mult(tclk, cs->shift);
	clocksource_register(cs);

	/*
	 * source timer run
	 */
	timer_reset(ch);
	timer_stop (ch, 0);
	timer_clock(ch, tmux, tscl);
	timer_count(ch, tcnt+1);
	timer_start(ch, 0);

	printk("timer.%d: source, %9lu(HZ:%d), mult:%u\n", ch, tclk, HZ, cs->mult);
 	return 0;
}

/*
 * Timer clock event
 */
static inline void timer_event_resume(struct timer_info *info)
{
	int ch = info->ch;

#if (0)
	clk_set_rate(info->clk, info->rate);
	clk_enable(info->clk);
#endif

	timer_stop(ch, 1);
	timer_clock(ch, info->mux, info->prescale);
//	PM_DBGOUT("%s  (ch:%d, mux=%d, scl=%d)\n", __func__, ch, info->mux, info->prescale);
}

static void timer_event_set_mode(enum clock_event_mode mode, struct clock_event_device *dev)
{
	struct timer_info *info = tm_event_info();
	int ch = info->ch;
	unsigned long cnt = info->tcount;
	pr_debug(" %s (ch:%d, mode:0x%x, cnt:%ld)\n", __func__, ch, mode, cnt);

	switch(mode) {
	case CLOCK_EVT_MODE_UNUSED:		// 0x0
	case CLOCK_EVT_MODE_ONESHOT:	// 0x3
		break;

	case CLOCK_EVT_MODE_SHUTDOWN:	// 0x1
		timer_stop(ch, 0);
		break;

	case CLOCK_EVT_MODE_RESUME:		// 0x4
		timer_event_resume(info);

	case CLOCK_EVT_MODE_PERIODIC:	// 0x2
		timer_stop (ch, 0);
		timer_count(ch, cnt);
		timer_start(ch, 1);
		break;

	default:
		break;
	}
}

static int timer_event_set_next(unsigned long delta, struct clock_event_device *dev)
{
	struct timer_info *info = tm_event_info();
	int ch = info->ch;
	ulong flags;

	pr_debug(" %s (ch:%d,delta:%ld)\n", __func__, ch, delta);
	raw_local_irq_save(flags);

	timer_stop (ch, 0);
	timer_count(ch, delta);
	timer_start(ch, 1);

	raw_local_irq_restore(flags);
	return 0;
}

static struct clock_event_device tm_event_clk = {
	.name			= "event timer",
	.shift			= 32,
	.features       = CLOCK_EVT_FEAT_PERIODIC | CLOCK_EVT_FEAT_ONESHOT,
	.set_mode		= timer_event_set_mode,
	.set_next_event	= timer_event_set_next,
	.rating			= 300,
};

#define	TIMER_TICK_MSG(ch, cn) 	{	\
		static long count = 0;			\
		if (0 == (count++ % cn))		\
			printk("[cpu.%d evt: %4ld, cnt=%8u]\n", 	\
			smp_processor_id(), count-1, readl((U8*)&(TIMER_BASE)->TCNTB0+(CH_OFFSET*ch)));	\
		}

static irqreturn_t timer_event_handler(int irq, void *dev_id)
{
	struct clock_event_device *dev = &tm_event_clk;
	struct timer_info *info= tm_event_info();
	int ch = info->ch;

	timer_irq_clear(ch);
	dev->event_handler(dev);
//	TIMER_TICK_MSG(ch, 50);

	return IRQ_HANDLED;
}

static struct irqaction timer_event_irqaction = {
	.name		= "Event Timer IRQ",
	.flags		= IRQF_DISABLED | IRQF_TIMER,
	.handler	= timer_event_handler,
};

static int __init timer_event_init(int ch)
{
	struct clock_event_device *dev = &tm_event_clk;
	struct timer_info *info = tm_event_info();
	struct clk *clk = NULL;
	char name[16] = CORECLK_NAME_PCLK;
	unsigned long rate, tclk = 0;
	unsigned long mout, thz, cmp = (-1UL);
	int tscl = 0, tmux = 5, tcnt = 0;
	int mux = 0, scl = 0;
	int version = nxp_cpu_version();

	/* get with PCLK */
	clk  = clk_get(NULL, name);
   	rate = clk_get_rate(clk);
   	for (mux = 0; 5 > mux; mux++) {
   		mout = rate/(1<<mux), scl = mout/TIMER_CLOCK_SOURCE_HZ, thz = mout/scl;
   		if (!(mout%TIMER_CLOCK_SOURCE_HZ) && 256 > scl) {
   			tclk = thz, tmux = mux, tscl = scl;
   			break;
   		}
		if (scl > 256)
			continue;
		if (abs(thz-TIMER_CLOCK_SOURCE_HZ) >= cmp)
			continue;
		tclk = thz, tmux = mux, tscl = scl;
		cmp = abs(thz-TIMER_CLOCK_SOURCE_HZ);

   	}
	tcnt = tclk/HZ;
	info->clk = clk;

	/* get with CLKGEN */
	if (version) {
		sprintf(name, "%s.%d", DEV_NAME_TIMER, ch);
		clk  = clk_get(NULL, name);
		rate = clk_round_rate(clk, TIMER_CLOCK_SOURCE_HZ);
		if (abs(tclk - TIMER_CLOCK_SOURCE_HZ) >= abs(rate - TIMER_CLOCK_SOURCE_HZ)) {
			clk_set_rate(clk, rate);
			tclk = rate, tmux = 5, tscl = 1, tcnt = rate/HZ;	/* Timer Count := 1 Mhz counting */
			clk_put(info->clk);
			info->clk = clk;
			info->in_clkgen = 1;
		} else {
			clk_put(clk);
			rate = clk_get_rate(info->clk);	/* PCLK */
		}
	}
	pr_debug("%s  (ch:%d, mux=%d, scl=%d, cnt=%d, rate=%ld)\n",
		__func__, ch, tmux, tscl, tcnt, rate);

	info->ch  = ch;
	info->irq = IRQ_PHY_TIMER_INT0 + ch;
	info->tcount = tcnt;
	info->mux = tmux;
	info->prescale = tscl;
	info->rate = tclk;

	/*
	 * setup timer as free-running clocksource
	 */
	timer_stop (ch, 1);
	timer_clock(ch, tmux, tscl);

	/*
	 * Make irqs happen for the system timer
	 */
	setup_irq(info->irq, &timer_event_irqaction);

	/*
	 * register timer event device
	 */
	dev->irq = info->irq;
	dev->cpumask = cpumask_of(0);

	clockevents_config_and_register(dev, tclk, 0xf, 0xffffffff);

	printk("timer.%d: event , %9lu(HZ:%d), mult:%u\n", ch, tclk, HZ, dev->mult);
	return 0;
}

#ifdef CONFIG_HAVE_ARM_TWD
#define	SCU_PVT_PHYBASE		(__PB_IO_MAP_MPPR_PHYS + 0x00000600) 	// 0xF0001000
#define IRQ_LOCALTIMER      IRQ_GIC_PPI_PVT
#define IRQ_LOCALWDOG       IRQ_GIC_PPI_WDT

static DEFINE_TWD_LOCAL_TIMER(twd_local_timer,
			      SCU_PVT_PHYBASE,
			      IRQ_LOCALTIMER);

static void __init timer_twd_init(void)
{
	int err = twd_local_timer_register(&twd_local_timer);
	if (err)
		pr_err("fail: twd_local_timer_register err = %d\n", err);
}
#else
#define timer_twd_init()	do { } while(0)
#endif

static void __init timer_initialize(void)
{
	pr_debug("%s\n", __func__);

	timer_source_init(CFG_TIMER_SYS_TICK_CH);
	timer_event_init(CFG_TIMER_EVT_TICK_CH);
	timer_twd_init();

	return;
}

struct sys_timer nxp_cpu_sys_timer = {
	.init	= timer_initialize,
};

