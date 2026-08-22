/*
 * (C) Copyright 2010
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

#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/slab.h>
#include <linux/delay.h>
#include <linux/platform_device.h>
#include <linux/input.h>
#include <linux/irq.h>
#include <linux/interrupt.h>
#include <linux/workqueue.h>
#include <linux/gpio.h>
/* nexell soc headers */
#include <mach/platform.h>
#include <mach/devices.h>
#include <mach/soc.h>

#if (0)
#define DBGOUT(msg...)		{ printk(KERN_INFO "key: " msg); }
#define	ERROUT(msg...)		{ printk(KERN_ERR  "key: " msg); }
#else
#define DBGOUT(msg...)		do {} while (0)
#define	ERROUT(msg...)		do {} while (0)
#endif

#define	KEY_STAT_PRESS		(0)
#define	KEY_STAT_RELEASE	(1)

#define	PUSH_IRQ_MODE		(0)		/* 0 = low  level, 2 = Falling edge detect mode */
#define	UP_IRQ_MODE			(1)		/* 1 = high level, 3 = Rising edge detect mode */

#define	DELAY_WORK_JIFFIES 		1
 
/*-----------------------------------------------------------------------------*/
struct key_code {
	struct delayed_work 	 key_event_work;	/* struct work_struct */
	struct workqueue_struct *key_workqueue;
	unsigned int  		io;
	unsigned int  	    keycode;
	unsigned int		val;
	unsigned int		irqmode;	/* current irq mode */
	unsigned int		keystat;	/* current detect mode */
	struct timer_list	timer;
};

struct key_info {
	struct input_dev  *	inp;
	int					num;
	struct key_code   * code;
	unsigned int		open;
};

static struct key_info * g_keyi  = NULL;

struct input_dev  *	key_input_dev;
EXPORT_SYMBOL_GPL(key_input_dev);

/*------------------------------------------------------------------------------
 * 	local functions
 */
static void key_init_func(struct key_code *code, int num)
{
	int i = 0;
	DBGOUT("%s\n", __func__);

	for (i = 0; num > i; i++, code++) {
		code->keystat  = KEY_STAT_RELEASE;
		code->irqmode  = PUSH_IRQ_MODE;
	}
}

static void key_run_intr(struct key_code *code, int num)
{
	int i = 0;
	DBGOUT("%s\n", __func__);

	for (i = 0; num > i; i++, code++) {
		nxp_soc_gpio_set_int_enable(code->io, 1);
		nxp_soc_gpio_clr_int_pend(code->io);
	}
}

static void key_stop_intr(struct key_code *code, int num)
{
	int i = 0;
	DBGOUT("%s\n", __func__);
	for (i = 0; num > i; i++, code++) {
		nxp_soc_gpio_set_int_enable(code->io, 0);
		nxp_soc_gpio_clr_int_pend(code->io);
	}
}

/*------------------------------------------------------------------------------
 * 	Keypad interrupt handler.
 */

static void key_bh_func(struct work_struct *work)
{
	struct key_info   * keyi  = g_keyi;
	struct key_code   * code  = (struct key_code *)work;

	unsigned int keycode = code->keycode;
	int press = 0;
	u_long flags;
	DBGOUT("%s io:%d, code:%4d\n", __func__, code->io, keycode);
	local_irq_save(flags);
	press = gpio_get_value_cansleep(code->io);
	local_irq_restore(flags);
	if(press != code->keystat)
	{
		code->keystat = press;
		
		if (KEY_STAT_PRESS == press) {
			input_report_key(keyi->inp, keycode, 1);
			input_sync(keyi->inp);
		} else {
			input_report_key(keyi->inp, keycode, 0);
			input_sync(keyi->inp);
		}
	}	
}

static irqreturn_t key_irq_handler(int irqno, void *dev_id)
{
	struct key_code *code = dev_id;

	queue_delayed_work(code->key_workqueue,
				&code->key_event_work, DELAY_WORK_JIFFIES);
	return IRQ_HANDLED;
}

static int nxp_key_open(struct input_dev *dev)
{
	struct key_info * keyi = input_get_drvdata(dev);
	struct key_code * code = keyi->code;

	DBGOUT("%s\n", __func__);
	key_run_intr(code, keyi->num);
	keyi->open = 1;
	return 0;
}

static void nxp_key_close(struct input_dev *dev)
{
	struct key_info * keyi = input_get_drvdata(dev);
	struct key_code * code = keyi->code;

	DBGOUT("%s\n", __func__);
	key_stop_intr(code, keyi->num);
	keyi->open = 0;
}

/*--------------------------------------------------------------------------------
 * Keypad platform_driver functions
 ---------------------------------------------------------------------------------*/
