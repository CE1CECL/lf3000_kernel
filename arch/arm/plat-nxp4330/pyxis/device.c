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
#include <linux/kernel.h>
#include <linux/types.h>
#include <linux/platform_device.h>
#include <linux/power_supply.h>

#include <linux/amba/pl022.h>
/* nexell soc headers */
#include <mach/platform.h>
#include <mach/devices.h>
#include <mach/soc.h>



/*------------------------------------------------------------------------------
 * DW MMC (Synopsys DesignWare Memory Card Interface)
 */
#if defined(CONFIG_ARM_NXP4330_CPUFREQ)

static unsigned long dfs_freq_table[][2] = {
//	{ 1000000, 1200 },
//	{  900000, 1200 },
	{  800000, 1200 },
	{  780000, 1200 },
	{  760000, 1200 },
	{  740000, 1200 },
	{  720000, 1200 },
	{  562000, 1200 },
	{  533000, 1200 },
	{  490000, 1200 },
	{  470000, 1200 },
	{  460000, 1200 },
	{  450000, 1200 },
	{  440000, 1200 },
	{  430000, 1200 },
	{  420000, 1200 },
	{  410000, 1200 },
	{  400000, 1200 },
	{  399000, 1200 },
	{  390000, 1200 },
	{  384000, 1200 },
	{  350000, 1200 },
	{  330000, 1200 },
	{  300000, 1200 },
	{  266000, 1200 },
	{  250000, 1200 },
	{  220000, 1200 },
	{  200000, 1200 },
	{  166000, 1200 },
	{  147500, 1200 },
	{  133000, 1200 },
	{  125000, 1200 },
	{  100000, 1200 },
};

struct nxp_cpufreq_plat_data dfs_plat_data = {
	.pll_dev	   	= CONFIG_NXP4330_CPUFREQ_PLLDEV,
	.freq_table	   	= dfs_freq_table,
	.table_size	   	= ARRAY_SIZE(dfs_freq_table),
//	.max_cpufreq   	= 700000,
//	.max_retention 	=  5,
//	.rest_cpufreq  	= 500000,
//	.rest_retention = 20,
};

static struct platform_device dfs_plat_device = {
	.name			= DEV_NAME_CPUFREQ,
	.dev			= {
		.platform_data	= &dfs_plat_data,
	}
};

#endif

/*------------------------------------------------------------------------------
 * Network DM9000
 */
#if defined(CONFIG_DM9000) || defined(CONFIG_DM9000_MODULE)
#include <linux/dm9000.h>

static struct resource dm9000_resource[] = {
	[0] = {
		.start	= CFG_ETHER_EXT_PHY_BASEADDR,
		.end	= CFG_ETHER_EXT_PHY_BASEADDR + 1,		// 1 (8/16 BIT)
		.flags	= IORESOURCE_MEM
	},
	[1] = {
		.start	= CFG_ETHER_EXT_PHY_BASEADDR + 4,		// + 4 (8/16 BIT)
		.end	= CFG_ETHER_EXT_PHY_BASEADDR + 5,		// + 5 (8/16 BIT)
		.flags	= IORESOURCE_MEM
	},
	[2] = {
		.start	= CFG_ETHER_EXT_IRQ_NUM,
		.end	= CFG_ETHER_EXT_IRQ_NUM,
		.flags	= IORESOURCE_IRQ | IORESOURCE_IRQ_HIGHLEVEL,
	}
};

static struct dm9000_plat_data eth_plat_data = {
	.flags		= DM9000_PLATF_8BITONLY,	// DM9000_PLATF_16BITONLY
};

static struct platform_device dm9000_plat_device = {
	.name			= "dm9000",
	.id				= 0,
	.num_resources	= ARRAY_SIZE(dm9000_resource),
	.resource		= dm9000_resource,
	.dev			= {
		.platform_data	= &eth_plat_data,
	}
};
#endif	/* CONFIG_DM9000 || CONFIG_DM9000_MODULE */

/*------------------------------------------------------------------------------
 * Frame Buffer platform device
 */
#include "dev-fb.c"

/*------------------------------------------------------------------------------
 * backlight : generic pwm device
 */
#if defined(CONFIG_BACKLIGHT_PWM)
#include <linux/pwm_backlight.h>

static struct platform_pwm_backlight_data bl_plat_data = {
	.pwm_id			= CFG_LCD_PRI_PWM_CH,
	.max_brightness = 350,	/* 255 is 100%, set over 100% */
	.dft_brightness = 128,	/* 50% */
	.pwm_period_ns	= 1000000000/CFG_LCD_PRI_PWM_FREQ,
};

static struct platform_device bl_plat_device = {
	.name	= "pwm-backlight",
	.id		= -1,
	.dev	= {
		.platform_data	= &bl_plat_data,
	},
};
#endif

/*------------------------------------------------------------------------------
 * NAND device
 */
#if defined(CONFIG_MTD_NAND_NEXELL)
#include <linux/mtd/partitions.h>
#include <asm-generic/sizes.h>

static struct mtd_partition nxp_nand_parts[] = {
	{
		.name		= "NAND  Boot",
		.offset		=   0 * SZ_1M,
		.size		=   8 * SZ_1M,
	}, {
		.name		= "NAND  Data",
		.offset		=   8 * SZ_1M,
		.size		=  56 * SZ_1M,
	},
};

static struct nxp_nand_plat_data nand_plat_data = {
	.parts		= nxp_nand_parts,
	.nr_parts	= ARRAY_SIZE(nxp_nand_parts),
	.chip_delay = 10,
};

static struct platform_device nand_plat_device = {
	.name	= DEV_NAME_NAND,
	.id		= -1,
	.dev	= {
		.platform_data	= &nand_plat_data,
	},
};
#endif	/* CONFIG_MTD_NAND_NEXELL */

/*------------------------------------------------------------------------------
 * Touch platform device
 */
#if defined(CONFIG_TOUCHSCREEN_FT5X0X)
#include <linux/i2c.h>
#define	FT5X0X_I2C_BUS		(1)

struct nxp_ts_cali_plat_data ts_plat_data = {
	.touch_points	= 10,
	.x_resol	   	= CFG_DISP_PRI_RESOL_WIDTH,
	.y_resol	   	= CFG_DISP_PRI_RESOL_HEIGHT,
	.rotate			= 90,
};

static struct i2c_board_info __initdata ft5x0x_i2c_bdi = {
	.type	= "ft5x06_ts",
	.addr	= (0x70>>1),
    .irq    = PB_PIO_IRQ(CFG_IO_TOUCH_PENDOWN_DETECT),
	.platform_data = &ts_plat_data,
};
#endif


