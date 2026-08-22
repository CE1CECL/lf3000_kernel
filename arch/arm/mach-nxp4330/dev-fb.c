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

#if defined (CONFIG_NEXELL_SOC_DISP_LCDIF)
/*
 * LCDIF sync and clock
 */
#if defined(CONFIG_NEXELL_SOC_DISP_LCD_480x272)

static struct disp_vsync_info	lcd_vsync = {
	.h_active_len	= 480, 	//CFG_DISP_PRI_RESOL_WIDTH,
	.h_sync_width	= 2, 	//CFG_DISP_PRI_HSYNC_SYNC_WIDTH,
	.h_back_porch	= 40, 	//CFG_DISP_PRI_HSYNC_BACK_PORCH,
	.h_front_porch	= 5, 	//CFG_DISP_PRI_HSYNC_FRONT_PORCH,
	.h_sync_invert	= 0,	//CFG_DISP_PRI_HSYNC_ACTIVE_HIGH,
	.v_active_len	= 272, 	//CFG_DISP_PRI_RESOL_HEIGHT,
	.v_sync_width	= 1, 	//CFG_DISP_PRI_VSYNC_SYNC_WIDTH,
	.v_back_porch	= 8, 	//CFG_DISP_PRI_VSYNC_BACK_PORCH,
	.v_front_porch	= 8, 	//CFG_DISP_PRI_VSYNC_FRONT_PORCH,
	.v_sync_invert	= 0,	//CFG_DISP_PRI_VSYNC_ACTIVE_HIGH,
	.pixel_clock_hz	= 9200000, //CFG_DISP_PRI_PIXEL_CLOCK,
	.clk_src_lv0	= CFG_DISP_PRI_CLKGEN0_SOURCE,
	.clk_div_lv0	= 800/9, //CFG_DISP_PRI_CLKGEN0_DIV,
	.clk_src_lv1	= CFG_DISP_PRI_CLKGEN1_SOURCE,
	.clk_div_lv1	= CFG_DISP_PRI_CLKGEN1_DIV,
};

#elif defined(CONFIG_NEXELL_SOC_DISP_LCD_1024x600)

static struct disp_vsync_info	lcd_vsync = {
	.h_active_len	= 1024,	//CFG_DISP_PRI_RESOL_WIDTH,
	.h_sync_width	= 2, 	//CFG_DISP_PRI_HSYNC_SYNC_WIDTH,
	.h_back_porch	= 160, 	//CFG_DISP_PRI_HSYNC_BACK_PORCH,
	.h_front_porch	= 160, 	//CFG_DISP_PRI_HSYNC_FRONT_PORCH,
	.h_sync_invert	= 0,	//CFG_DISP_PRI_HSYNC_ACTIVE_HIGH,
	.v_active_len	= 600, 	//CFG_DISP_PRI_RESOL_HEIGHT,
	.v_sync_width	= 1, 	//CFG_DISP_PRI_VSYNC_SYNC_WIDTH,
	.v_back_porch	= 63, 	//CFG_DISP_PRI_VSYNC_BACK_PORCH,
	.v_front_porch	= 12, 	//CFG_DISP_PRI_VSYNC_FRONT_PORCH,
	.v_sync_invert	= 0,	//CFG_DISP_PRI_VSYNC_ACTIVE_HIGH,
	.pixel_clock_hz	= 55000000, //CFG_DISP_PRI_PIXEL_CLOCK,
	.clk_src_lv0	= CFG_DISP_PRI_CLKGEN0_SOURCE,
	.clk_div_lv0	= 800/55, //CFG_DISP_PRI_CLKGEN0_DIV,
	.clk_src_lv1	= CFG_DISP_PRI_CLKGEN1_SOURCE,
	.clk_div_lv1	= CFG_DISP_PRI_CLKGEN1_DIV,
};


#else

