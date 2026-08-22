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
#include <linux/slab.h>
#include <linux/module.h>
#include <linux/i2c.h>
#include <linux/init.h>
#include <linux/time.h>
#include <linux/interrupt.h>
#include <linux/delay.h>
#include <linux/errno.h>
#include <linux/err.h>
#include <linux/platform_device.h>
#include <linux/interrupt.h>
#include <linux/clk.h>

#include <mach/platform.h>
#include <mach/devices.h>
#include <mach/soc.h>
#if (0)
#define DBGOUT(msg...)		do { printk(KERN_INFO "i2c: " msg); } while(0)
#else
#define DBGOUT(msg...)		do {} while (0)
#endif

#if (0)
#define ERROUT(msg...)		{ printk(KERN_ERR "i2c: " msg); }
#else
#define ERROUT(msg...)		do {} while (0)
#endif

#define	DEF_I2C_RATE		(100000)	/* wait 50 msec */
#define DEF_RETRY_COUNT		(10)
#define	DEF_WAIT_ACK		(200)		/* wait 50 msec */

struct i2c_register {
	unsigned int ICCR;    	///< 0x00 : I2C Control Register
    unsigned int ICSR;      ///< 0x04 : I2C Status Register
    unsigned int IAR;       ///< 0x08 : I2C Address Register
    unsigned int IDSR;      ///< 0x0C : I2C Data Register
    unsigned int STOPCON;   ///< 0x10 : I2C Stop Control Register
};

const static int i2c_io [][2] = {
	{ ((3 * 32) + 2), ((3 * 32) + 3) },
	{ ((3 * 32) + 4), ((3 * 32) + 5) },
	{ ((3 * 32) + 6), ((3 * 32) + 7) },
};

const static int reset_id[4] = {20, 21, 22, 20};

/*
 * I2C control macro
 */
#define I2C_TXRXMODE_SLAVE_RX		0	///< Slave Receive Mode
#define I2C_TXRXMODE_SLAVE_TX		1	///< Slave Transmit Mode
#define I2C_TXRXMODE_MASTER_RX		2	///< Master Receive Mode
#define I2C_TXRXMODE_MASTER_TX		3	///< Master Transmit Mode

static void I2C_RUN_TRANSFER(int port, int mod, u8 addr)
{
	NX_I2C_SetAckGenerationEnable(port, 1);
	NX_I2C_SetInterruptEnable(port, 0 , CTRUE);
	NX_I2C_BusDisable(port);
	NX_I2C_ControlMode(port, mod, 0);
	NX_I2C_WriteByte(port, addr);
	NX_I2C_ControlMode(port, mod, 1);
}
static void I2C_DATA_TRANSFER(int port, int ack, int last)
{
	NX_I2C_SetAckGenerationEnable(port, ack);
	
	if (last){
		NX_I2C_NotAckGen(port);
	}

	NX_I2C_ClearInterruptPending32(port, 1);
	NX_I2C_SetInterruptEnable(port, 0, 1);
}

static void I2C_END_TRANSFER(int port, int nostop, int read)
{
	if (nostop) {
		udelay(10);
	} else {
		NX_I2C_ClockLineRelease( port);
		udelay(10);
	}
	NX_I2C_ControlMode(port, 0, 0);
	NX_I2C_SetAckGenerationEnable(port, 0);
	NX_I2C_ClearInterruptPending(port,0);
	NX_I2C_SetInterruptEnable(port,0,0);
	NX_I2C_BusDisable(port);
}

static void I2C_WAIT_BUSY(int port, int wait)
{
	do{
		if (!(NX_I2C_CheckBusy(port)) && !(NX_I2C_IsBusArbitFail(port)))
			break;
	    mdelay(1);
	}while(wait-- > 0);
}

static unsigned I2C_GET_DATA(int port){
	return 	NX_I2C_ReadByte(port);
}
#define I2C_SET_DATA(_base_, _dat_)		(((struct i2c_register *)_base_)->IDSR = _dat_)

#define I2C_ACK_STATUS(_base_)			(((struct i2c_register *)_base_)->ICSR & (1<<0))
#define I2C_ARB_STATUS(_base_)			(((struct i2c_register *)_base_)->ICSR & (1<<3))
#define I2C_INT_STATUS(_base_)			(((struct i2c_register *)_base_)->ICCR & (1<<4))

/*
 * 	local data and macro
 */