/*------------------------------------------------------------------------------
 * ANDROID timed gpio platform device
 */
#if defined(CONFIG_GPIOLIB) && defined(CONFIG_ANDROID_TIMED_GPIO)

#define CONFIG_ANDROID_VIBRATION
#include <../../../../drivers/staging/android/timed_gpio.h>

#define ANDROID_VIBRATION_GPIO    (PAD_GPIO_A + 18)
static struct timed_gpio android_vibration = {
    .name         = "vibrator",
    .gpio         = ANDROID_VIBRATION_GPIO,
    .max_timeout  = 15000, /* ms */
};

static struct timed_gpio_platform_data timed_gpio_data = {
    .num_gpios    = 1,
    .gpios        = &android_vibration,
};

static struct platform_device android_timed_gpios = {
    .name         = "timed-gpio",
    .id           = -1,
	.dev          = {
		.platform_data = &timed_gpio_data,
	},
};
#endif
/*------------------------------------------------------------------------------
 * Keypad platform device
 */
#if defined(CONFIG_KEYBOARD_NEXELL_KEY) || defined(CONFIG_KEYBOARD_NEXELL_KEY_MODULE)

#include <linux/input.h>

static unsigned int  button_gpio[] = CFG_KEYPAD_KEY_BUTTON;
static unsigned int  button_code[] = CFG_KEYPAD_KEY_CODE;

struct nxp_key_plat_data key_plat_data = {
	.bt_count	= ARRAY_SIZE(button_gpio),
	.bt_io		= button_gpio,
	.bt_code	= button_code,
	.bt_rep		= CFG_KEYPAD_REPEAT,
};

static struct platform_device key_plat_device = {
	.name	= DEV_NAME_KEYPAD,
	.id		= -1,
	.dev    = {
		.platform_data	= &key_plat_data
	},
};
#endif	/* CONFIG_KEYBOARD_NEXELL_KEY || CONFIG_KEYBOARD_NEXELL_KEY_MODULE */

/*------------------------------------------------------------------------------
 * USB device
 */

#if defined( CONFIG_USB_EHCI_NXP4330 )
#include <mach/ehci.h>
#include <mach/usb-phy.h>

/* USB EHCI Host Controller registration */

static struct resource nxp4330_ehci_resource[] = {
	[0] = {
		.start	= PHY_BASEADDR_EHCI,							// ÃßÈÄ ¸ÅÅ©·Î·Î ¹Ù²Ü°Í...
		.end	= PHY_BASEADDR_EHCI + SZ_256 - 1,
		.flags	= IORESOURCE_MEM,
	},
	[1] = {
		.start	= IRQ_PHY_USB20HOST,
		.end	= IRQ_PHY_USB20HOST,
		.flags	= IORESOURCE_IRQ,
	}
};

struct nxp4330_ehci_platdata nxp4330_ehci_plat_data = {
	.phy_init = nxp_usb_phy_init,
	.phy_exit = nxp_usb_phy_exit,
};

static u64 nxp4330_device_ehci_dmamask = 0xffffffffUL;

struct platform_device nxp4330_device_ehci = {
	.name			= "nxp4330-ehci",
	.id				= -1,
	.num_resources	= ARRAY_SIZE(nxp4330_ehci_resource),
	.resource		= nxp4330_ehci_resource,
	.dev			= {
		.dma_mask           = &nxp4330_device_ehci_dmamask,
		.coherent_dma_mask  = 0xffffffffUL,
        .platform_data      = &nxp4330_ehci_plat_data,
	}
};
#endif

/*------------------------------------------------------------------------------
 * ASoC Codec platform device
 */
#if defined(CONFIG_SND_SPDIF_TRANSCIEVER) || defined(CONFIG_SND_SPDIF_TRANSCIEVER_MODULE)
static struct platform_device spdif_transciever = {
	.name	= "spdif-dit",
	.id		= -1,
};

struct nxp_snd_dai_plat_data spdif_trans_dai_data = {
	.sample_rate = 48000,
	.pcm_format	 = SNDRV_PCM_FMTBIT_S16_LE,
};

static struct platform_device spdif_trans_dai = {
	.name	= "spdif-transciever",
	.id		= -1,
	.dev	= {
		.platform_data	= &spdif_trans_dai_data,
	}
};
#endif

#if defined(CONFIG_SND_CODEC_RT5631) || defined(CONFIG_SND_CODEC_RT5631_MODULE)
#include <linux/i2c.h>

#define	RT5631_I2C_BUS		(0)

/* CODEC */
static struct i2c_board_info __initdata rt5631_i2c_bdi = {
	.type	= "rt5631",
	.addr	= (0x34>>1),		// 0x1A (7BIT), 0x34(8BIT)
};

/* DAI */
struct nxp_snd_dai_plat_data i2s_dai_data = {
	.i2s_ch	= 0,
	.sample_rate	= 48000,
	.hp_jack 		= {
		.support    	= 1,
		.detect_io		= PAD_GPIO_A + 0,
		.detect_level	= 1,
	},
};

static struct platform_device rt5631_dai = {
	.name			= "rt5631-audio",
	.id				= 0,
	.dev			= {
		.platform_data	= &i2s_dai_data,
	}
};
#endif

/*------------------------------------------------------------------------------
 *  * reserve mem
 *   */
#ifdef CONFIG_CMA
#include <linux/cma.h>
extern void nxp_cma_region_reserve(struct cma_region *, const char *);

void __init nxp_reserve_mem(void)
{
    static struct cma_region regions[] = {
        {
            .name = "ion",
#ifdef CONFIG_ION_NXP_CONTIGHEAP_SIZE
            .size = CONFIG_ION_NXP_CONTIGHEAP_SIZE * SZ_1K,
#else
			.size = 0,
#endif
            {
                .alignment = PAGE_SIZE,
            }
        },
        {
            .size = 0
        }
    };

    static const char map[] __initconst =
        "ion-nxp=ion;"
        "nx_vpu=ion;";

#ifdef CONFIG_ION_NXP_CONTIGHEAP_SIZE
    printk("%s: reserve CMA: size %d\n", __func__, CONFIG_ION_NXP_CONTIGHEAP_SIZE * SZ_1K);
#endif
    nxp_cma_region_reserve(regions, map);
}
#endif

/*------------------------------------------------------------------------------
 * PMIC platform device
 */
#if defined(CONFIG_REGULATOR_NXE2000)

#include <linux/i2c.h>
#include <nxe2000.h>
#include <linux/regulator/machine.h>

#define NXE2000_I2C_BUS		0
#define NXE2000_I2C_ADDR	0x64
#define NXE2000_I2C_LEN		1
#define NXE2000_IRQ			(PAD_GPIO_B + 26)


