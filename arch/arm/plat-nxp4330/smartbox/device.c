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
#if (0)
	.max_cpufreq   	= 700000,
	.max_retention 	=  5000,
	.rest_cpufreq  	= 500000,
	.rest_retention = 20000,
#endif
};

static struct platform_device dfs_plat_device = {
	.name			= DEV_NAME_CPUFREQ,
	.dev			= {
		.platform_data	= &dfs_plat_data,
	}
};

#endif


/*------------------------------------------------------------------------------
 * Frame Buffer platform device
 */
#include "dev-fb.c"

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
#include <ehci.h>
#include <usb-phy.h>

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

    printk("%s: reserve CMA: size %d\n", __func__, CONFIG_ION_NXP_CONTIGHEAP_SIZE * SZ_1K);
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
        .state_mem  = {
            .enabled = 1,
        },
    },
    .num_consumer_supplies  = ARRAY_SIZE(nxe2000_buck1_csm),
    .consumer_supplies  = nxe2000_buck1_csm,
};

static struct regulator_init_data __initdata nxp4330_buck2_data = {
    .constraints    = {
        .name       = "VCORE_1.0V",
        .min_uV     = 1000000,
        .max_uV     = 1000000,
        .valid_ops_mask = REGULATOR_CHANGE_VOLTAGE |
                      REGULATOR_CHANGE_STATUS,
        .apply_uV   = 1,
        .always_on  = 1,
        .state_mem  = {
            .enabled = 1,
        },
    },
    .num_consumer_supplies  = ARRAY_SIZE(nxe2000_buck2_csm),
    .consumer_supplies  = nxe2000_buck2_csm,
};

static struct regulator_init_data __initdata nxp4330_buck3_data = {
    .constraints    = {
        .name       = "VSYS_3.3V",
        .min_uV     = 3300000,
        .max_uV     = 3300000,
        .valid_ops_mask = REGULATOR_CHANGE_VOLTAGE |
                      REGULATOR_CHANGE_STATUS,
        .apply_uV   = 1,
        .always_on  = 1,
        .state_mem  = {
            .enabled = 1,
        },
    },
    .num_consumer_supplies  = ARRAY_SIZE(nxe2000_buck3_csm),
    .consumer_supplies  = nxe2000_buck3_csm,
};

static struct regulator_init_data __initdata nxp4330_buck4_data = {
    .constraints    = {
        .name       = "VDDR_1.5V",
        .min_uV     = 1500000,
        .max_uV     = 1500000,
        .valid_ops_mask = REGULATOR_CHANGE_VOLTAGE |
                      REGULATOR_CHANGE_STATUS,
        .apply_uV   = 1,
        .always_on  = 1,
        .state_mem  = {
            .enabled = 1,
        },
    },
    .num_consumer_supplies  = ARRAY_SIZE(nxe2000_buck4_csm),
    .consumer_supplies  = nxe2000_buck4_csm,
};

static struct regulator_init_data __initdata nxp4330_buck5_data = {
    .constraints    = {
        .name       = "VSYS_1.5V",
        .min_uV     = 1500000,
        .max_uV     = 1500000,
        .valid_ops_mask = REGULATOR_CHANGE_VOLTAGE |
                      REGULATOR_CHANGE_STATUS,
        .apply_uV   = 1,
        .always_on  = 1,
        .state_mem  = {
            .enabled = 1,
        },
    },
    .num_consumer_supplies  = ARRAY_SIZE(nxe2000_buck5_csm),
    .consumer_supplies  = nxe2000_buck5_csm,
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

    .have_battery       = 0,
    .rdstate_periodic   = 1000,         /* milisecond */

    .buck1_set          = 0,            /* TODO */
    .buck2_set          = 0,            /* TODO */
    .buck_voltage[0]    = 1100000,      /* 1.1V */
    .buck_voltage[1]    = 1000000,      /* 1.0V */
    .buck_voltage[2]    = 3300000,      /* 3.3V */
    .buck_voltage[3]    = 1500000,      /* 1.5V */
    .buck_voltage[4]    = 1500000,      /* 1.5V */
    .batt_volt_max      = 4200000,      /* 4.2V */
    .batt_volt_min      = 3300000,      /* 3.3V */
    .batt_cap_level     = POWER_SUPPLY_CAPACITY_LEVEL_NORMAL,