struct i2c_hw {
	int port;
	int id;
	int irq;
	int scl;
	int sda;
	int clk_src;
	int clk_prescale;
	void * base_addr;
};

struct i2c_param {
	struct i2c_hw		hw;
	struct mutex		lock;
	wait_queue_head_t	wq;
	unsigned int	 	cond;
	unsigned long rate;
	int	no_stop;
	u8	pre_data;
	int	req_ack;
	int	timeout;
	/* i2c trans data */
	struct i2c_adapter	adap;
	struct i2c_msg    *	msg;
	struct clk 		  * clk;
	int	tr_count;
	int	tr_done;
	int run_state;
};

/*
 * 	Hardware I2C
 */
static inline void	i2c_set_clock(struct i2c_param *par, int enable)
{
	int port = par->hw.port;
	int src = par->hw.clk_src;
	int scl = par->hw.clk_prescale;

	if (enable)
		NX_I2C_SetClockPrescaler(port,src, scl);
	else
		NX_I2C_BusDisable(port);
}

static inline int i2c_wait_busy(struct i2c_param *par)
{
	int wait = 500;
	int ret = 0;
	int port = par->hw.port;

	DBGOUT("%s(i2c.%d (%d), nostop:%d)\n", __func__,par->adap.nr  par->hw.port, par->no_stop);

	/* busy status check*/
	I2C_WAIT_BUSY(port, wait);

	if (0 > wait) {
		printk(KERN_ERR "Fail, i2c.%d is busy, arbitration %s ...\n",
			par->hw.port, NX_I2C_IsBusArbitFail(port)?"busy":"free");
		ret = -1;
	}
	return ret;
}

static irqreturn_t i2c_trans_irq(int irqno, void *dev_id)
{
	struct i2c_param *par = dev_id;

	//void *base = par->hw.base_addr;
	int port = par->hw.port;
	struct i2c_msg *msg = par->msg;
	u16 flags;
	int len =0 ;
	int cnt = par->tr_count;

	if(!par->run_state)
	{
		return IRQ_NONE;
	}
	
		flags = par->msg->flags;
		len = msg->len;

	DBGOUT("%s(i2c.%di (%d), trans %2d:%2d, get ack:%d)\n",
		__func__,par->adap.nr, par->hw.port, cnt, len, par->req_ack);
	/* Arbitration Check. */
	if(	NX_I2C_IsBusArbitFail(port))	
	{
		ERROUT("Fail,i2c.%d (%d) addr [0x%02x] Arbitraion [0x%02x], trans %2d:%2d\n",
			par->adap.nr, par->hw.port,(msg->addr<<1), par->pre_data, cnt, len);

		par->tr_done = 0;
		goto __end_i2c_tr;
	}
	/* Ack Check. */
	if (par->req_ack && !(NX_I2C_IsACKReceived (port))) {
		ERROUT("Fail, i2c.%d (%d) addr [0x%02x] no ack data [0x%02x], trans %2d:%2d \n",
			par->adap.nr, par->hw.port, (msg->addr<<1), par->pre_data, cnt, len);
		goto __end_i2c_tr;
	}
	if (! par->tr_done) {
		if (flags & I2C_M_RD) {
			int ack = (len == cnt + 1) ? 0: 1;
			int last = (len == cnt + 1) ? 1: 0;

			par->req_ack = 0;
			if (0 == cnt) {
				I2C_DATA_TRANSFER(port, ack, last);
				par->tr_count += 1;
				/* next data read */
				return IRQ_HANDLED;
			}

			/* read byte */
			msg->buf[cnt - 1] = I2C_GET_DATA(port);
	
			DBGOUT("%s(R i2c.%d (%d) %d:0x%02x)\n",
				__func__,par->adap.nr, par->hw.port, cnt-1, msg->buf[cnt - 1]);
			/* next irq stauts */
			if (len == par->tr_count) {
				par->tr_done = 1;
				goto __end_i2c_tr;
			} else {
				I2C_DATA_TRANSFER(port, ack, last);
				par->tr_count += 1;
				return IRQ_HANDLED;
			}
		} else {
	
			par->pre_data = msg->buf[cnt];
			par->req_ack = (msg->flags & I2C_M_IGNORE_NAK) ? 0 : 1;
			par->tr_count += 1;

			/* next irq status */
			if (len == par->tr_count)
				par->tr_done = 1;

			/* transfer */
			NX_I2C_WriteByte(port, msg->buf[cnt]);
			I2C_DATA_TRANSFER(port, 0, 0);

			DBGOUT("%s(W i2c.%d (%d) %2d:0x%02x)\n",
				__func__,par->adap.nr, par->hw.port, cnt, msg->buf[cnt]);
			return IRQ_HANDLED;
		}
	}

__end_i2c_tr:
	/* End par */
	I2C_END_TRANSFER(port, par->no_stop, (flags&I2C_M_RD ? 0 : 1));

	par->cond = 1;
	wake_up(&par->wq);

	DBGOUT("%s(E i2c.%d (%d) %d:%d, nostop:%d)\n",
		__func__,par->adap.nr, par->hw.port, cnt, len, par->no_stop);
	return IRQ_HANDLED;


}