/* NXE2000 regulators */
static struct regulator_init_data __initdata nxp4330_ldo1_data = {
    .constraints    = {
        .name       = "VGPS_3.3V",
        .min_uV     = 3300000,
        .max_uV     = 3300000,
        .apply_uV   = 1,
//        .always_on  = 1,
//        .boot_on    = 1,
    },
};

static struct regulator_init_data __initdata nxp4330_ldo2_data = {
    .constraints    = {
        .name       = "VCAM1_1.8V",
        .min_uV     = 1800000,
        .max_uV     = 1800000,
        .apply_uV   = 1,
//        .always_on  = 1,
//        .boot_on    = 1,
    },
};

static struct regulator_init_data __initdata nxp4330_ldo3_data = {
    .constraints    = {
        .name       = "VSYS1_1.8V",
        .min_uV     = 1800000,
        .max_uV     = 1800000,
        .apply_uV   = 1,
        .always_on  = 1,
//        .boot_on    = 1,
    },
};

static struct regulator_init_data __initdata nxp4330_ldo4_data = {
    .constraints    = {
        .name       = "VSYS_1.8V",
        .min_uV     = 1800000,
        .max_uV     = 1800000,
        .apply_uV   = 1,
        .always_on  = 1,
//        .boot_on    = 1,
    },
};

static struct regulator_init_data __initdata nxp4330_ldo5_data = {
    .constraints    = {
        .name       = "VCAM_2.8V",
        .min_uV     = 2800000,
        .max_uV     = 2800000,
        .apply_uV   = 1,
//        .always_on  = 1,
//        .boot_on    = 1,
    },
};

static struct regulator_init_data __initdata nxp4330_ldo6_data = {
    .constraints    = {
        .name       = "VALIVE_3.3V",
        .min_uV     = 3300000,
        .max_uV     = 3300000,
        .apply_uV   = 1,
        .always_on  = 1,
//        .boot_on    = 1,
    },
};

static struct regulator_init_data __initdata nxp4330_ldo7_data = {
    .constraints    = {
        .name       = "VVID_2.8V",
        .min_uV     = 2800000,
        .max_uV     = 2800000,
        .apply_uV   = 1,
//        .always_on  = 1,
//        .boot_on    = 1,
    },
};

static struct regulator_init_data __initdata nxp4330_ldo8_data = {
    .constraints    = {
        .name       = "VWIFI_3.3V",
        .min_uV     = 3300000,
        .max_uV     = 3300000,
        .apply_uV   = 1,
//        .always_on  = 1,
//        .boot_on    = 1,
    },
};

static struct regulator_init_data __initdata nxp4330_ldo9_data = {
    .constraints    = {
        .name       = "VHUB_3.3V",
        .min_uV     = 3300000,
        .max_uV     = 3300000,
        .apply_uV   = 1,
//        .always_on  = 1,
//        .boot_on    = 1,
    },
};

static struct regulator_init_data __initdata nxp4330_ldo10_data = {
    .constraints    = {
        .name       = "VHSIC_1.2V",
        .min_uV     = 1200000,
        .max_uV     = 1200000,
        .apply_uV   = 1,
//        .always_on  = 1,
//        .boot_on    = 1,
    },
};

static struct regulator_init_data __initdata nxp4330_ldortc1_data = {
    .constraints    = {
        .name       = "VALIVE_1.8V",
        .min_uV     = 1800000,
        .max_uV     = 1800000,
        .apply_uV   = 1,
        .always_on  = 1,
//        .boot_on    = 1,
    },
};

static struct regulator_init_data __initdata nxp4330_ldortc2_data = {
    .constraints    = {
        .name       = "VALIVE_1.0V",
        .min_uV     = 1000000,
        .max_uV     = 1000000,
        .apply_uV   = 1,
        .always_on  = 1,
//        .boot_on    = 1,
    },
};

/* BUCK */
static struct regulator_consumer_supply __initdata nxe2000_buck1_csm[] = {
    REGULATOR_SUPPLY("V1.1_ARM", NULL),
};

static struct regulator_consumer_supply __initdata nxe2000_buck2_csm[] = {
    REGULATOR_SUPPLY("V1.0_CORE", NULL),
};

static struct regulator_consumer_supply __initdata nxe2000_buck3_csm[] = {
    REGULATOR_SUPPLY("V3.3_SYS", NULL),
};

static struct regulator_consumer_supply __initdata nxe2000_buck4_csm[] = {
    REGULATOR_SUPPLY("V1.5_DDR", NULL),
};

static struct regulator_consumer_supply __initdata nxe2000_buck5_csm[] = {
    REGULATOR_SUPPLY("V1.5_SYS", NULL),
};

static struct regulator_init_data __initdata nxp4330_buck1_data = {
    .constraints    = {
        .name       = "VARM_1.1V",
        .min_uV     = 1100000,
        .max_uV     = 1100000,
        .valid_ops_mask = REGULATOR_CHANGE_VOLTAGE |
                      REGULATOR_CHANGE_STATUS,
        .apply_uV   = 1,
        .always_on  = 1,
        .boot_on    = 1,
    },
    .num_consumer_supplies  = ARRAY_SIZE(nxe2000_buck1_csm),
    .consumer_supplies      = nxe2000_buck1_csm,
};

static struct regulator_init_data __initdata nxp4330_buck2_data = {
    .constraints    = {
        .name       = "VCORE_1.0V",
        .min_uV     = 1000000,
        .max_uV     = 1300000,
        .valid_ops_mask     = REGULATOR_CHANGE_VOLTAGE
                            | REGULATOR_CHANGE_STATUS,
        .apply_uV   = 1,
        .always_on  = 1,
        .boot_on    = 1,
    },
    .num_consumer_supplies  = ARRAY_SIZE(nxe2000_buck2_csm),
    .consumer_supplies      = nxe2000_buck2_csm,
};

static struct regulator_init_data __initdata nxp4330_buck3_data = {
    .constraints    = {
        .name       = "VSYS_3.3V",
        .min_uV     = 3300000,
        .max_uV     = 3300000,
        .valid_ops_mask = REGULATOR_CHANGE_VOLTAGE
                        | REGULATOR_CHANGE_STATUS,
        .apply_uV   = 1,
        .always_on  = 1,
        .boot_on    = 1,
    },
    .num_consumer_supplies  = ARRAY_SIZE(nxe2000_buck3_csm),
    .consumer_supplies      = nxe2000_buck3_csm,
};

