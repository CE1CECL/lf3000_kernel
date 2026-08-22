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
#include <linux/module.h>
#include <linux/slab.h>
#include <linux/sched.h>
#include <linux/init.h>
#include <mach/platform.h>
#include <linux/platform_device.h>

#include <mach/devices.h>
#include <mach/soc.h>
#include "display_4330.h"

#if (1)
#define DBGOUT(msg...)		{ printk(KERN_INFO msg); }
#else
#define DBGOUT(msg...)		do {} while (0)
#endif

#define	REG_BASE()			NX_LCDINTERFACE_GetBaseAddress(0)

#if defined(CONFIG_PLAT_NXP4330_CABO) || defined(CONFIG_PLAT_NXP4330_XANADU)
#include "spi_lcd.c"
#endif

void lcdif_flip(int module, int flip)
{
#if defined(CONFIG_PLAT_NXP4330_CABO) || defined(CONFIG_PLAT_NXP4330_XANADU)
	spi_lcd_flip(module, flip);
#endif
}
EXPORT_SYMBOL(lcdif_flip);

static int lcdif_probe(struct platform_device *pdev)
{
	struct nxp_lcd_plat_data *plat = pdev->dev.platform_data;
	struct disp_vsync_info *psync;
	unsigned int base;
	int device = DISP_DEVICE_LCDIF;
	int input;

	RET_ASSERT_VAL(plat, -EINVAL);
	RET_ASSERT_VAL(plat->display_in == DISP_DEVICE_SYNCGEN0 ||
				   plat->display_in == DISP_DEVICE_SYNCGEN1 ||
				   plat->display_in == DISP_DEVICE_RESCONV, -EINVAL);
	RET_ASSERT_VAL(plat->vsync, -EINVAL);

	psync = plat->vsync;
	input = plat->display_in;
	base  = (unsigned int)REG_BASE();

	nxp_soc_disp_setup_proc_device(device, base, NULL, NULL);
	nxp_soc_disp_device_connect_to(device, input, psync);
	printk("LCDIF: [%d]=%s connect to [%d]=%s\n",
		device, dev_to_str(device), input, dev_to_str(input));

#if 0	/* 10apr14  Experiment with eliminating these calls */
#if defined(CONFIG_PLAT_NXP4330_CABO) || defined(CONFIG_PLAT_NXP4330_XANADU)
	spi_lcd_init();
	spi_lcd_setup();
#endif
#endif	/* 10apr14 */

	return 0;
}

static struct platform_driver lcdif_driver = {
	.driver	= {
	.name	= DEV_NAME_LCD,
	.owner	= THIS_MODULE,
	},
	.probe	= lcdif_probe,
};
module_platform_driver(lcdif_driver);

MODULE_AUTHOR("jhkim <jhkim@nexell.co.kr>");
MODULE_DESCRIPTION("Display LCDIF driver for the Nexell");
MODULE_LICENSE("GPL");