static int i2c_wait_end(struct i2c_param *par)
{
	int tout, ret = -1;
	int port = par->hw.port;
	tout = wait_event_timeout(par->wq, par->cond,
				msecs_to_jiffies(par->timeout));
	if (par->cond)
		ret = 0;

	if (0 > ret) {
		ERROUT("Fail, i2c.%d (%d) addr=0x%02x , %02x irq cond (%d), pend (%s), arbitration (%s)\n",
par->adap.nr, par->hw.port, (par->msg->addr<<1), par->msg->buf[0],par->cond, I2C_INT_STATUS(base)?"yes":"no",
		NX_I2C_IsBusArbitFail(port)?"busy":"free");
		I2C_END_TRANSFER(port, 0, 0);	
	}

	if(!par->tr_done)		
		I2C_END_TRANSFER(port, 0, 0);	

	/* clear */
	par->cond = 0;
	if (0 >ret )
		return -1;

	return (par->tr_done ? 0 : -1);
}

static inline int i2c_trans_run(struct i2c_param *par, struct i2c_msg *msg)
{
	u32 mode;
	u8  addr;
	if (msg->flags & I2C_M_TEN) {
		printk(KERN_ERR "Fail, i2c.%d (%d) not support ten bit addr:0x%02x, flags:0x%x \n",
		par->adap.nr,par->hw.port, (msg->addr<<1), msg->flags);
		return -1;
	}

	if (msg->flags & I2C_M_RD) {
		addr =  msg->addr << 1 | 1;
		mode = I2C_TXRXMODE_MASTER_RX;
	} else {
		addr = msg->addr << 1;
		mode = I2C_TXRXMODE_MASTER_TX;
	}

	DBGOUT("%s(i2c.%d( %d) , addr:0x%02x, %s)\n",
		__func__,par->adap.nr, par->hw.port, addr, msg->flags&I2C_M_RD?"R":"W");

 	/* clear irq cond */
	par->msg = msg;
	par->cond = 0;
	par->pre_data = addr;
	par->req_ack = (msg->flags & I2C_M_IGNORE_NAK ) ? 0 : 1;
	par->tr_count = 0;
	par->tr_done  = 0;
	I2C_RUN_TRANSFER(par->hw.port, mode, addr);

	/* wait for end transfer */
	return i2c_wait_end(par);
}

static int nxp_i2c_transfer_hw(struct i2c_param *par, struct i2c_msg *msg, int num)
{
	int ret = -EAGAIN;

	DBGOUT("\n%s(flags:0x%x, %c)\n",
		__func__, msg->flags, msg->flags&I2C_M_RD?'R':'W');

	i2c_set_clock(par, 1);
	if (0 > i2c_wait_busy(par))
		goto err_i2c;

	/* transfer */
	if (0 > i2c_trans_run(par, msg))
		goto err_i2c;

	ret = msg->len;

err_i2c:
	DBGOUT("%s : Err  ", __func__);
	if (ret != msg->len)
		msg->flags &= ~I2C_M_NOSTART;

	i2c_wait_busy(par);
	i2c_set_clock(par, 0);

	return ret;
}