static struct regulator_init_data __initdata nxp4330_buck4_data = {
    .constraints    = {
        .name       = "VDDR_1.5V",
        .min_uV     = 1500000,
        .max_uV     = 1500000,
        .valid_ops_mask = REGULATOR_CHANGE_VOLTAGE
                        | REGULATOR_CHANGE_STATUS,
//        .apply_uV   = 1,
        .state_mem  = {
            .uV = 1500000,
            .mode = REGULATOR_MODE_NORMAL,
            .enabled = 1,
        },
        .initial_state = PM_SUSPEND_MEM,
        .always_on  = 1,
        .boot_on    = 1,
    },
    .num_consumer_supplies  = ARRAY_SIZE(nxe2000_buck4_csm),
    .consumer_supplies      = nxe2000_buck4_csm,
};

static struct regulator_init_data __initdata nxp4330_buck5_data = {
    .constraints    = {
        .name       = "VSYS_1.5V",
        .min_uV     = 1500000,
        .max_uV     = 1500000,
        .valid_ops_mask = REGULATOR_CHANGE_VOLTAGE
                        | REGULATOR_CHANGE_STATUS,
//        .apply_uV   = 1,
        .state_mem  = {
            .uV = 1500000,
            .mode = REGULATOR_MODE_NORMAL,
            .enabled = 1,
        },
        .initial_state = PM_SUSPEND_MEM,
        .always_on  = 1,
        .boot_on    = 1,
    },
    .num_consumer_supplies  = ARRAY_SIZE(nxe2000_buck5_csm),
    .consumer_supplies      = nxe2000_buck5_csm,
};

static struct nxe2000_regulator_data __initdata nxp4330_regulators[] = {
    { NXE2000_LDO1,     &nxp4330_ldo1_data },
    { NXE2000_LDO2,     &nxp4330_ldo2_data },
    { NXE2000_LDO3,     &nxp4330_ldo3_data },
    { NXE2000_LDO4,     &nxp4330_ldo4_data },
    { NXE2000_LDO5,     &nxp4330_ldo5_data },
    { NXE2000_LDO6,     &nxp4330_ldo6_data },
    { NXE2000_LDO7,     &nxp4330_ldo7_data },
    { NXE2000_LDO8,     &nxp4330_ldo8_data },
    { NXE2000_LDO9,     &nxp4330_ldo9_data },
    { NXE2000_LDO10,    &nxp4330_ldo10_data },
    { NXE2000_LDORTC1,  &nxp4330_ldortc1_data },
    { NXE2000_LDORTC2,  &nxp4330_ldortc2_data },
    { NXE2000_BUCK1,    &nxp4330_buck1_data },
    { NXE2000_BUCK2,    &nxp4330_buck2_data },
    { NXE2000_BUCK3,    &nxp4330_buck3_data },
    { NXE2000_BUCK4,    &nxp4330_buck4_data },
    { NXE2000_BUCK5,    &nxp4330_buck5_data },
};

static struct nxe2000_pdata __initdata nxp4330_nxe2000_pdata = {
    .gpio_eint          = NXE2000_IRQ,
    .irq_base           = IRQ_SYSTEM_END,
    .wakeup             = 1,

    .num_regulators     = ARRAY_SIZE(nxp4330_regulators),
    .regulators         = nxp4330_regulators,

    .have_battery       = 1,
    .rdstate_periodic   = 1000,         /* milisecond */

    .slp_prio_buck[0]   = 1,    // 0 ~ 14, off => 15
    .slp_prio_buck[1]   = 1,
    .slp_prio_buck[2]   = 1,
    .slp_prio_buck[3]   = 0xF,
    .slp_prio_buck[4]   = 1,

    .slp_prio_ldo[0]    = 1,    // 0 ~ 14, off => 15
    .slp_prio_ldo[1]    = 1,
    .slp_prio_ldo[2]    = 1,
    .slp_prio_ldo[3]    = 1,
    .slp_prio_ldo[4]    = 1,
    .slp_prio_ldo[5]    = 0xF,
    .slp_prio_ldo[6]    = 1,
    .slp_prio_ldo[7]    = 1,
    .slp_prio_ldo[8]    = 1,
    .slp_prio_ldo[9]    = 1,

    /* power-supply shutoff */
    .slp_prio_pso[0]    = 0xF,  // 0 ~ 14, off => 15
    .slp_prio_pso[1]    = 0xF,
    .slp_prio_pso[2]    = 0xF,
    .slp_prio_pso[3]    = 0xF,
    .slp_prio_pso[4]    = 1,

    .slp_buck_vol[0]    = 1100000,      /* 1.1V ARM */
    .slp_buck_vol[1]    = 1000000,      /* 1.0V CORE */
    .slp_buck_vol[2]    = 3300000,      /* 3.3V SYS */
    .slp_buck_vol[3]    = 1500000,      /* 1.5V DDR */
    .slp_buck_vol[4]    = 1500000,      /* 1.5V SYS */

    .slp_ldo_vol[0]     = 3300000,      /* 3.3V GPS */
    .slp_ldo_vol[1]     = 1800000,      /* 1.8V CAM1 */
    .slp_ldo_vol[2]     = 1800000,      /* 1.8V SYS1 */
    .slp_ldo_vol[3]     = 1800000,      /* 1.8V SYS */
    .slp_ldo_vol[4]     = 2800000,      /* 2.8V CAM */
    .slp_ldo_vol[5]     = 3300000,      /* 3.3V ALIVE */
    .slp_ldo_vol[6]     = 2800000,      /* 2.8V VID */
    .slp_ldo_vol[7]     = 3300000,      /* 3.3V WIFI */
    .slp_ldo_vol[8]     = 3300000,      /* 3.3V HUB */
    .slp_ldo_vol[9]     = 1200000,      /* 1.2V HSIC */

    .buck1_set          = 0,            /* TODO */
    .buck2_set          = 0,            /* TODO */
    .batt_volt_max      = 4200000,      /* 4.2V */
    .batt_volt_min      = 3300000,      /* 3.3V */
    .batt_cap_level     = POWER_SUPPLY_CAPACITY_LEVEL_NORMAL,

    .adp_ilim_current   = 1500000,      /* 1.5A */
    .usb_ilim_current   = 450000,       /* 450mA */
    .chg_current        = 500000,       /* 500mA */
};

static struct i2c_board_info __initdata nxe2000_i2c_pmic_devs[] = {
    {
        I2C_BOARD_INFO("nxe2000", NXE2000_I2C_ADDR >> 1),
        .platform_data  = &nxp4330_nxe2000_pdata,
        .irq            = PB_PIO_IRQ(NXE2000_IRQ),
    },
};
#endif	/* CONFIG_REGULATOR_NXE2000  */

#if defined(CONFIG_REGULATOR_NXE1100)

#include <linux/i2c.h>
#include <nxe1100.h>
#include <linux/regulator/machine.h>

