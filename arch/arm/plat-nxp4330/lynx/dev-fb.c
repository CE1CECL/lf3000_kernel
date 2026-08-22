/*
 * (C) Copyright 2009
 * jung hyun kim, Nexell Co, <jhkim@nexell.co.kr>
 *
 * See file CREDITS for list of people who contributed to this
 * project.
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of
 * the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
 * MA 02111-1307 USA
 */
#if defined (CONFIG_NEXELL_SOC_DISP_LVDS)
/*
 * LVDS sync and clock
 */
static struct disp_vsync_info	lvds_vsync = {
	.h_active_len	= CFG_DISP_PRI_RESOL_WIDTH,
	.h_sync_width	= CFG_DISP_PRI_HSYNC_SYNC_WIDTH,
	.h_back_porch	= CFG_DISP_PRI_HSYNC_BACK_PORCH,
	.h_front_porch	= CFG_DISP_PRI_HSYNC_FRONT_PORCH,
	.h_sync_invert	= CFG_DISP_PRI_HSYNC_ACTIVE_HIGH,
	.v_active_len	= CFG_DISP_PRI_RESOL_HEIGHT,
	.v_sync_width	= CFG_DISP_PRI_VSYNC_SYNC_WIDTH,
	.v_back_porch	= CFG_DISP_PRI_VSYNC_BACK_PORCH,
	.v_front_porch	= CFG_DISP_PRI_VSYNC_FRONT_PORCH,
	.v_sync_invert	= CFG_DISP_PRI_VSYNC_ACTIVE_HIGH,
	.pixel_clock_hz	= CFG_DISP_PRI_PIXEL_CLOCK,
	.clk_src_lv0	= CFG_DISP_PRI_CLKGEN0_SOURCE,
	.clk_div_lv0	= CFG_DISP_PRI_CLKGEN0_DIV,
	.clk_src_lv1	= CFG_DISP_PRI_CLKGEN1_SOURCE,
	.clk_div_lv1	= CFG_DISP_PRI_CLKGEN1_DIV,
};

static struct nxp_lvds_plat_data lvds_data = {
	.display_in	= DISP_DEVICE_SYNCGEN0,
	.vsync		= &lvds_vsync,
};

static struct platform_device lvds_device = {
	.name	= DEV_NAME_LVDS,
	.id		= -1,
	.dev    = {
		.platform_data	= &lvds_data
	},
};
#endif /* LVDS */

/*
 * Frame Buffer (Primary)
 */
#if defined (CONFIG_FB_NEXELL_PRI)
static struct nxp_fb_plat_data pri_fb_plat_data = {
	.module			= 0,
	.layer			= CFG_DISP_PRI_SCREEN_LAYER,
	.format			= CFG_DISP_PRI_SCREEN_RGB_FORMAT,
	.bgcolor		= CFG_DISP_PRI_BACK_GROUND_COLOR,
	.bitperpixel	= CFG_DISP_PRI_SCREEN_PIXEL_BYTE * 8,
	.x_resol		= CFG_DISP_PRI_RESOL_WIDTH,
	.y_resol		= CFG_DISP_PRI_RESOL_HEIGHT,
#ifdef CONFIG_ANDROID
	.buffers		= 3,
	.skip_pan_vsync	= 1,
#else
	.buffers		= 2,
#endif
	/* display sync for dpi */
	.lcd_with_mm	= 152.4,
	.lcd_height_mm	=  91.44,
	.vsync	     	= &lvds_vsync,
};

/* platform device data */
static struct platform_device fb_primary_device = {
	.name	= DEV_NAME_FB,
	.id		= 0,	/* device channel */
	.dev    = {
		.coherent_dma_mask 	= 0xffffffffUL,	/* for DMA allocate */
		.platform_data		= &pri_fb_plat_data
	},
};
#endif	/* CONFIG_FB_NEXELL_PRI */