static int nxp_key_probe(struct platform_device *pdev)
{
	struct nxp_key_plat_data * plat = pdev->dev.platform_data;
	struct key_info * keyi = NULL;
	struct key_code * code = NULL;
	struct input_dev* inp  = NULL;
	int i, irq, keyn, ret = 0, err = 0;
	int repeat ;

	#ifdef CFG_KEYPAD_REPEAT 
	repeat = CFG_KEYPAD_REPEAT;
	#else
	repeat = 0;
	#endif	

	DBGOUT("%s (device name:%s, id:%d)\n", __func__, pdev->name, pdev->id);
	/*	allocate key_info data */
	keyi = kzalloc(sizeof(struct key_info), GFP_KERNEL);
	if (! keyi) {
		printk(KERN_ERR "fail, %s allocate driver info ...\n", pdev->name);
		return -ENOMEM;
	}

	keyn = plat->bt_count;
	code = kzalloc(sizeof(struct key_code) * keyn, GFP_KERNEL);
	if (! code) {
		printk(KERN_ERR "fail, %s key code ...\n", pdev->name);
		ret = -ENOMEM;
		goto err_mem;
	}

	for (i=0; keyn > i; i++) {
		code[i].io   	= plat->bt_io[i];
		code[i].keycode = plat->bt_code[i];
		code[i].val		= i;
		/* timer list */
		init_timer(&code[i].timer);
		DBGOUT("%d key [io=%3d, key=%4d]\n", i, code[i].io, code[i].keycode);
	}

	inp = input_allocate_device();
	if (! inp) {
		printk(KERN_ERR "fail, %s allocate input device\n", pdev->name);
		ret = -ENOMEM;
		goto err_mem;
	}
	/* set io info */
	keyi->inp  = inp;
	keyi->num  = keyn;
	keyi->code = code;
	keyi->open = 0;

	g_keyi	   	  = keyi;
	key_input_dev = inp;

	key_init_func(code, keyn);

	/* set input device info */
	inp->name	  	= "Nexell Keypad";
	inp->phys 	  	= "nexell/input0";
	inp->open	  	= nxp_key_open;
	inp->close	  	= nxp_key_close;
	inp->id.bustype = BUS_HOST;
	inp->id.vendor  = 0x0001;
	inp->id.product = 0x0002;
	inp->id.version = 0x0100;
	inp->dev.parent	= &pdev->dev;
	inp->keycode 	= plat->bt_code;
	inp->keycodesize= sizeof(plat->bt_code[0]);
	inp->keycodemax = plat->bt_count * 2;	// for long key
	
	 inp->evbit[0] = BIT_MASK(EV_KEY);
	if (repeat)
		 inp->evbit[0] |= BIT_MASK(EV_REP);

	input_set_capability(inp, EV_MSC, MSC_SCAN);
	input_set_drvdata(inp, keyi);

	for (i = 0; keyn > i; i++)
		__set_bit(code[i].keycode, inp->keybit);
	ret = input_register_device(inp);
	if (ret) {
		printk(KERN_ERR "fail, %s register for input device ...\n", pdev->name);
		goto err_mem;
	}

	for (i=0; keyn > i; i++) {
		INIT_DELAYED_WORK(&code[i].key_event_work, key_bh_func);
	    code[i].key_workqueue = create_singlethread_workqueue(pdev->name);
		if (!code[i].key_workqueue) {
    	   err = -ESRCH;
    	   goto err_irq;
	    }   

		irq =gpio_to_irq(code[i].io);
		ret = request_irq(irq, key_irq_handler, IRQF_SHARED|IRQ_TYPE_EDGE_BOTH, pdev->name, &code[i]);
		if (ret) {
			printk(KERN_ERR "fail, %s request detect dectet io %d ...\n", pdev->name, irq);
			goto err_irq;
		}
	}
	

	/* set driver data */
	platform_set_drvdata(pdev, keyi);


	return ret;

err_irq:
	for (--i; i >= 0; i--) {
		cancel_work_sync(&code[i].key_event_work.work);
	    destroy_workqueue(code[i].key_workqueue);
		irq =gpio_to_irq(code[i].io);
		free_irq(irq, &code[i]);
	}
	input_free_device(inp);

err_mem:
	if (code) kfree(code);
	if (keyi) kfree(keyi);

	return ret;
}

static int nxp_key_remove(struct platform_device *pdev)
{
	struct key_info * keyi = platform_get_drvdata(pdev);
	struct key_code * code = keyi->code;
	int i = 0, irq;
	DBGOUT("%s\n", __func__);

	input_free_device(keyi->inp);

	for (i = 0; i < keyi->num; i++) {
		cancel_work_sync(&code[i].key_event_work.work);
	    destroy_workqueue(code[i].key_workqueue);
		irq =gpio_to_irq(code[i].io);
		free_irq(irq, &code[i]);
	}

	if (code) kfree(code);
	if (keyi) kfree(keyi);

	return 0;
}

static int nxp_key_suspend(struct platform_device *pdev, pm_message_t state)
{
	struct key_info * keyi = platform_get_drvdata(pdev);
	int  i = 0;

	PM_DBGOUT("%s\n", __func__);

	for (; keyi->num > i; i++)
		del_timer(&keyi->code[i].timer);
	key_stop_intr(keyi->code, keyi->num);

	return 0;
}

static int nxp_key_resume(struct platform_device *pdev)
{
	struct key_info * keyi = platform_get_drvdata(pdev);

	PM_DBGOUT("%s\n", __func__);

	key_init_func(keyi->code, keyi->num);
	if (keyi->open)
		key_run_intr(keyi->code, keyi->num);

	return 0;
}

static struct platform_driver key_plat_driver = {
	.probe		= nxp_key_probe,
	.remove		= nxp_key_remove,
	.suspend	= nxp_key_suspend,
	.resume		= nxp_key_resume,
	.driver		= {
		.owner	= THIS_MODULE,
		.name	= DEV_NAME_KEYPAD,
	},
};

static int __init nxp_key_init(void)
{
	DBGOUT("%s\n", __func__);
	return platform_driver_register(&key_plat_driver);
}

static void __exit nxp_key_exit(void)
{
	DBGOUT("%s\n", __func__);
	platform_driver_unregister(&key_plat_driver);
}

module_init(nxp_key_init);
module_exit(nxp_key_exit);

MODULE_AUTHOR("jhkim <jhkim@nexell.co.kr>");
MODULE_DESCRIPTION("Keypad driver for the Nexell board");
MODULE_LICENSE("GPL");
MODULE_ALIAS("platform:io keypad");