#define NXE1100_I2C_BUS		0
#define NXE1100_I2C_ADDR	0x64
#define NXE1100_I2C_LEN		1
#define NXE1100_IRQ			(PAD_GPIO_B + 26)


/* NXE1100 regulators */
static struct regulator_init_data __initdata nxp4330_ldo1_data = {
	.constraints	= {
		.name		= "VGPS_3.3V",
		.min_uV		= 3300000,
		.max_uV		= 3300000,
		.apply_uV	= 1,
//		.always_on	= 1,
	},
};

static struct regulator_init_data __initdata nxp4330_ldo2_data = {
	.constraints	= {
		.name		= "VWIFI_3.3V",
		.min_uV		= 3300000,
		.max_uV		= 3300000,
		.apply_uV	= 1,
//		.always_on	= 1,
	},
};

static struct regulator_init_data __initdata nxp4330_ldo3_data = {
	.constraints	= {
		.name		= "VCAM_2.8V",
		.min_uV		= 2800000,
		.max_uV		= 2800000,
		.apply_uV	= 1,
		.always_on	= 1,
	},
};

static struct regulator_init_data __initdata nxp4330_ldo4_data = {
	.constraints	= {
		.name		= "VHUB_3.3V",
		.min_uV		= 3300000,
		.max_uV		= 3300000,
		.apply_uV	= 1,
		.always_on	= 1,
	},
};

static struct regulator_init_data __initdata nxp4330_ldo5_data = {
	.constraints	= {
		.name		= "VHSIC_1.2V",
		.min_uV		= 1200000,
		.max_uV		= 1200000,
		.apply_uV	= 1,
		.always_on	= 1,
	},
};

/* BUCK */
static struct regulator_consumer_supply __initdata nxe1100_buck1_csm[] = {
	REGULATOR_SUPPLY("vddarm", NULL),
};

static struct regulator_consumer_supply __initdata nxe1100_buck2_csm[] = {
	REGULATOR_SUPPLY("vddcore", NULL),
};

static struct regulator_init_data __initdata nxp4330_buck1_data = {
	.constraints	= {
		.name		= "VARM_1.1V",
		.min_uV		= 1100000,
		.max_uV		= 1100000,
		.valid_ops_mask = REGULATOR_CHANGE_VOLTAGE |
					  REGULATOR_CHANGE_STATUS,
		.apply_uV	= 1,
		.always_on	= 1,
		.state_mem	= {
			.enabled = 1,
		},
	},
	.num_consumer_supplies	= ARRAY_SIZE(nxe1100_buck1_csm),
	.consumer_supplies	= nxe1100_buck1_csm,
};

static struct regulator_init_data __initdata nxp4330_buck2_data = {
	.constraints	= {
		.name		= "VCORE_1.0V",
		.min_uV		= 1000000,
		.max_uV		= 1000000,
		.valid_ops_mask = REGULATOR_CHANGE_VOLTAGE |
					  REGULATOR_CHANGE_STATUS,
		.apply_uV	= 1,
		.always_on	= 1,
		.state_mem	= {
			.enabled = 1,
		},
	},
	.num_consumer_supplies	= ARRAY_SIZE(nxe1100_buck2_csm),
	.consumer_supplies	= nxe1100_buck2_csm,
};

static struct regulator_init_data __initdata nxp4330_buck3_data = {
	.constraints	= {
		.name		= "VRAM_1.5V",
		.min_uV		= 1500000,
		.max_uV		= 1500000,
		.valid_ops_mask = REGULATOR_CHANGE_VOLTAGE |
					  REGULATOR_CHANGE_STATUS,
		.apply_uV	= 1,
		.always_on	= 1,
		.state_mem	= {
			.enabled = 1,
		},
	},
};

static struct nxe1100_regulator_data __initdata nxp4330_regulators[] = {
	{ NXE1100_LDO1,  &nxp4330_ldo1_data },
	{ NXE1100_LDO2,  &nxp4330_ldo2_data },
	{ NXE1100_LDO3,  &nxp4330_ldo3_data },
	{ NXE1100_LDO4,  &nxp4330_ldo4_data },
	{ NXE1100_LDO5,  &nxp4330_ldo5_data },
	{ NXE1100_BUCK1, &nxp4330_buck1_data },
	{ NXE1100_BUCK2, &nxp4330_buck2_data },
	{ NXE1100_BUCK3, &nxp4330_buck3_data },
};

static struct nxe1100_pdata __initdata nxp4330_nxe1100_pdata = {
	.gpio_eint			= NXE1100_IRQ,
	.irq_base			= IRQ_SYSTEM_END,
	.wakeup 			= 1,

	.num_regulators		= ARRAY_SIZE(nxp4330_regulators),
	.regulators			= nxp4330_regulators,

	.have_battery		= 0,
	.rdstate_periodic	= 1000,			/* milisecond */

	.buck1_set			= 0,			/* TODO */
	.buck2_set			= 0,			/* TODO */
	.buck_voltage[0]	= 1100000,		/* 1.1V */
	.buck_voltage[1]	= 1000000,		/* 1.0V */
	.buck_voltage[2]	= 1500000,		/* 1.5V */
	.batt_volt_max		= 4200000,		/* 4.2V */
	.batt_volt_min		= 3300000,		/* 3.3V */
	.batt_cap_level		= POWER_SUPPLY_CAPACITY_LEVEL_NORMAL,

	.adp_ilim_current	= 2500000,		/* 2.5A */  /* Limit of total current   */
	.usb_ilim_current	= 1500000,		/* 1.5A */
	.chg_current		= 1000000,		/* 1.0A */
};

static struct i2c_board_info __initdata nxe1100_i2c_pmic_devs[] = {
	{
		I2C_BOARD_INFO("nxe1100", NXE1100_I2C_ADDR >> 1),
		.platform_data	= &nxp4330_nxe1100_pdata,
		.irq			= PB_PIO_IRQ(NXE1100_IRQ),
	},
};
#endif	/* CONFIG_REGULATOR_NXE1100 */

/*------------------------------------------------------------------------------
 * v4l2 platform device
 */
#if defined(CONFIG_V4L2_NEXELL) || defined(CONFIG_V4L2_NEXELL_MODULE)
#include <linux/i2c.h>
#include <linux/delay.h>
#include <mach/nxp-v4l2-platformdata.h>
#include <mach/soc.h>

