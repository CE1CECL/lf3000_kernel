/*
 * Copyright (C) 2008, 2009 Provigent Ltd.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 as
 * published by the Free Software Foundation.
 *
 * Driver for the ARM PrimeCell(tm) General Purpose Input/Output (PL061)
 *
 * Data sheet: ARM DDI 0190B, September 2000
 */
#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/init.h>
#include <linux/slab.h>
#include <linux/errno.h>
#include <linux/device.h>
#include <linux/platform_device.h>
#include <linux/io.h>
#include <linux/gpio.h>
#include <linux/pm.h>

#include <mach/platform.h>
#include <mach/devices.h>
#include <mach/soc.h>

#if (0)
#define DBGOUT(msg...)		{ printk(KERN_INFO "gpio: " msg); }
#else
#define DBGOUT(msg...)		do {} while (0)
#endif

struct nxp_gpio {
	int 		index; 		/* Bank Index : A(0), B(1), C(2), D(3), E(4), ALIVE(5) */
	spinlock_t	lock;		/* GPIO registers */
	struct 	gpio_chip chip;
};

static int nxp_gpio_direction_input(struct gpio_chip *chip, unsigned offset)
{
	struct nxp_gpio *gpio;
	unsigned int io;
	unsigned int alt;

	gpio = container_of(chip, struct nxp_gpio, chip);
	io   = gpio->index * GPIO_NUM_PER_BANK + offset;

	alt = nxp_soc_gpio_get_io_func(io);	/* gpio mode */

	DBGOUT(" gpio-nxp : %s : alt func = %d  get func = %d \n",__func__,alt,
			GET_GPIO_ALTFUNC(gpio->index, offset));
	if (alt != GET_GPIO_ALTFUNC(gpio->index, offset))	{
		printk(" fail : io use alt function. [%d:%u = %d] alt func : %d  \n",
			gpio->index, offset, io, alt);
		return -1;
	}
	nxp_soc_gpio_set_io_func(io, 0);	/* gpio mode */
	nxp_soc_gpio_set_io_dir (io, 0);

	DBGOUT("%s: io num(%d:%d = %d)\n", __func__, gpio->index, offset, io);
	return 0;
}

static int nxp_gpio_direction_output(struct gpio_chip *chip, unsigned offset, int value)
{
	struct nxp_gpio *gpio;
	unsigned int io;
	unsigned int alt;
	gpio = container_of(chip, struct nxp_gpio, chip);
	io   = gpio->index * GPIO_NUM_PER_BANK + offset;

	alt = nxp_soc_gpio_get_io_func(io);	/* gpio mode */

	if (alt !=GET_GPIO_ALTFUNC(gpio->index, offset)) {
		printk(" fail : io use alt function. [%d:%u = %d] alt func : %d  \n",
			gpio->index, offset, io, alt);
		return -1;
	}
	nxp_soc_gpio_set_io_func(io, 0);	/* gpio mode */
	nxp_soc_gpio_set_io_dir (io, 1);
	nxp_soc_gpio_set_out_value(io, value);
	DBGOUT("%s: io num(%d:%d = %d), val=%d\n", __func__, gpio->index, offset, io, value);
	return 0;
}

static int nxp_gpio_get_value(struct gpio_chip *chip, unsigned offset)
{
	struct nxp_gpio *gpio;
	unsigned int io;

	gpio = container_of(chip, struct nxp_gpio, chip);
	io   = gpio->index * GPIO_NUM_PER_BANK + offset;
	DBGOUT("%s: io num(%d:%d = %d)\n", __func__, gpio->index, offset, io);
	return nxp_soc_gpio_get_in_value(io);
}

static void nxp_gpio_set_value(struct gpio_chip *chip, unsigned offset, int value)
{
	struct nxp_gpio *gpio;
	unsigned int io;

	gpio = container_of(chip, struct nxp_gpio, chip);
	io   = gpio->index * GPIO_NUM_PER_BANK + offset;

	if (GET_GPIO_ALTFUNC(gpio->index, offset) != nxp_soc_gpio_get_io_func(io)) {
		printk("Fail: not gpio mode, gpio [%d:%u = %d] ...\n",  gpio->index, offset, io);
		return;
	}

	nxp_soc_gpio_set_io_dir (io, 1);
	nxp_soc_gpio_set_out_value(io, value);
	DBGOUT("%s: io num(%d:%d = %d), val=%d\n", __func__, gpio->index, offset, io, value);
}


static int nxp_gpio_to_irq( struct gpio_chip *chip , unsigned offset )
{
	struct nxp_gpio *gpio;
	unsigned int io;

	gpio = container_of(chip, struct nxp_gpio, chip);
	io   = gpio->index * GPIO_NUM_PER_BANK + offset;
	return io + IRQ_GPIO_START;
}

#ifdef CONFIG_PM
static int nxp_gpio_suspend(struct platform_device *pdev, pm_message_t state)
{
	return 0;
}

static int nxp_gpio_resume(struct platform_device *pdev)
{
	return 0;
}
#else
#define	nxp_gpio_suspend	NULL
#define	nxp_gpio_resume		NULL
#endif

static int nxp_gpio_probe(struct platform_device *pdev)
{
	struct resource *res = pdev->resource;
	struct nxp_gpio *gpio;
	int ret;

	DBGOUT("%s group=%d, %d ~ %2d\n", __func__, pdev->id, res->start, res->end);
	if (!res) {
		printk("Error: not allocated gpio resource for gpio [%d]\n", pdev->id);
		return -EINVAL;
	}

	gpio = kzalloc(sizeof(*gpio), GFP_KERNEL);
	if (gpio == NULL)
		return -ENOMEM;

	spin_lock_init(&gpio->lock);
	gpio->index 				= pdev->id;
	gpio->chip.to_irq			= nxp_gpio_to_irq;
	gpio->chip.direction_input  = nxp_gpio_direction_input;
	gpio->chip.direction_output = nxp_gpio_direction_output;
	gpio->chip.get 			  	= nxp_gpio_get_value;
	gpio->chip.set			  	= nxp_gpio_set_value;
	gpio->chip.ngpio 			= res->end - res->start;
	gpio->chip.label 			= dev_name(&pdev->dev);
	gpio->chip.dev 			  	= &pdev->dev;
	gpio->chip.owner 			= THIS_MODULE;
	gpio->chip.base 			= pdev->id * GPIO_NUM_PER_BANK;

	ret = gpiochip_add(&gpio->chip);
	if (ret)
		goto free_mem;

	return ret;

free_mem:
	kfree(gpio);

	return ret;
}

static int nxp_gpio_remove(struct platform_device *pdev)
{
	DBGOUT("%s\n", __func__);
	return 0;
}

static struct platform_driver nxp_gpio_driver = {
	.probe		= nxp_gpio_probe,
	.remove		= __devexit_p(nxp_gpio_remove),
	.suspend	= nxp_gpio_suspend,
	.resume		= nxp_gpio_resume,
	.driver		= {
		.name	= DEV_NAME_GPIO,
		.owner	= THIS_MODULE,
	},
};

static int __init nxp_gpio_init(void)
{
	DBGOUT("%s\n", __func__);
	return platform_driver_register(&nxp_gpio_driver);
}
subsys_initcall(nxp_gpio_init);

MODULE_DESCRIPTION("GPIO driver for the Nexell");
MODULE_LICENSE("GPL");
