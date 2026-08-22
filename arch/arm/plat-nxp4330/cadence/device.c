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
	.max_brightness = 255,	/* 255 is 100%, set over 100% */
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
 * USB device
 */

#if defined( CONFIG_USB_EHCI_NXP4330 )
#include <mach/ehci.h>
#include <mach/usb-phy.h>

void __init *s3c_set_platdata(void *pd, size_t pdsize, struct platform_device *pdev)
{
	void *npd;

	if (!pd) {
		/* too early to use dev_name(), may not be registered */
		printk(KERN_ERR "%s: no platform data supplied\n", pdev->name);
		return NULL;
	}

	npd = kmemdup(pd, pdsize, GFP_KERNEL);
	if (!npd) {
		printk(KERN_ERR "%s: cannot clone platform data\n", pdev->name);
		return NULL;
	}

	pdev->dev.platform_data = npd;
	return npd;
}

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

static u64 nxp4330_device_ehci_dmamask = 0xffffffffUL;

struct platform_device nxp4330_device_ehci = {
	.name			= "nxp4330-ehci",
	.id				= -1,
	.num_resources	= ARRAY_SIZE(nxp4330_ehci_resource),
	.resource		= nxp4330_ehci_resource,
	.dev			= {
		.dma_mask = &nxp4330_device_ehci_dmamask,
		.coherent_dma_mask = 0xffffffffUL
	}
};

void __init nxp4330_ehci_set_platdata(struct nxp4330_ehci_platdata *pd)
{
	struct nxp4330_ehci_platdata *npd;

	npd = s3c_set_platdata(pd, sizeof(struct nxp4330_ehci_platdata), &nxp4330_device_ehci);

	if (!npd->phy_init)
		npd->phy_init = nxp_usb_phy_init;
	if (!npd->phy_exit)
		npd->phy_exit = nxp_usb_phy_exit;
}

static struct nxp4330_ehci_platdata nxp4330_ehci_pdata;

static void __init nxp4330_ehci_init(void)
{
    struct nxp4330_ehci_platdata *pdata = &nxp4330_ehci_pdata;
    nxp4330_ehci_set_platdata(pdata);
}
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

#if defined(CONFIG_SND_CODEC_NULL) || defined(CONFIG_SND_CODEC_NULL_MODULE)
static struct platform_device snd_null = {
    .name   = "snd-null",
    .id     = -1,
};

struct nxp_snd_dai_plat_data snd_null_dai_data = {
	.i2s_ch  = 0,
    .sample_rate = 48000,
    .pcm_format  = SNDRV_PCM_FMTBIT_S16_LE | SNDRV_PCM_FMTBIT_S24_LE,
};

static struct platform_device snd_null_dai = {
    .name   = "snd-null-card",
    .id     = 0,
    .dev    = {
        .platform_data  = &snd_null_dai_data,
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
    },
};

static struct regulator_init_data __initdata nxp4330_ldo2_data = {
    .constraints    = {
        .name       = "VCAM1_1.8V",
        .min_uV     = 1800000,
        .max_uV     = 1800000,
        .apply_uV   = 1,
//        .always_on  = 1,
    },
};

static struct regulator_init_data __initdata nxp4330_ldo3_data = {
    .constraints    = {
        .name       = "VSYS1_1.8V",
        .min_uV     = 1800000,
        .max_uV     = 1800000,
        .apply_uV   = 1,
        .always_on  = 1,
    },
};

static struct regulator_init_data __initdata nxp4330_ldo4_data = {
    .constraints    = {
        .name       = "VSYS_1.8V",
        .min_uV     = 1800000,
        .max_uV     = 1800000,
        .apply_uV   = 1,
        .always_on  = 1,
    },
};

static struct regulator_init_data __initdata nxp4330_ldo5_data = {
    .constraints    = {
        .name       = "VCAM_2.8V",
        .min_uV     = 2800000,
        .max_uV     = 2800000,
        .apply_uV   = 1,
//        .always_on  = 1,
    },
};

static struct regulator_init_data __initdata nxp4330_ldo6_data = {
    .constraints    = {
        .name       = "VALIVE_3.3V",
        .min_uV     = 3300000,
        .max_uV     = 3300000,
        .apply_uV   = 1,
        .always_on  = 1,
    },
};