static int camera_common_power_enable(bool on)
{
#ifdef CFG_IO_CAMERA_POWER_DOWN
    static bool is_first = true;
    PM_DBGOUT("%s: is_first %d, on %d\n", __func__, is_first, on);
    if (on) {
        if (is_first) {
            /* reset signal */
            nxp_soc_gpio_set_out_value(CFG_IO_CAMERA_POWER_DOWN, 0);
            nxp_soc_gpio_set_io_dir(CFG_IO_CAMERA_POWER_DOWN, 1);
            nxp_soc_gpio_set_io_func(CFG_IO_CAMERA_POWER_DOWN,
                    nxp_soc_gpio_get_altnum(CFG_IO_CAMERA_POWER_DOWN));
            nxp_soc_gpio_set_out_value(CFG_IO_CAMERA_POWER_DOWN, 1);
            mdelay(1);
            nxp_soc_gpio_set_out_value(CFG_IO_CAMERA_POWER_DOWN, 0);
            is_first = false;

            /* pn signal */
            nxp_soc_gpio_set_out_value(CFG_IO_CAMERA_SELECT, 0);
            nxp_soc_gpio_set_io_dir(CFG_IO_CAMERA_SELECT, 1);
            nxp_soc_gpio_set_io_func(CFG_IO_CAMERA_SELECT,
                    nxp_soc_gpio_get_altnum(CFG_IO_CAMERA_POWER_DOWN));
        }
    } else {
        is_first = true;
    }
#endif
    return 0;
}

static int camera_common_set_clock(ulong clk_rate)
{
    PM_DBGOUT("%s: %d\n", __func__, (int)clk_rate);
    if (clk_rate > 0)
        nxp_soc_pwm_set_frequency(1, clk_rate, 50);
    else
        nxp_soc_pwm_set_frequency(1, 0, 0);
    msleep(1);
    return 0;
}

static void camera_common_vin_setup_io(int module)
{
    u_int *pad;
    int i, len;
    u_int io, fn;

    /* VIP0:0 = VCLK, VID0 ~ 7 */
    const u_int port[][2] = {
        /* VCLK, HSYNC, VSYNC */
        { PAD_GPIO_E +  4, NX_GPIO_PADFUNC_1 },
        { PAD_GPIO_E +  5, NX_GPIO_PADFUNC_1 },
        { PAD_GPIO_E +  6, NX_GPIO_PADFUNC_1 },
        /* DATA */
        { PAD_GPIO_D + 28, NX_GPIO_PADFUNC_1 }, { PAD_GPIO_D + 29, NX_GPIO_PADFUNC_1 },
        { PAD_GPIO_D + 30, NX_GPIO_PADFUNC_1 }, { PAD_GPIO_D + 31, NX_GPIO_PADFUNC_1 },
        { PAD_GPIO_E +  0, NX_GPIO_PADFUNC_1 }, { PAD_GPIO_E +  1, NX_GPIO_PADFUNC_1 },
        { PAD_GPIO_E +  2, NX_GPIO_PADFUNC_1 }, { PAD_GPIO_E +  3, NX_GPIO_PADFUNC_1 },
    };

    printk("%s\n", __func__);

    pad = (u_int *)port;
    len = sizeof(port)/sizeof(port[0]);

    for (i = 0; i < len; i++) {
        io = *pad++;
        fn = *pad++;
        nxp_soc_gpio_set_io_dir(io, 0);
        nxp_soc_gpio_set_io_func(io, fn);
    }
}

static int sp2518_power_enable(int on)
{
    if (on) {
        nxp_soc_gpio_set_out_value(CFG_IO_CAMERA_SELECT, 0);
    } else {
        nxp_soc_gpio_set_out_value(CFG_IO_CAMERA_SELECT, 1);
    }

    camera_common_power_enable(on);
    return 0;
}

static struct i2c_board_info sp2518_i2c_boardinfo[] = {
    {
        I2C_BOARD_INFO("SP2518", 0x60>>1),
    },
};

static int sp0a19_power_enable(int on)
{
    if (on) {
        nxp_soc_gpio_set_out_value(CFG_IO_CAMERA_SELECT, 1);
    } else {
        nxp_soc_gpio_set_out_value(CFG_IO_CAMERA_SELECT, 0);
    }

    camera_common_power_enable(on);
    return 0;
}

static struct i2c_board_info sp0a19_i2c_boardinfo[] = {
    {
        I2C_BOARD_INFO("SP0A19", 0x42>>1),
    },
};

static struct nxp_v4l2_i2c_board_info sensor[] = {
    {
        .board_info = &sp2518_i2c_boardinfo[0],
        .i2c_adapter_id = 0,
    },
    {
        .board_info = &sp0a19_i2c_boardinfo[0],
        .i2c_adapter_id = 0,
    },
};

static struct nxp_capture_platformdata capture_plat_data[] = {
    {
        /* SP2518 656 interface */
        .module = 1,
        .sensor = &sensor[0],
        .type = NXP_CAPTURE_INF_PARALLEL,
        .parallel = {
            /* for 656 */
            .is_mipi        = false,
            .external_sync  = false, /* 656 interface */
            .h_active       = 800,
            .h_frontporch   = 7,
            .h_syncwidth    = 1,
            /* .h_backporch    = 0, */
            .h_backporch    = 10,
            .v_active       = 600,
            .v_frontporch   = 0,
            .v_syncwidth    = 0,
            .v_backporch    = 1,
            .clock_invert   = true,
            .port           = 0,
            .data_order     = NXP_VIN_CBY0CRY1,
            .interlace      = false,
            .clk_rate       = 24000000,
            .power_enable   = sp2518_power_enable,
            .set_clock      = camera_common_set_clock,
            .setup_io       = camera_common_vin_setup_io,
        },
    },
    {
        /* SP0A19 601 interface */
        .module = 1,
        .sensor = &sensor[1],
        .type = NXP_CAPTURE_INF_PARALLEL,
        .parallel = {
            .is_mipi        = false,
            .external_sync  = true,
            .h_active       = 640,
            .h_frontporch   = 0,
            .h_syncwidth    = 0,
            .h_backporch    = 0x146,
            .v_active       = 480,
            .v_frontporch   = 0,
            .v_syncwidth    = 0,
            .v_backporch    = 1,
            .clock_invert   = false,
            .port           = 0,
            .data_order     = NXP_VIN_Y0CBY1CR,
            .interlace      = false,
            .clk_rate       = 24000000,
            .power_enable   = sp0a19_power_enable,
            .set_clock      = camera_common_set_clock,
            .setup_io       = camera_common_vin_setup_io,
        },
    },
    { 0, NULL, 0, },
};

/* out platformdata */
static struct i2c_board_info hdmi_edid_i2c_boardinfo = {
    I2C_BOARD_INFO("nxp_edid", 0xA0>>1),
};

static struct nxp_v4l2_i2c_board_info edid = {
    .board_info = &hdmi_edid_i2c_boardinfo,
    .i2c_adapter_id = 0,
};