static int nxp_i2c_algo_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs, int num)
{
	struct i2c_param *par  = adap->algo_data;
	struct i2c_msg  *tmsg = msgs;

	int i = adap->retries;
	int j = num;
	int ret = -EAGAIN;
	int len = 0;
	int  (*transfer_i2c)(struct i2c_param *, struct i2c_msg *, int) = NULL;
	
	/* lock par */
	mutex_lock(&par->lock);
	transfer_i2c = nxp_i2c_transfer_hw;

	par->run_state = 1;	
	DBGOUT("\n");
	DBGOUT("%s(msg num:%d)\n", __func__, num);

	par->no_stop = 1;
	for ( ; j > 0; j--, tmsg++) {
		len = tmsg->len;
		if (1 == num)
			par->no_stop = 0;

		/* transfer */
		for (i = adap->retries; i > 0; i--) {
			ret = transfer_i2c(par, tmsg, num);
			if (ret == len)
				break;

			ERROUT("i2c.%d (%d) addr 0x%02x (try:%d)\n",
				par->adap.nr,par->hw.port, tmsg->addr<<1, adap->retries-i+1);
		}

		/* Error */
		if (ret != len)
			break;
	}


	par->run_state = 0;
	/* unlock par */
	mutex_unlock(&par->lock);
	/* ok */
	if (ret == len)
		return num;

	pr_err("Error: i2c.%d (%d), addr:%02x, trans len:%d(%d), try:%d\n",
		par->adap.nr, par->hw.port, (msgs->addr<<1), ret, len, adap->retries);
	return ret;
}

static u32 nxp_i2c_algo_fn(struct i2c_adapter *adap)
{
	return I2C_FUNC_I2C | I2C_FUNC_SMBUS_EMUL;
}

static struct i2c_algorithm nxp_i2c_algo = {
	.master_xfer 	= nxp_i2c_algo_xfer,
	.functionality 	= nxp_i2c_algo_fn,
};

static int	nxp_i2c_set_param(struct i2c_param *par, struct platform_device *pdev)
{
	struct nxp_i2c_plat_data *plat = pdev->dev.platform_data;
	unsigned long rate = 0;
	int ret = 0;

	unsigned long get_real_clk = 0, req_clk =0 ;
	unsigned long calc_clk , t_clk = 0;
	unsigned int t_src = 0,  t_div = 0;
	int div = 0 ;
	struct clk *clk;
	unsigned int i=0, src = 0;

	int port = plat->port;
	/* set par hardware */
	par->hw.port 		= plat->port;
	par->hw.irq			= plat->irq;
	par->hw.base_addr 	= (void*)IO_ADDRESS(plat->base_addr);
	par->hw.scl			= plat->gpio->scl_pin ? plat->gpio->scl_pin : i2c_io[plat->port][0];
	par->hw.sda			= plat->gpio->sda_pin ? plat->gpio->sda_pin : i2c_io[plat->port][1];
	par->no_stop 		= 0;
	par->timeout 		= DEF_WAIT_ACK;
	par->rate 			=	plat->rate ? plat->rate : DEF_I2C_RATE;

	nxp_soc_gpio_set_io_func( par->hw.scl,1 );
	nxp_soc_gpio_set_io_func( par->hw.sda,1 );

	clk = clk_get(&pdev->dev, NULL);
	if (IS_ERR(clk)) {
		ret = PTR_ERR(clk);
		return ret;
	}

	rate = clk_get_rate(clk);
	req_clk = par->rate;
	t_clk = rate/16/3;

	for (i = 0; i < 2; i ++) {
		src	= (i== 0) ? 16: 256;
		for (div = 3 ; div < 16; div++) {
			get_real_clk = rate/src/div;
			if (get_real_clk > req_clk )
				calc_clk = get_real_clk - req_clk;
			else
				calc_clk = req_clk - get_real_clk ;

			if (calc_clk < t_clk) {
				t_clk = calc_clk;
				t_div = div;
				t_src = src;
			} else if (calc_clk == 0) {
				t_div = div;
				t_src = src;
				break;
			}
		}
		if (calc_clk == 0)
			break;
	}

	par->hw.clk_src = t_src;
	par->hw.clk_prescale = t_div;
	par->clk = clk;

	nxp_soc_rsc_reset(reset_id[plat->port]);

	NX_I2C_SetBaseAddress( port ,(U32)IO_ADDRESS( NX_I2C_GetPhysicalAddress(port)) );

	/* init par resource */
	mutex_init(&par->lock);
	init_waitqueue_head(&par->wq);

	printk("%s.%d (%d): %8ld hz [pclk=%ld, clk = %3d, scale=%2d, timeout=%4d ms]\n",
		DEV_NAME_I2C, pdev->id,par->hw.port, rate/t_src/t_div,
		rate, par->hw.clk_src, par->hw.clk_prescale, par->timeout);

	ret = request_irq(par->hw.irq, i2c_trans_irq, IRQF_DISABLED|IRQF_SHARED, DEV_NAME_I2C, par);
	if (ret)
		printk(KERN_ERR "Fail, i2c.%d(%d) request irq %d ...\n",pdev->id, par->hw.port, par->hw.irq);
	NX_I2C_BusDisable(port);
	clk_enable(clk);
	return ret;
}