static struct disp_vsync_info	lcd_vsync = {
	.h_active_len	= 1024,	//CFG_DISP_PRI_RESOL_WIDTH,
	.h_sync_width	= 2, 	//CFG_DISP_PRI_HSYNC_SYNC_WIDTH,
	.h_back_porch	= 160, 	//CFG_DISP_PRI_HSYNC_BACK_PORCH,
	.h_front_porch	= 160, 	//CFG_DISP_PRI_HSYNC_FRONT_PORCH,
	.h_sync_invert	= 0,	//CFG_DISP_PRI_HSYNC_ACTIVE_HIGH,
	.v_active_len	= 600, 	//CFG_DISP_PRI_RESOL_HEIGHT,
	.v_sync_width	= 1, 	//CFG_DISP_PRI_VSYNC_SYNC_WIDTH,
	.v_back_porch	= 23, 	//CFG_DISP_PRI_VSYNC_BACK_PORCH,
	.v_front_porch	= 12, 	//CFG_DISP_PRI_VSYNC_FRONT_PORCH,
	.v_sync_invert	= 0,	//CFG_DISP_PRI_VSYNC_ACTIVE_HIGH,
	.pixel_clock_hz	= 55000000, //CFG_DISP_PRI_PIXEL_CLOCK,
	.clk_src_lv0	= CFG_DISP_PRI_CLKGEN0_SOURCE,
	.clk_div_lv0	= 800/55, //CFG_DISP_PRI_CLKGEN0_DIV,
	.clk_src_lv1	= CFG_DISP_PRI_CLKGEN1_SOURCE,
	.clk_div_lv1	= CFG_DISP_PRI_CLKGEN1_DIV,
};

#endif

static struct nxp_lcd_plat_data lcd_data = {
	.display_in	= DISP_DEVICE_SYNCGEN0,
	.vsync		= &lcd_vsync,
};

static struct platform_device lcd_device = {
	.name	= DEV_NAME_LCD,
	.id		= -1,
	.dev    = {
		.platform_data	= &lcd_data
	},
};
#endif /* LCDIF */

/*
 * HDMI
 */
#ifdef CONFIG_NEXELL_SOC_DISP_HDMI
static struct disp_vsync_info	cvbs_vsync = {
    /* 720p: 1280x720 */
 	.h_active_len	= 1280,
	.h_sync_width	= 40,
	.h_back_porch	= 220,
	.h_front_porch	= 110,
	.h_sync_invert	= 0,
	.v_active_len	= 720,
	.v_sync_width	= 5,
	.v_back_porch	= 20,
	.v_front_porch	= 5,
	.v_sync_invert	= 0,
	.pixel_clock_hz	= 74000000,
    .interlace_scan = 0,
	.clk_src_lv0	= CFG_DISP_PRI_CLKGEN0_SOURCE,
	.clk_div_lv0	= 800/74, //CFG_DISP_PRI_CLKGEN0_DIV,
	.clk_src_lv1	= CFG_DISP_PRI_CLKGEN1_SOURCE,
	.clk_div_lv1	= CFG_DISP_PRI_CLKGEN1_DIV,
};

static struct nxp_hdmi_plat_data cvbs_data = {
#if defined(CONFIG_NEXELL_SOC_DISP_PRI)
	.display_in	= DISP_DEVICE_SYNCGEN0,
#else
	.display_in	= DISP_DEVICE_SYNCGEN1,
#endif
	.preset 	= NXP_HDMI_PRESET_720P,
};

static struct platform_device cvbs_device = {
	.name	= DEV_NAME_HDMI,
	.id		= -1,
	.dev    = {
		.platform_data	= &cvbs_data,
	},
};
#endif /* HDMI */

/*
 * Frame Buffer (Primary)
 */