static struct i2c_board_info hdmi_hdcp_i2c_boardinfo = {
    I2C_BOARD_INFO("nxp_hdcp", 0x74>>1),
};

static struct nxp_v4l2_i2c_board_info hdcp = {
    .board_info = &hdmi_hdcp_i2c_boardinfo,
    .i2c_adapter_id = 0,
};


static void hdmi_set_int_external(int gpio)
{
    nxp_soc_gpio_set_int_enable(gpio, 0);
    nxp_soc_gpio_set_int_mode(gpio, 1); /* high level */
    nxp_soc_gpio_set_int_enable(gpio, 1);
    nxp_soc_gpio_clr_int_pend(gpio);
}

static void hdmi_set_int_internal(int gpio)
{
    nxp_soc_gpio_set_int_enable(gpio, 0);
    nxp_soc_gpio_set_int_mode(gpio, 0); /* low level */
    nxp_soc_gpio_set_int_enable(gpio, 1);
    nxp_soc_gpio_clr_int_pend(gpio);
}

static int hdmi_read_hpd_gpio(int gpio)
{
    return nxp_soc_gpio_get_in_value(gpio);
}

static struct nxp_out_platformdata out_plat_data = {
    .hdmi = {
        .internal_irq = 0,
        .external_irq = PAD_GPIO_A + 19,
        .set_int_external = hdmi_set_int_external,
        .set_int_internal = hdmi_set_int_internal,
        .read_hpd_gpio = hdmi_read_hpd_gpio,
        .edid = &edid,
        .hdcp = &hdcp,
    },
};

static struct nxp_v4l2_platformdata v4l2_plat_data = {
    .captures = &capture_plat_data[0],
    .out = &out_plat_data,
};

static struct platform_device nxp_v4l2_dev = {
    .name       = NXP_V4L2_DEV_NAME,
    .id         = 0,
    .dev        = {
        .platform_data = &v4l2_plat_data,
    },
};
#endif /* CONFIG_V4L2_NEXELL || CONFIG_V4L2_NEXELL_MODULE */


#if defined (CONFIG_INV_MPU_IIO) || defined (CONFIG_INV_MPU_IIO_MODULE)

#include <linux/mpu.h>
#include <linux/gpio.h>
#include <linux/akm8975.h>

#define MPUIRQ_GPIO         (PAD_GPIO_A + 20)

static struct mpu_platform_data mpu_data = {
	.int_config = 0x00,
	.level_shifter = 0,
	.orientation = {
			1 ,0, 0,
			0 ,1 ,0 ,
			0 ,0, 1 },

	.sec_slave_type = SECONDARY_SLAVE_TYPE_COMPASS,
	.sec_slave_id = COMPASS_ID_AK8975,
	.secondary_i2c_addr = 0x0c,
	.secondary_orientation = {
				1, 0, 0,
			    0, 1, 0,
			    0, 0, -1 },
	.key = {0xdd, 0x16, 0xcd, 0x7, 0xd9, 0xba, 0x97, 0x37,
	        0xcd, 0xfe, 0x23, 0x90, 0xe1, 0x66, 0x2f, 0x32},
};
static struct i2c_board_info __initdata inv_mpu_i2c0_boardinfo[] =  {
	{
		I2C_BOARD_INFO("mpu9150", 0x68),
	    .irq            = PB_PIO_IRQ(MPUIRQ_GPIO),
	    .platform_data = &mpu_data,
     },
};


#endif
/*------------------------------------------------------------------------------
 * SSP/SPI
 */
#if defined(CONFIG_SPI_SPIDEV) || defined(CONFIG_SPI_SPIDEV_MODULE)
#include <linux/spi/spi.h>
static void spi0_cs(u32 chipselect)
{
#if (CFG_SPI0_CS_GPIO_MODE)
	if(nxp_soc_gpio_get_io_func( CFG_SPI0_CS )!= nxp_soc_gpio_get_altnum( CFG_SPI0_CS))
		nxp_soc_gpio_set_io_func( CFG_SPI0_CS, nxp_soc_gpio_get_altnum( CFG_SPI0_CS));

	nxp_soc_gpio_set_io_dir( CFG_SPI0_CS,1);
	nxp_soc_gpio_set_out_value(	 CFG_SPI0_CS , chipselect);
#else
	;
#endif
}
struct pl022_config_chip spi0_info = {
    /* available POLLING_TRANSFER, INTERRUPT_TRANSFER, DMA_TRANSFER */
    .com_mode = CFG_SPI0_COM_MODE,
    .iface = SSP_INTERFACE_MOTOROLA_SPI,
    /* We can only act as master but SSP_SLAVE is possible in theory */
    .hierarchy = SSP_MASTER,
    /* 0 = drive TX even as slave, 1 = do not drive TX as slave */
    .slave_tx_disable = 1,
    .rx_lev_trig = SSP_RX_4_OR_MORE_ELEM,
    .tx_lev_trig = SSP_TX_4_OR_MORE_EMPTY_LOC,
    .ctrl_len = SSP_BITS_8,
    .wait_state = SSP_MWIRE_WAIT_ZERO,
    .duplex = SSP_MICROWIRE_CHANNEL_FULL_DUPLEX,
    /*
     * This is where you insert a call to a function to enable CS
     * (usually GPIO) for a certain chip.
     */
#if (CFG_SPI0_CS_GPIO_MODE)
    .cs_control = spi0_cs,
#endif
	.clkdelay = SSP_FEEDBACK_CLK_DELAY_1T,

};

static struct spi_board_info spi_plat_board[] __initdata = {
    [0] = {
        .modalias        = "spidev",    /* fixup */
        .max_speed_hz    = 3125000,     /* max spi clock (SCK) speed in HZ */
        .bus_num         = 0,           /* Note> set bus num, must be smaller than ARRAY_SIZE(spi_plat_device) */
        .chip_select     = 0,           /* Note> set chip select num, must be smaller than spi cs_num */
        .controller_data = &spi0_info,
        .mode            = SPI_MODE_3 | SPI_CPOL | SPI_CPHA,
    },
};

#endif
/*------------------------------------------------------------------------------
 * DW MMC board config
 */
#if defined(CONFIG_MMC_DW)
int _dwmci_ext_cd_init(void (*notify_func)(struct platform_device *, int state))
{
	return 0;
}

int _dwmci_ext_cd_cleanup(void (*notify_func)(struct platform_device *, int state))
{
	return 0;
}