static struct regulator_init_data __initdata nxp4330_ldo7_data = {
    .constraints    = {
        .name       = "VVID_2.8V",
        .min_uV     = 2800000,
        .max_uV     = 2800000,
        .apply_uV   = 1,
//        .always_on  = 1,
    },
};

static struct regulator_init_data __initdata nxp4330_ldo8_data = {
    .constraints    = {
        .name       = "VWIFI_3.3V",
        .min_uV     = 3300000,
        .max_uV     = 3300000,
        .apply_uV   = 1,
//        .always_on  = 1,
    },
};

static struct regulator_init_data __initdata nxp4330_ldo9_data = {
    .constraints    = {
        .name       = "VHUB_3.3V",
        .min_uV     = 3300000,
        .max_uV     = 3300000,
        .apply_uV   = 1,
//        .always_on  = 1,
    },
};

static struct regulator_init_data __initdata nxp4330_ldo10_data = {
    .constraints    = {
        .name       = "VHSIC_1.2V",
        .min_uV     = 1200000,
        .max_uV     = 1200000,
        .apply_uV   = 1,
//        .always_on  = 1,
    },
};

static struct regulator_init_data __initdata nxp4330_ldortc1_data = {
    .constraints    = {
        .name       = "VALIVE_1.8V",
        .min_uV     = 1800000,
        .max_uV     = 1800000,
        .apply_uV   = 1,
        .always_on  = 1,
    },
};

static struct regulator_init_data __initdata nxp4330_ldortc2_data = {
    .constraints    = {
        .name       = "VALIVE_1.0V",
        .min_uV     = 1000000,
        .max_uV     = 1000000,
        .apply_uV   = 1,
        .always_on  = 1,
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

/*------------------------------------------------------------------------------
 * v4l2 platform device
 */
#if defined(CONFIG_V4L2_NEXELL) || defined(CONFIG_V4L2_NEXELL_MODULE)
#include <linux/i2c.h>
#include <linux/delay.h>
#include <mach/nxp-v4l2-platformdata.h>
#include <mach/soc.h>


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

/*------------------------------------------------------------------------------
 * DW MMC board config
 */
#if defined(CONFIG_MMC_DW)


#ifdef CONFIG_MMC_NEXELL_CH0
static struct dw_mci_board _dwmci0_data = {
	.quirks			= DW_MCI_QUIRK_BROKEN_CARD_DETECTION |
				  		DW_MCI_QUIRK_HIGHSPEED |
				  		DW_MMC_QUIRK_HW_RESET_PW |
				  		DW_MCI_QUIRK_NO_DETECT_EBIT,
	.bus_hz			= 100 * 1000 * 1000,
	.caps			= MMC_CAP_UHS_DDR50 |
				  		MMC_CAP_4_BIT_DATA | MMC_CAP_CMD23 |
				  		MMC_CAP_ERASE | MMC_CAP_HW_RESET,
	.caps2			= MMC_CAP2_PACKED_WR,
//	.desc_sz		= 4,
	.detect_delay_ms= 200,
//	.sdr_timing		= 0x03020001,
//	.ddr_timing		= 0x03030002,
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

#if defined(CONFIG_REGULATOR_NXE2000)
	printk("plat: add device nxe2000 pmic\n");
	i2c_register_board_info(NXE2000_I2C_BUS, nxe2000_i2c_pmic_devs, ARRAY_SIZE(nxe2000_i2c_pmic_devs));
#endif

#if defined(CONFIG_SND_SPDIF_TRANSCIEVER) || defined(CONFIG_SND_SPDIF_TRANSCIEVER_MODULE)
	printk("plat: add device spdif playback\n");
	platform_device_register(&spdif_transciever);
	platform_device_register(&spdif_trans_dai);
#endif

#if defined(CONFIG_SND_CODEC_NULL) || defined(CONFIG_SND_CODEC_NULL_MODULE)
	printk("plat: add device asoc-snd-null\n");
    platform_device_register(&snd_null);
	platform_device_register(&snd_null_dai);
#endif

#if defined(CONFIG_V4L2_NEXELL) || defined(CONFIG_V4L2_NEXELL_MODULE)
    printk("plat: add device nxp-v4l2\n");
    platform_device_register(&nxp_v4l2_dev);
#endif

#if defined(CONFIG_USB_EHCI_NXP4330)
	printk("plat: add device usb_ehci\n");
	nxp4330_ehci_init();
	platform_device_register(&nxp4330_device_ehci);
#endif

	/* END */
	printk("\n");
}