#if defined (CONFIG_FB_NEXELL_PRI) || defined(CONFIG_FB_NEXELL_LFEXT)
static struct nxp_fb_plat_data pri_fb_plat_data = {
	.module			= 0,
	.layer			= 0, //CFG_DISP_PRI_SCREEN_LAYER,
	.format			= MLC_RGBFMT_A8R8G8B8, 	//CFG_DISP_PRI_SCREEN_RGB_FORMAT,
	.bgcolor		= 0x0000FF, //CFG_DISP_PRI_BACK_GROUND_COLOR,
	.bitperpixel	= 32, 	//CFG_DISP_PRI_SCREEN_PIXEL_BYTE * 8,
#if defined(CONFIG_NEXELL_SOC_DISP_HDMI)
	.x_resol		= 1280,	//CFG_DISP_PRI_RESOL_WIDTH,
	.y_resol		= 720,	//CFG_DISP_PRI_RESOL_HEIGHT,
#elif defined(CONFIG_NEXELL_SOC_DISP_LCD_480x272)
	.x_resol		= 480,	//CFG_DISP_PRI_RESOL_WIDTH,
	.y_resol		= 272,	//CFG_DISP_PRI_RESOL_HEIGHT,
#elif defined(CONFIG_NEXELL_SOC_DISP_LCD_1024_600)
	.x_resol		= 1024, //CFG_DISP_PRI_RESOL_WIDTH,
	.y_resol		= 600,	//CFG_DISP_PRI_RESOL_HEIGHT,
#else
	.x_resol		= 1024, //CFG_DISP_PRI_RESOL_WIDTH,
	.y_resol		= 600,	//CFG_DISP_PRI_RESOL_HEIGHT,
#endif
#ifdef CONFIG_ANDROID
	.buffers		= 3,
#elif defined(CONFIG_FB_NEXELL_LFEXT)
	.buffers		= 8,
#elif defined(CONFIG_FB_NEXELL_ION_MEM)
	.buffers		= 4,
#else
	.buffers		= 2,
#endif
	/* display sync for dpi */
	.lcd_with_mm	= 152.4,
	.lcd_height_mm	=  91.44,
#if defined (CONFIG_NEXELL_SOC_DISP_LVDS)
	.vsync	     	= &lvds_vsync,
#elif defined (CONFIG_NEXELL_SOC_DISP_HDMI)
	.vsync	     	= &cvbs_vsync, // nxp-fb driver dependency (not used for HDMI output)
#elif defined (CONFIG_NEXELL_SOC_DISP_LCDIF)
	.vsync	     	= &lcd_vsync,
#endif
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

#if defined (CONFIG_FB_NEXELL_SEC) || defined(CONFIG_FB_NEXELL_LFEXT)
static struct nxp_fb_plat_data sec_fb_plat_data = {
	.module			= 1,
	.layer			= 0, //CFG_DISP_PRI_SCREEN_LAYER,
	.format			= MLC_RGBFMT_A8R8G8B8, 	//CFG_DISP_PRI_SCREEN_RGB_FORMAT,
	.bgcolor		= 0x0000FF,	//CFG_DISP_PRI_BACK_GROUND_COLOR,
	.bitperpixel	= 32, 	//CFG_DISP_PRI_SCREEN_PIXEL_BYTE * 8,
	.x_resol		= 1280,	//CFG_DISP_PRI_RESOL_WIDTH,
	.y_resol		= 720,	//CFG_DISP_PRI_RESOL_HEIGHT,
#ifdef CONFIG_ANDROID
	.buffers		= 3,
#elif defined(CONFIG_FB_NEXELL_ION_MEM)
	.buffers		= 4,
#else
	.buffers		= 2,
#endif
	/* display sync for dpi */
	.lcd_with_mm	= 152.4,  // FIXME
	.lcd_height_mm	=  91.44, // FIXME
#if defined (CONFIG_NEXELL_SOC_DISP_HDMI)
	.vsync	     	= &cvbs_vsync, // nxp-fb driver dependency (not used for HDMI output)
#endif
};

/* platform device data */
static struct platform_device fb_secondary_device = {
	.name	= DEV_NAME_FB,
	.id		= 1,	/* device channel */
	.dev    = {
		.coherent_dma_mask 	= 0xffffffffUL,	/* for DMA allocate */
		.platform_data		= &sec_fb_plat_data
	},
};
#endif	/* CONFIG_FB_NEXELL_SEC */

#if defined(CONFIG_NEXELL_SOC_DISP_PRI)
static struct disp_syncgen_param syncgen_dev_param0 = {
	.interlace_scan = CFG_DISP_PRI_MLC_INTERLACE,
	.out_format		= DPC_FORMAT_RGB888, //CFG_DISP_PRI_OUT_FORMAT,
	.lcd_mpu_type 	= 0,
	.invert_field 	= CFG_DISP_PRI_OUT_INVERT_FIELD,
	.swap_RB		= CFG_DISP_PRI_OUT_SWAPRB,
	.yc_order		= CFG_DISP_PRI_OUT_YCORDER,
	.delay_mask		= 0,
	.vclk_select	= CFG_DISP_PRI_PADCLKSEL,
	.clk_delay_lv0	= CFG_DISP_PRI_CLKGEN0_DELAY,
	.clk_inv_lv0	= 1, //CFG_DISP_PRI_CLKGEN0_INVERT,
	.clk_delay_lv1	= CFG_DISP_PRI_CLKGEN1_DELAY,
	.clk_inv_lv1	= CFG_DISP_PRI_CLKGEN1_INVERT,
	.clk_sel_div1	= CFG_DISP_PRI_CLKSEL1_SELECT,
};

static struct nxp_syncgen_plat_data syncgen_dev_data0 = {
	.par		= &syncgen_dev_param0,
#if defined (CONFIG_NEXELL_SOC_DISP_LVDS)
	.vsync	    = &lvds_vsync,
#elif defined (CONFIG_NEXELL_SOC_DISP_HDMI)
	.vsync	    = &cvbs_vsync, // nxp-fb driver dependency (not used for HDMI output)
#elif defined (CONFIG_NEXELL_SOC_DISP_LCDIF)
	.vsync		= &lcd_vsync,
#endif
};

static struct platform_device syncgen_device0 = {
	.name	= DEV_NAME_DISP,
	.id		= 0,	/* module id */
	.dev    = {
		.platform_data	= &syncgen_dev_data0
	},
};
#endif

#if defined(CONFIG_NEXELL_SOC_DISP_SEC)
static struct disp_syncgen_param syncgen_dev_param1 = {
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

static struct nxp_syncgen_plat_data syncgen_dev_data1 = {
	.par		= &syncgen_dev_param1,
#if defined (CONFIG_NEXELL_SOC_DISP_HDMI)
	.vsync		= &cvbs_vsync,
#endif
};

static struct platform_device syncgen_device1 = {
	.name	= DEV_NAME_DISP,
	.id		= 1,	/* module id */
	.dev    = {
		.platform_data	= &syncgen_dev_data1
	},
};
#endif

/*------------------------------------------------------------------------------
 *	platform devices
 */
#if defined(CONFIG_FB_NEXELL)
static struct platform_device *fb_devices[] __initdata = {
	#if defined(CONFIG_NEXELL_SOC_DISP_LCDIF) || defined(CONFIG_NEXELL_SOC_DISP_LVDS)
	&fb_primary_device,
	#endif
	#if defined(CONFIG_NEXELL_SOC_DISP_HDMI)
	#if defined(CONFIG_NEXELL_SOC_DISP_PRI)
	&fb_primary_device,
	#else
	&fb_secondary_device,
	#endif
	#endif
};
#endif

#if defined(CONFIG_NEXELL_SOC_DISP)
static struct platform_device *syncgen_devices[] __initdata = {
	#if defined(CONFIG_NEXELL_SOC_DISP_PRI)
	&syncgen_device0,
	#endif
	#if defined(CONFIG_NEXELL_SOC_DISP_SEC)
	&syncgen_device1,
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
 #if defined(CONFIG_NEXELL_SOC_DISP_PRI)
	switch (get_leapfrog_platform()) {
	case CABO:
	case LOWCOST:
		syncgen_dev_param0.swap_RB = true;
		pri_fb_plat_data.bgcolor = 0xffffff;//0x3f3f3f;
		sec_fb_plat_data.bgcolor = 0x3f3f3f;
		break;

	case XANADU:
		syncgen_dev_param0.swap_RB = false;
		pri_fb_plat_data.bgcolor = 0xffffff;//0x3f3f3f;
		sec_fb_plat_data.bgcolor = 0x3f3f3f;
		break;
	}
 #endif
	platform_add_devices(syncgen_devices, ARRAY_SIZE(syncgen_devices));
#endif
#if defined(CONFIG_NEXELL_SOC_DISP_LVDS)
	printk("plat: add device lvds \n");
	platform_device_register(&lvds_device);
#endif

#if defined(CONFIG_NEXELL_SOC_DISP_LCDIF)
	printk("plat: add device lcd \n");
	platform_device_register(&lcd_device);
#endif

#if defined(CONFIG_NEXELL_SOC_DISP_HDMI)
	printk("plat: add device hdmi \n");
	platform_device_register(&cvbs_device);
#endif
};