    .adp_ilim_current   = 2500000,      /* 2.5A */  /* Limit of total current   */
    .usb_ilim_current   = 1500000,      /* 1.5A */
    .chg_current        = 1000000,      /* 1.0A */
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

static int camera_power_enable(bool on)
{
#ifdef CFG_IO_CAMERA_POWER_DOWN
    static bool is_first = true;
    if (on && is_first) {
        /* reset signal */
        nxp_soc_gpio_set_out_value(CFG_IO_CAMERA_POWER_DOWN, 0);
        nxp_soc_gpio_set_io_dir(CFG_IO_CAMERA_POWER_DOWN, 1);
        nxp_soc_gpio_set_io_func(CFG_IO_CAMERA_POWER_DOWN,
                nxp_soc_gpio_get_altnum(CFG_IO_CAMERA_POWER_DOWN));
        mdelay(1);
        nxp_soc_gpio_set_out_value(CFG_IO_CAMERA_POWER_DOWN, 1);
        is_first = false;
    } else {
        /* nxp_soc_gpio_set_out_value(CFG_IO_CAMERA_POWER_DOWN, on); */
    }
#endif
    return 0;
}

static int camera_set_clock(ulong clk_rate)
{
    if (clk_rate > 0)
        nxp_soc_pwm_set_frequency(1, clk_rate, 50);
    else
        nxp_soc_pwm_set_frequency(1, 0, 0);
    msleep(1);
    return 0;
}

static void vin_setup_io(int module)
{
    u_int *pad;
    int i, len;
    u_int io, fn;

    /* VIP0:0 = VCLK, VID0 ~ 7 */
    const u_int port[][2] = {
        /* VCLK, HSYNC, VSYNC */
        { PAD_GPIO_C + 14, NX_GPIO_PADFUNC_3 },
        { PAD_GPIO_C + 15, NX_GPIO_PADFUNC_3 },
        { PAD_GPIO_C + 16, NX_GPIO_PADFUNC_3 },
        /* DATA */
        { PAD_GPIO_C + 17, NX_GPIO_PADFUNC_3 }, { PAD_GPIO_C + 18, NX_GPIO_PADFUNC_3 },
        { PAD_GPIO_C + 19, NX_GPIO_PADFUNC_3 }, { PAD_GPIO_C + 20, NX_GPIO_PADFUNC_3 },
        { PAD_GPIO_C + 21, NX_GPIO_PADFUNC_3 }, { PAD_GPIO_C + 22, NX_GPIO_PADFUNC_3 },
        { PAD_GPIO_C + 23, NX_GPIO_PADFUNC_3 }, { PAD_GPIO_C + 24, NX_GPIO_PADFUNC_3 },
    };

    pad = (u_int *)port;
    len = sizeof(port)/sizeof(port[0]);

    for (i = 0; i < len; i++) {
        io = *pad++;
        fn = *pad++;
        nxp_soc_gpio_set_io_dir(io, 0);
        nxp_soc_gpio_set_io_func(io, fn);
    }
}


static struct i2c_board_info s5k5cagx_i2c_boardinfo[] = {
    {
        I2C_BOARD_INFO("S5K5CAGX", 0x78>>1),
    },
};

/* for mipi camera: s5k4ecgx */
static int s5k4ecgx_power_enable(bool on)
{
#if defined(CFG_IO_MIPI_CAMERA_POWER_ENABLE) && defined(CFG_IO_MIPI_CAMERA_RESETN)
    static bool is_mipi_first = true;
    if (on && is_mipi_first) {
        /* power enable & clk generation */
        nxp_soc_gpio_set_out_value(CFG_IO_MIPI_CAMERA_POWER_ENABLE, 1);
        nxp_soc_gpio_set_io_dir(CFG_IO_MIPI_CAMERA_POWER_ENABLE, 1);
        nxp_soc_gpio_set_io_func(CFG_IO_MIPI_CAMERA_POWER_ENABLE,
                nxp_soc_gpio_get_altnum(CFG_IO_MIPI_CAMERA_POWER_ENABLE));
        /* reset */
        nxp_soc_gpio_set_out_value(CFG_IO_MIPI_CAMERA_RESETN, 0);
        nxp_soc_gpio_set_io_dir(CFG_IO_MIPI_CAMERA_RESETN, 1);
        nxp_soc_gpio_set_io_func(CFG_IO_MIPI_CAMERA_RESETN,
                nxp_soc_gpio_get_altnum(CFG_IO_MIPI_CAMERA_RESETN));
        mdelay(1);
        nxp_soc_gpio_set_out_value(CFG_IO_MIPI_CAMERA_RESETN, 1);
        is_mipi_first = false;
    } else {
        /* nxp_soc_gpio_set_out_value(CFG_IO_MIPI_CAMERA_POWER_ENABLE, on); */
    }
#endif
    return 0;
}

#if defined(CONFIG_NXP_CAPTURE_MIPI_CSI)
static int s5k4ecgx_set_clock(ulong clk_rate)
{
    /* do nothing */
    return 0;
}

static void mipi_vin_setup_io(int module)
{
    /* do nothing */
}

static int mipi_phy_enable(bool en)
{
    return 0;
}

static struct i2c_board_info s5k4ecgx_i2c_boardinfo[] = {
    {
        I2C_BOARD_INFO("S5K4ECGX", 0x5A>>1),
    },
};

struct nxp_mipi_csi_platformdata mipi_plat_data = {
    .module     = 0,
    .clk_rate   = 27000000, // 27MHz
    .lanes      = 4,
    .alignment = 0,
    .hs_settle  = 0,
    .width      = 640,
    .height     = 480,
    .fixed_phy_vdd = false,
    .irq        = 0, /* not used */
    .base       = 0, /* not used */
    .phy_enable = mipi_phy_enable
};
#endif

static struct nxp_v4l2_i2c_board_info sensor[] = {
    {
        .board_info = &s5k5cagx_i2c_boardinfo[0],
        .i2c_adapter_id = 0,
    },
#if defined(CONFIG_NXP_CAPTURE_MIPI_CSI)
    {
        .board_info = &s5k4ecgx_i2c_boardinfo[0],
        .i2c_adapter_id = 0,
    },
#endif
};

static struct nxp_capture_platformdata capture_plat_data[] = {
    {
        .sensor = &sensor[0],
        .type = NXP_CAPTURE_INF_PARALLEL,
        .parallel = {
            /* for 656 */
            .is_mipi        = false,
            .external_sync  = false,
            .h_active       = 640,
            .h_frontporch   = 7,
            .h_syncwidth    = 1,
            /* .h_backporch    = 0, */
            .h_backporch    = 10,
            .v_active       = 480,
            .v_frontporch   = 0,
            .v_syncwidth    = 1,
            .v_backporch    = 0,
            .clock_invert   = true,
            .port           = 1,
            .data_order     = NXP_VIN_CBY0CRY1,
            .interlace      = false,
            .clk_rate       = 24000000,
            .power_enable   = camera_power_enable,
            .set_clock      = camera_set_clock,
            .setup_io       = vin_setup_io,
        },
    },
#if defined(CONFIG_NXP_CAPTURE_MIPI_CSI)
    {
        .sensor = &sensor[1],
        .type = NXP_CAPTURE_INF_CSI,
        .parallel = {
            /* for mipi */
            .is_mipi        = true,
            .external_sync  = true,
            .h_active       = 640,
            .h_frontporch   = 100,
            .h_syncwidth    = 10,
            .h_backporch    = 100,
            .v_active       = 480,
            .v_frontporch   = 1,
            .v_syncwidth    = 1,
            .v_backporch    = 1,
            .clock_invert   = false,
            .port           = NX_VIP_INPUTPORT_B,
            .data_order     = NXP_VIN_CBY0CRY1,
            .interlace      = false,
            .clk_rate       = 27000000,
            .power_enable   = s5k4ecgx_power_enable,
            .set_clock      = s5k4ecgx_set_clock,
            .setup_io       = mipi_vin_setup_io,
        },
        .csi = &mipi_plat_data,
    },
#endif
    { NULL, 0, },
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
#endif

	nxp_fb_device_register();

#if defined(CONFIG_MTD_NAND_NEXELL)
	platform_device_register(&nand_plat_device);
#endif

#if defined(CONFIG_KEYBOARD_NEXELL_KEY) || defined(CONFIG_KEYBOARD_NEXELL_KEY_MODULE)
	printk("plat: add device keypad\n");
	platform_device_register(&key_plat_device);
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