#ifdef CONFIG_MMC_NEXELL_CH0
static int _dwmci0_init(u32 slot_id, irq_handler_t handler, void *data)
{
	struct dw_mci *host = (struct dw_mci *)data;
	int io  = CFG_SDMMC0_DETECT_IO;
	int irq = IRQ_GPIO_START + io;
	int id  = 0, ret = 0;

	printk("dw_mmc dw_mmc.%d: Using external card detect irq %3d (io %2d)\n", id, irq, io);

	ret  = request_irq(irq, handler, IRQF_TRIGGER_FALLING | IRQF_TRIGGER_RISING,
				DEV_NAME_SDHC "0", (void*)host->slot[slot_id]);
	if (0 > ret)
		pr_err("dw_mmc dw_mmc.%d: fail request interrupt %d ...\n", id, irq);
	return 0;
}

static int _dwmci0_get_cd(u32 slot_id)
{
	int io = CFG_SDMMC0_DETECT_IO;
	return nxp_soc_gpio_get_in_value(io);
}

static struct dw_mci_board _dwmci0_data = {
	.quirks			= DW_MCI_QUIRK_HIGHSPEED,
	.bus_hz			= 100 * 1000 * 1000,
	.caps			= MMC_CAP_CMD23,
	.detect_delay_ms= 200,
//	.sdr_timing		= 0x03020001,
//	.ddr_timing		= 0x03030002,
	.cd_type		= DW_MCI_CD_EXTERNAL,
	.init			= _dwmci0_init,
	.get_cd			= _dwmci0_get_cd,
	.ext_cd_init	= _dwmci_ext_cd_init,
	.ext_cd_cleanup	= _dwmci_ext_cd_cleanup,
};
#endif

#ifdef CONFIG_MMC_NEXELL_CH1
static struct dw_mci_board _dwmci1_data = {
	.quirks			= DW_MCI_QUIRK_BROKEN_CARD_DETECTION |
				  		DW_MCI_QUIRK_HIGHSPEED |
				  		DW_MMC_QUIRK_HW_RESET_PW |
				  		DW_MCI_QUIRK_NO_DETECT_EBIT,
	.bus_hz			= 100 * 1000 * 1000,
	.caps			= MMC_CAP_UHS_DDR50 |
				  		MMC_CAP_4_BIT_DATA | MMC_CAP_CMD23 |
				  		MMC_CAP_ERASE | MMC_CAP_HW_RESET,
	.caps2			= MMC_CAP2_PACKED_WR,
	.desc_sz		= 4,
	.detect_delay_ms= 200,
	.sdr_timing		= 0x03020001,
	.ddr_timing		= 0x03030002,
};
#endif

#endif /* CONFIG_MMC_DW */
/*------------------------------------------------------------------------------
 * register board platform devices
 */
void __init nxp_board_devices_register(void)
{
	printk("[Register board platform devices]\n");
#if defined(CONFIG_ARM_NXP4330_CPUFREQ)
	printk("plat: add dynamic frequency (pll.%d)\n", dfs_plat_data.pll_dev);
	platform_device_register(&dfs_plat_device);
#endif

#if defined(CONFIG_MMC_DW)
	#ifdef CONFIG_MMC_NEXELL_CH0
	nxp_dwmci_platform_device_register(&_dwmci0_data, 0, 100*1000*1000);
	#endif
	#ifdef CONFIG_MMC_NEXELL_CH1
	nxp_dwmci_platform_device_register(&_dwmci1_data, 1, 100*1000*1000);
	#endif
#endif

	nxp_fb_device_register();

#if defined(CONFIG_DM9000) || defined(CONFIG_DM9000_MODULE)
	printk("plat: add device dm9000 net\n");
	platform_device_register(&dm9000_plat_device);
#endif

#if defined(CONFIG_BACKLIGHT_PWM)
	printk("plat: add backlight pwm device\n");
	platform_device_register(&bl_plat_device);
#endif

#if defined(CONFIG_TOUCHSCREEN_FT5X0X)
	printk("plat: add touch(ftx0x) device\n");
	i2c_register_board_info(FT5X0X_I2C_BUS, &ft5x0x_i2c_bdi, 1);
#endif

#if defined(CONFIG_MTD_NAND_NEXELL)
	platform_device_register(&nand_plat_device);
#endif

#if defined(CONFIG_KEYBOARD_NEXELL_KEY) || defined(CONFIG_KEYBOARD_NEXELL_KEY_MODULE)
	printk("plat: add device keypad\n");
	platform_device_register(&key_plat_device);
#endif

#if defined(CONFIG_ANDROID_VIBRATION)
	printk("plat: add android timed gpio\n");
    platform_device_register(&android_timed_gpios);
#endif


#if defined(CONFIG_REGULATOR_NXE2000)
	printk("plat: add device nxe2000 pmic\n");
	i2c_register_board_info(NXE2000_I2C_BUS, nxe2000_i2c_pmic_devs, ARRAY_SIZE(nxe2000_i2c_pmic_devs));
#endif

#if defined(CONFIG_REGULATOR_NXE1100)
	printk("plat: add device nxe1100 pmic\n");
	i2c_register_board_info(NXE1100_I2C_BUS, nxe1100_i2c_pmic_devs, ARRAY_SIZE(nxe1100_i2c_pmic_devs));
#endif

#if defined(CONFIG_SND_SPDIF_TRANSCIEVER) || defined(CONFIG_SND_SPDIF_TRANSCIEVER_MODULE)
	printk("plat: add device spdif playback\n");
	platform_device_register(&spdif_transciever);
	platform_device_register(&spdif_trans_dai);
#endif

#if defined(CONFIG_SND_CODEC_RT5631) || defined(CONFIG_SND_CODEC_RT5631_MODULE)
	printk("plat: add device asoc-rt5631\n");
	i2c_register_board_info(RT5631_I2C_BUS, &rt5631_i2c_bdi, 1);
	platform_device_register(&rt5631_dai);
#endif

#if defined(CONFIG_V4L2_NEXELL) || defined(CONFIG_V4L2_NEXELL_MODULE)
    printk("plat: add device nxp-v4l2\n");
    platform_device_register(&nxp_v4l2_dev);
#endif

#if defined (CONFIG_INV_MPU_IIO) || defined (CONFIG_INV_MPU_IIO_MODULE)
	printk("plat: add mpu9150\n");
	i2c_register_board_info (2, inv_mpu_i2c0_boardinfo,1);
#endif

#if defined(CONFIG_USB_EHCI_NXP4330)
	printk("plat: add device usb_ehci\n");
	platform_device_register(&nxp4330_device_ehci);
#endif
#if defined(CONFIG_SPI_SPIDEV) || defined(CONFIG_SPI_SPIDEV_MODULE)
    spi_register_board_info(spi_plat_board, ARRAY_SIZE(spi_plat_board));
    printk("plat: register spidev\n");
#endif
	/* END */
	printk("\n");
}