static int nxp_i2c_probe(struct platform_device *pdev)
{
	struct i2c_param *par = NULL;
	int ret = 0;

	DBGOUT("%s (device name:%s, id:%d)\n", __func__, pdev->name, pdev->id);

	/*	allocate i2c_param data */
	par = kzalloc(sizeof(struct i2c_param), GFP_KERNEL);
	if (!par) {
		printk(KERN_ERR "Fail, %s allocate driver info ...\n", pdev->name);
		return -ENOMEM;
	}

	/* init par data struct */
	ret = nxp_i2c_set_param(par, pdev);
	if (0 > ret)
		goto err_mem;

	/*	init par adapter */
	strlcpy(par->adap.name, DEV_NAME_I2C, I2C_NAME_SIZE);

	par->adap.owner 	= THIS_MODULE;
	par->adap.nr 		= pdev->id; 
	par->adap.class 	= I2C_CLASS_HWMON | I2C_CLASS_SPD;
	par->adap.algo 		= &nxp_i2c_algo;
	par->adap.algo_data = par;
	par->adap.dev.parent= &pdev->dev;
	par->adap.retries 	= DEF_RETRY_COUNT;
	par->run_state 		= 0;	
	ret = i2c_add_numbered_adapter(&par->adap);
	if (ret) {
		printk(KERN_ERR "Fail, i2c.%d add to adapter ...\n", par->hw.port);
		goto err_irq;
	}

	/* set driver data */
	platform_set_drvdata(pdev, par);
	return ret;

err_irq:
	free_irq(par->hw.irq, par);

err_mem:
	kfree(par);
	return ret;
}

static int nxp_i2c_remove(struct platform_device *pdev)
{
	struct i2c_param *par = platform_get_drvdata(pdev);
	DBGOUT("%s (Id : %d, Port:%d)\n", __func__,pdev->id, par->hw.port);

	nxp_soc_rsc_enter(reset_id[par->hw.port]);
	clk_disable(par->clk);

	free_irq(par->hw.irq, par);
	i2c_del_adapter(&par->adap);
	kfree(par);

	platform_set_drvdata(pdev, NULL);
	return 0;
}

#ifdef CONFIG_PM
static int nxp_i2c_suspend(struct platform_device *pdev, pm_message_t state)
{

	struct i2c_param *par = platform_get_drvdata(pdev);
	
	nxp_soc_rsc_enter(reset_id[par->hw.port]);
	PM_DBGOUT("%s \n", __func__);
	return 0;
}

static int nxp_i2c_resume(struct platform_device *pdev)
{
	struct i2c_param *par = platform_get_drvdata(pdev);
	PM_DBGOUT("%s\n", __func__);
	
	nxp_soc_gpio_set_io_func(par->hw.scl,1);
	nxp_soc_gpio_set_io_func(par->hw.sda,1);
	nxp_soc_rsc_reset(reset_id[par->hw.port]);

	NX_I2C_BusDisable(par->hw.port);
	clk_enable(par->clk);

	return 0;
}

#else
#define nxp_i2c_suspend		NULL
#define nxp_i2c_resume		NULL
#endif

static struct platform_driver i2c_plat_driver = {
	.probe	 	= nxp_i2c_probe,
	.remove	 	= nxp_i2c_remove,
    .suspend 	= nxp_i2c_suspend,
    .resume		= nxp_i2c_resume,
	.driver	= {
	.owner	= THIS_MODULE,
	.name	= DEV_NAME_I2C,
	},
};

static int __init nxp_i2c_init(void)
{
	return platform_driver_register(&i2c_plat_driver);
}

static void __exit nxp_i2c_exit(void)
{
	platform_driver_unregister(&i2c_plat_driver);
}

module_init(nxp_i2c_init);
module_exit(nxp_i2c_exit);

MODULE_DESCRIPTION("I2C driver for the Nexell");
MODULE_LICENSE("GPL");
MODULE_ALIAS("platform: nexell par");