#if defined(CONFIG_NEXELL_SOC_DISP_PRI)
static struct disp_syncgen_param sync_primary_param = {
	.interlace_scan = CFG_DISP_PRI_MLC_INTERLACE,
	.out_format		= CFG_DISP_PRI_OUT_FORMAT,
	.lcd_mpu_type 	= 0,
	.invert_field 	= CFG_DISP_PRI_OUT_INVERT_FIELD,
	.swap_RB		= CFG_DISP_PRI_OUT_SWAPRB,
	.yc_order		= CFG_DISP_PRI_OUT_YCORDER,
	.delay_mask		= 0,
	.vclk_select	= CFG_DISP_PRI_PADCLKSEL,
	.clk_delay_lv0	= CFG_DISP_PRI_CLKGEN0_DELAY,
	.clk_inv_lv0	= CFG_DISP_PRI_CLKGEN0_INVERT,
	.clk_delay_lv1	= CFG_DISP_PRI_CLKGEN1_DELAY,
	.clk_inv_lv1	= CFG_DISP_PRI_CLKGEN1_INVERT,
	.clk_sel_div1	= CFG_DISP_PRI_CLKSEL1_SELECT,
};

static struct nxp_syncgen_plat_data sync_primary_data = {
	.par		= &sync_primary_param,
	.vsync		= &lvds_vsync,
};

static struct platform_device sync_primary_device = {
	.name	= DEV_NAME_DISP,
	.id		= 0,	/* module id */
	.dev    = {
		.platform_data	= &sync_primary_data
	},
};
#endif

#if defined(CONFIG_NEXELL_SOC_DISP_SEC)
static struct disp_syncgen_param sync_secondary_param = {
	.interlace_scan = CFG_DISP_PRI_MLC_INTERLACE,
	.out_format		= CFG_DISP_PRI_OUT_FORMAT,
	.lcd_mpu_type 	= 0,
	.invert_field 	= CFG_DISP_PRI_OUT_INVERT_FIELD,
	.swap_RB		= CFG_DISP_PRI_OUT_SWAPRB,
	.yc_order		= CFG_DISP_PRI_OUT_YCORDER,
	.delay_mask		= 0,
	.vclk_select	= CFG_DISP_PRI_PADCLKSEL,
	.clk_delay_lv0	= CFG_DISP_PRI_CLKGEN0_DELAY,
	.clk_inv_lv0	= CFG_DISP_PRI_CLKGEN0_INVERT,
	.clk_delay_lv1	= CFG_DISP_PRI_CLKGEN1_DELAY,
	.clk_inv_lv1	= CFG_DISP_PRI_CLKGEN1_INVERT,
	.clk_sel_div1	= CFG_DISP_PRI_CLKSEL1_SELECT,
};

static struct nxp_syncgen_plat_data sync_secondary_data = {
	.par		= &sync_secondary_param,
};

static struct platform_device sync_secondary_device = {
	.name	= DEV_NAME_DISP,
	.id		= 1,	/* module id */
	.dev    = {
		.platform_data	= &sync_secondary_data
	},
};
#endif

/*------------------------------------------------------------------------------
 *	platform devices
 */
#if defined(CONFIG_FB_NEXELL)
static struct platform_device *fb_devices[] __initdata = {
	#if defined(CONFIG_FB_NEXELL_PRI)
	&fb_primary_device,
	#endif
	#if defined(CONFIG_FB_NEXELL_SEC)
	&fb_secondary_device,
	#endif
};
#endif

#if defined(CONFIG_NEXELL_SOC_DISP)
static struct platform_device *syncgen_devices[] __initdata = {
	#if defined(CONFIG_NEXELL_SOC_DISP_PRI)
	&sync_primary_device,
	#endif
	#if defined(CONFIG_NEXELL_SOC_DISP_SEC)
	&sync_secondary_device,
	#endif
};
#endif

static void __init nxp_fb_device_register(void)
{
#if defined(CONFIG_FB_NEXELL)
	printk("plat: add device frame buffer [%d]\n", ARRAY_SIZE(fb_devices));
	platform_add_devices(fb_devices, ARRAY_SIZE(fb_devices));
#endif

#if defined(CONFIG_NEXELL_SOC_DISP)
	printk("plat: add device syncgen [%d]\n", ARRAY_SIZE(syncgen_devices));
	platform_add_devices(syncgen_devices, ARRAY_SIZE(syncgen_devices));
#endif
#if defined(CONFIG_NEXELL_SOC_DISP_LVDS)
	printk("plat: add device lvds \n");
	platform_device_register(&lvds_device);
#endif
};
