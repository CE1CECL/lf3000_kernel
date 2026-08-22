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

#include <linux/module.h>
#include <linux/init.h>
#include <linux/kernel.h>
#include <linux/types.h>
#include <linux/clk.h>
#include <linux/platform_device.h>
#include <linux/amba/bus.h>
#include <linux/amba/serial.h>
#include <linux/dma-mapping.h>
#include <linux/lf3000/gpio.h>
#include <linux/gpio.h>
#include <linux/delay.h>
#include <linux/pm_runtime.h>

/* nexell soc headers */
#include <mach/platform.h>
#include <mach/platform_id.h>
#include <mach/devices.h>
#include <mach/soc.h>
#include <mali/mali_utgard.h>
#include <linux/wl12xx.h>

/*------------------------------------------------------------------------------
 * Serial platform device
 */
#if defined(CONFIG_SERIAL_AMBA_PL011)
#define	UART_HZ	CFG_UART_CLKGEN_CLOCK_HZ

#if defined(CONFIG_SERIAL_NEXELL_UART0)
static void pl011_uart0_init(void)
{
	struct clk *clk = clk_get(NULL, "nxp-uart.0");

	if (!nxp_soc_rsc_status(RESET_ID_UART0)) {
		NX_TIEOFF_Set(TIEOFFINDEX_OF_UART0_USESMC  , 0);
		NX_TIEOFF_Set(TIEOFFINDEX_OF_UART0_SMCTXENB, 0);
		NX_TIEOFF_Set(TIEOFFINDEX_OF_UART0_SMCRXENB, 0);
		nxp_soc_rsc_reset(RESET_ID_UART0);
	}
	//printk(KERN_INFO "pl011_uart0_init %d\n", __LINE__);
	clk_set_rate(clk, UART_HZ);
	clk_enable(clk);
}

static void pl011_uart0_exit(void)
{
#if	(CFG_UART_DEBUG_CH != 0)
	struct clk *clk = clk_get(NULL, "nxp-uart.0");
	clk_disable(clk);
#endif
}

static struct amba_pl011_data  pl011_data_ch0 = {
	#if defined(CONFIG_SERIAL_NEXELL_UART0_DMA)
 	.dma_filter = pl08x_filter_id,
 	.dma_rx_param = (void *) DMA_PERIPHERAL_NAME_UART0_RX,
 	.dma_tx_param = (void *) DMA_PERIPHERAL_NAME_UART0_TX,
 	#endif
	.init = pl011_uart0_init,
	.exit = pl011_uart0_exit,
};
static AMBA_AHB_DEVICE(uart0, "uart-pl011.0", 0, PHY_BASEADDR_UART0, {IRQ_PHY_UART0}, &pl011_data_ch0);
#endif

#if defined(CONFIG_SERIAL_NEXELL_UART1)
static void pl011_uart1_init(void)
{
	struct clk *clk = clk_get(NULL, "nxp-uart.1");

	if (!nxp_soc_rsc_status(RESET_ID_UART1)) {
		NX_TIEOFF_Set(TIEOFFINDEX_OF_UART_MODEM0_USESMC  , 0);
		NX_TIEOFF_Set(TIEOFFINDEX_OF_UART_MODEM0_SMCTXENB, 0);
		NX_TIEOFF_Set(TIEOFFINDEX_OF_UART_MODEM0_SMCRXENB, 0);
		nxp_soc_rsc_reset(RESET_ID_UART1);
	}
	//printk(KERN_INFO "pl011_uart1_init %d\n", __LINE__);
	clk_set_rate(clk, UART_HZ);
	clk_enable(clk);
}

static void pl011_uart1_exit(void)
{
#if	(CFG_UART_DEBUG_CH != 1)
	struct clk *clk = clk_get(NULL, "nxp-uart.1");
	clk_disable(clk);
#endif
}

static struct amba_pl011_data  pl011_data_ch1 = {
	#if defined(CONFIG_SERIAL_NEXELL_UART1_DMA)
 	.dma_filter = pl08x_filter_id,
 	.dma_rx_param = (void *) DMA_PERIPHERAL_NAME_UART1_RX,
 	.dma_tx_param = (void *) DMA_PERIPHERAL_NAME_UART1_TX,
 	#endif
	.init = pl011_uart1_init,
	.exit = pl011_uart1_exit,
};
static AMBA_AHB_DEVICE(uart1, "uart-pl011.1", 0, PHY_BASEADDR_UART1, {IRQ_PHY_UART1}, &pl011_data_ch1);
#endif

#if defined(CONFIG_SERIAL_NEXELL_UART2)
static void pl011_uart2_init(void)
{
	struct clk *clk = clk_get(NULL, "nxp-uart.2");

	NX_TIEOFF_Set(TIEOFFINDEX_OF_UART1_USESMC  , 0);
	NX_TIEOFF_Set(TIEOFFINDEX_OF_UART1_SMCTXENB, 0);
	NX_TIEOFF_Set(TIEOFFINDEX_OF_UART1_SMCRXENB, 0);
	nxp_soc_rsc_reset(RESET_ID_UART2);

	clk_set_rate(clk, UART_HZ);
	clk_enable(clk);
}

static void pl011_uart2_exit(void)
{
#if	(CFG_UART_DEBUG_CH != 2)
	struct clk *clk = clk_get(NULL, "nxp-uart.2");
	clk_disable(clk);
#endif
}

static struct amba_pl011_data  pl011_data_ch2 = {
	#if defined(CONFIG_SERIAL_NEXELL_UART2_DMA)
 	.dma_filter = pl08x_filter_id,
 	.dma_rx_param = (void *) DMA_PERIPHERAL_NAME_UART2_RX,
 	.dma_tx_param = (void *) DMA_PERIPHERAL_NAME_UART2_TX,
 	#endif
	.init = pl011_uart2_init,
	.exit = pl011_uart2_exit,
};
static AMBA_AHB_DEVICE(uart2, "uart-pl011.2", 0, PHY_BASEADDR_UART2, {IRQ_PHY_UART2}, &pl011_data_ch2);
#endif

#if defined(CONFIG_SERIAL_NEXELL_UART3)
static void pl011_uart3_init(void)
{
	struct clk *clk = clk_get(NULL, "nxp-uart.3");

	NX_TIEOFF_Set(TIEOFFINDEX_OF_UART_NODMA0_USESMC  , 0);
	NX_TIEOFF_Set(TIEOFFINDEX_OF_UART_NODMA0_SMCTXENB, 0);
	NX_TIEOFF_Set(TIEOFFINDEX_OF_UART_NODMA0_SMCRXENB, 0);
	nxp_soc_rsc_reset(RESET_ID_UART3);

	clk_set_rate(clk, UART_HZ);
	clk_enable(clk);
}

static void pl011_uart3_exit(void)
{
#if	(CFG_UART_DEBUG_CH != 3)
	struct clk *clk = clk_get(NULL, "nxp-uart.3");
	clk_disable(clk);
#endif
}

static struct amba_pl011_data  pl011_data_ch3 = {
	.init = pl011_uart3_init,
	.exit = pl011_uart3_exit,
};

static AMBA_AHB_DEVICE(uart3, "uart-pl011.3", 0, PHY_BASEADDR_UART3, {IRQ_PHY_UART3}, &pl011_data_ch3);
#endif

#if defined(CONFIG_SERIAL_NEXELL_UART4)
static void pl011_uart4_init(void)
{
	struct clk *clk = clk_get(NULL, "nxp-uart.4");

	NX_TIEOFF_Set(TIEOFFINDEX_OF_UART_NODMA1_USESMC  , 0);
	NX_TIEOFF_Set(TIEOFFINDEX_OF_UART_NODMA1_SMCTXENB, 0);
	NX_TIEOFF_Set(TIEOFFINDEX_OF_UART_NODMA1_SMCRXENB, 0);
	nxp_soc_rsc_reset(RESET_ID_UART4);

	clk_set_rate(clk, UART_HZ);
	clk_enable(clk);
}

static void pl011_uart4_exit(void)
{
#if	(CFG_UART_DEBUG_CH != 4)
	struct clk *clk = clk_get(NULL, "nxp-uart.4");
	clk_disable(clk);
#endif
}

static struct amba_pl011_data  pl011_data_ch4 = {
	.init = pl011_uart4_init,
	.exit = pl011_uart4_exit,
};

static AMBA_AHB_DEVICE(uart4, "uart-pl011.4", 0, PHY_BASEADDR_UART4, {IRQ_PHY_UART4}, &pl011_data_ch4);
#endif

#if defined(CONFIG_SERIAL_NEXELL_UART5)
static void pl011_uart5_init(void)
{
	struct clk *clk = clk_get(NULL, "nxp-uart.5");

	NX_TIEOFF_Set(TIEOFFINDEX_OF_UART_NODMA2_USESMC  , 0);
	NX_TIEOFF_Set(TIEOFFINDEX_OF_UART_NODMA2_SMCTXENB, 0);
	NX_TIEOFF_Set(TIEOFFINDEX_OF_UART_NODMA2_SMCRXENB, 0);
	nxp_soc_rsc_reset(RESET_ID_UART5);

	clk_set_rate(clk, UART_HZ);
	clk_enable(clk);
}

static void pl011_uart5_exit(void)
{
#if	(CFG_UART_DEBUG_CH != 5)
	struct clk *clk = clk_get(NULL, "nxp-uart.5");
	clk_disable(clk);
#endif
}

static struct amba_pl011_data  pl011_data_ch5 = {
	.init = pl011_uart5_init,
	.exit = pl011_uart5_exit,
};

static AMBA_AHB_DEVICE(uart5, "uart-pl011.5", 0, PHY_BASEADDR_UART5, {IRQ_PHY_UART5}, &pl011_data_ch5);
#endif

#endif /* CONFIG_SERIAL_AMBA_PL011 */


/*------------------------------------------------------------------------------
 * I2C Bus platform device
 */
#if defined(CONFIG_I2C_NEXELL)

#if	defined(CONFIG_I2C_NEXELL_PORT0)

static struct i2c_gpio_platform_data nxp_i2c_gpio_port0 = {
	.sda_pin	= CFG_IO_I2C0_SDA,
	.scl_pin	= CFG_IO_I2C0_SCL,
	.udelay		= 5,				/* Gpio_mode CLK Rate = 1/( udelay*2) * 1000000 */
	.timeout	= 10,
};

#if  defined(CONFIG_I2C_NEXELL_PORT0_GPIO_MODE)

static struct platform_device i2c_device_ch0 = {
	.name	= "i2c-gpio",
	.id		= 0,
	.dev    = {
		.platform_data	= &nxp_i2c_gpio_port0,
	},
};
#else
static struct nxp_i2c_plat_data i2c_data_ch0 = {
	.port		= 0,
	.irq		= IRQ_PHY_I2C0,
	.gpio 		= &nxp_i2c_gpio_port0,
	.base_addr	= PHY_BASEADDR_I2C0,
	.rate 		= CFG_I2C0_CLK,
};

static struct platform_device i2c_device_ch0 = {
	.name	= DEV_NAME_I2C,
	.id		= 0,
	.dev    = {
		.platform_data	= &i2c_data_ch0
	},
};
#endif /* CONFIG_I2C_NEXELL_PORT0 */


#endif

#if	defined(CONFIG_I2C_NEXELL_PORT1)
static struct i2c_gpio_platform_data nxp_i2c_gpio_port1 = {
	.sda_pin	= CFG_IO_I2C1_SDA,
	.scl_pin	= CFG_IO_I2C1_SCL,
	.udelay		= 5,				/* Gpio_mode CLK Rate = 1/( udelay*2) * 1000000 */
	.timeout	= 10,
};


#if  defined(CONFIG_I2C_NEXELL_PORT1_GPIO_MODE)
static struct platform_device i2c_device_ch1 = {
	.name	= "i2c-gpio",
	.id		= 1,
	.dev    = {
		.platform_data	= &nxp_i2c_gpio_port1,
	},
};

#else
static struct nxp_i2c_plat_data i2c_data_ch1 = {
	.port		= 1,
	.irq		= IRQ_PHY_I2C1,
	.gpio 		= &nxp_i2c_gpio_port1,
	.base_addr	= PHY_BASEADDR_I2C1,
	.rate 		= CFG_I2C1_CLK,
};

static struct platform_device i2c_device_ch1 = {
	.name	= DEV_NAME_I2C,
	.id		= 1,
	.dev    = {
		.platform_data	= &i2c_data_ch1
	},
};
#endif
#endif

#if	defined(CONFIG_I2C_NEXELL_PORT2)
static struct i2c_gpio_platform_data nxp_i2c_gpio_port2 = {
	.sda_pin	= CFG_IO_I2C2_SDA,
	.scl_pin	= CFG_IO_I2C2_SCL,
	.udelay		= 5,				/* Gpio_mode CLK Rate = 1/( udelay*2) * 1000000 */
	.timeout	= 10,
};


#if  defined(CONFIG_I2C_NEXELL_PORT2_GPIO_MODE)
static struct platform_device i2c_device_ch2 = {
	.name	= "i2c-gpio",
	.id		= 2,
	.dev    = {
		.platform_data	= &nxp_i2c_gpio_port2,
	},
};

#else
static struct nxp_i2c_plat_data i2c_data_ch2 = {
	.port		= 2,
	.irq		= IRQ_PHY_I2C2,
	.gpio 		= &nxp_i2c_gpio_port2,
	.base_addr	= PHY_BASEADDR_I2C2,
	.rate 		= CFG_I2C2_CLK,
};

static struct platform_device i2c_device_ch2 = {
	.name	= DEV_NAME_I2C,
	.id		= 2,
	.dev    = {
		.platform_data	= &i2c_data_ch2
	},
};
#endif
#endif

static struct platform_device *i2c_devices[] = {
	#if	defined(CONFIG_I2C_NEXELL_PORT0)
	&i2c_device_ch0,
	#endif
	#if	defined(CONFIG_I2C_NEXELL_PORT1)
	&i2c_device_ch1,
	#endif
	#if	defined(CONFIG_I2C_NEXELL_PORT2)
	&i2c_device_ch2,
	#endif
};
#endif /* CONFIG_I2C_NEXELL */

/*------------------------------------------------------------------------------
   * RTC (Real Time Clock) platform device
    */
#if defined(CONFIG_RTC_DRV_NXP)
static struct platform_device rtc_plat_device = {
	.name   = DEV_NAME_RTC,
	.id     = 0,
};
#endif  /* CONFIG_RTC_DRV_NEXELL */

/*------------------------------------------------------------------------------
 * PWM platform device
 */
#if defined(CONFIG_HAVE_PWM)

#if defined(CONFIG_HAVE_PWM_CH0)
static struct platform_device pwm_device_ch0 = {
	.name	= DEV_NAME_PWM,
	.id		= 0,
};
#endif
#if defined(CONFIG_HAVE_PWM_CH1)
static struct platform_device pwm_device_ch1 = {
	.name	= DEV_NAME_PWM,
	.id		= 1,
};
#endif
#if defined(CONFIG_HAVE_PWM_CH2)
static struct platform_device pwm_device_ch2 = {
	.name	= DEV_NAME_PWM,
	.id		= 2,
};
#endif
#if defined(CONFIG_HAVE_PWM_CH3)
static struct platform_device pwm_device_ch3 = {
	.name	= DEV_NAME_PWM,
	.id		= 3,
};
#endif

static struct platform_device *pwm_devices[] = {
	#if	defined(CONFIG_HAVE_PWM_CH0)
	&pwm_device_ch0,
	#endif
	#if	defined(CONFIG_HAVE_PWM_CH1)
	&pwm_device_ch1,
	#endif
	#if	defined(CONFIG_HAVE_PWM_CH2)
	&pwm_device_ch2,
	#endif
	#if	defined(CONFIG_HAVE_PWM_CH3)
	&pwm_device_ch3,
	#endif
};
#endif	/* CONFIG_HAVE_PWM */


/*------------------------------------------------------------------------------
 * ADC driver to expose ADC channels
 */

static struct resource adc_resources[] = {
        [0] = {
                .start  = PHY_BASEADDR_ADC,
                .end    = PHY_BASEADDR_ADC + 0x00000040,
                .flags  = IORESOURCE_MEM,
        },
        [1] = {
                .start  = IRQ_PHY_ADC,
                .end    = IRQ_PHY_ADC,
                .flags  = IORESOURCE_IRQ,
        },
};

static struct platform_device adc_plat_device = {
        .name           = ADC_DEV_NAME,
        .id             = 0,
        .num_resources  = ARRAY_SIZE(adc_resources),
        .resource       = adc_resources,
};

/*------------------------------------------------------------------------------
 * GPIO device
 */
#if defined(CONFIG_GPIO_NEXELL)
#if	defined(CONFIG_GPIO_NEXELL_GROUP_A)
static struct resource gpio_resource_A = {
		.start  	=  0,
		.end   	 	= 32,
		.flags  	= IORESOURCE_IO,
};
static struct platform_device gpio_device_A = {
	.name			= DEV_NAME_GPIO,
	.id				= 0,
	.resource		= &gpio_resource_A,
	.num_resources  = 1,
};
#endif
#if	defined(CONFIG_GPIO_NEXELL_GROUP_B)
static struct resource gpio_resource_B = {
		.start  	=  0,
		.end   	 	= 32,
		.flags  	= IORESOURCE_IO,
};
static struct platform_device gpio_device_B = {
	.name			= DEV_NAME_GPIO,
	.id				= 1,
	.resource		= &gpio_resource_B,
	.num_resources  = 1,
};
#endif
#if	defined(CONFIG_GPIO_NEXELL_GROUP_C)
static struct resource gpio_resource_C = {
		.start  	=  0,
		.end   	 	= 32,
		.flags  	= IORESOURCE_IO,
};
static struct platform_device gpio_device_C  = {
	.name			= DEV_NAME_GPIO,
	.id				= 2,
	.resource		= &gpio_resource_C,
	.num_resources  = 1,
};
#endif
#if	defined(CONFIG_GPIO_NEXELL_GROUP_D)
static struct resource gpio_resource_D = {
		.start  	=  0,
		.end   	 	= 32,
		.flags  	= IORESOURCE_IO,
};
static struct platform_device gpio_device_D  = {
	.name			= DEV_NAME_GPIO,
	.id				= 3,
	.resource		= &gpio_resource_D,
	.num_resources  = 1,
};
#endif
#if	defined(CONFIG_GPIO_NEXELL_GROUP_E)
static struct resource gpio_resource_E = {
		.start  	=  0,
		.end   	 	= 32,
		.flags  	= IORESOURCE_IO,
};
static struct platform_device gpio_device_E  = {
	.name			= DEV_NAME_GPIO,
	.id				= 4,
	.resource		= &gpio_resource_E,
	.num_resources  = 1,
};
#endif
#if	defined(CONFIG_GPIO_NEXELL_GROUP_ALV)
static struct resource gpio_resource_ALV = {
		.start  	=  0,
		.end   	 	=  8,
		.flags  	= IORESOURCE_IO,
};
static struct platform_device gpio_device_ALV  = {
	.name			= DEV_NAME_GPIO,
	.id				= 5,
	.resource		= &gpio_resource_ALV,
	.num_resources  = 1,
};
#endif

static struct platform_device *gpio_devices[] = {
	#if	defined(CONFIG_GPIO_NEXELL_GROUP_A)
	&gpio_device_A,
	#endif
	#if	defined(CONFIG_GPIO_NEXELL_GROUP_B)
	&gpio_device_B,
	#endif
	#if	defined(CONFIG_GPIO_NEXELL_GROUP_C)
	&gpio_device_C,
	#endif
	#if	defined(CONFIG_GPIO_NEXELL_GROUP_D)
	&gpio_device_D,
	#endif
	#if	defined(CONFIG_GPIO_NEXELL_GROUP_E)
	&gpio_device_E,
	#endif
	#if	defined(CONFIG_GPIO_NEXELL_GROUP_ALV)
	&gpio_device_ALV,
	#endif
};
#endif	/* CONFIG_GPIO_NEXELL */

/*------------------------------------------------------------------------------
 * Graphic OpenGL|ES platform device(mali400)
 */
#define MALI_MEM_SIZE_DEFAULT CFG_MEM_PHY_SYSTEM_SIZE
#if defined( CFG_MEM_PHY_DMAZONE_SIZE )
#define MALI_MEM_SIZE 	(MALI_MEM_SIZE_DEFAULT + CFG_MEM_PHY_DMAZONE_SIZE)
#endif
#if defined( CONFIG_ION_NXP_CONTIGHEAP_SIZE )
#ifdef  MALI_MEM_SIZE
#undef  MALI_MEM_SIZE
#endif
#define MALI_MEM_SIZE 	(MALI_MEM_SIZE_DEFAULT - (CONFIG_ION_NXP_CONTIGHEAP_SIZE * 1024))
#endif

#define NXP4330_DTK_3D_IRQ     			(40)
static struct mali_gpu_device_data mali_gpu_data =
{
	.shared_mem_size = MALI_MEM_SIZE,
#if 0
	.dedicated_mem_start = 0x5B400000, /* Reserved for graphic */
	.dedicated_mem_size = 0x04C00000, /* 76MB */
#endif

	/* DVFS */
#if 0
	.utilization_interval = 1000, /* ms */
	.utilization_handler =
#endif
};

static struct resource mali_gpu_resources[] =
{
	MALI_GPU_RESOURCES_MALI400_MP2_PMU(PHY_BASEADDR_MALI400, NXP4330_DTK_3D_IRQ,
			NXP4330_DTK_3D_IRQ, NXP4330_DTK_3D_IRQ, NXP4330_DTK_3D_IRQ,
			NXP4330_DTK_3D_IRQ, NXP4330_DTK_3D_IRQ)
};

static struct platform_device mali_gpu_device =
{
	.name = MALI_GPU_NAME_UTGARD,
	.id = 0,
	.num_resources = ARRAY_SIZE(mali_gpu_resources),
	.resource = mali_gpu_resources,
	.dev.platform_data = &mali_gpu_data,
};

/*------------------------------------------------------------------------------
 * Alsa sound platform device (I2S-PCM)
 */
#if defined(CONFIG_SND_NEXELL_I2S) || defined(CONFIG_SND_NEXELL_I2S_MODULE)

#if defined (CONFIG_SND_NEXELL_I2S_CH0)
static struct nxp_i2s_plat_data i2s_data_ch0 = {
	.master_mode		= CFG_AUDIO_I2S0_MASTER_MODE,
	.trans_mode			= CFG_AUDIO_I2S0_TRANS_MODE,
#if defined(CONFIG_PLAT_NXP4330_R3K) || defined(CONFIG_PLAT_NXP4330_CABO) || defined(CONFIG_PLAT_NXP4330_XANADU) ||  defined(CONFIG_PLAT_NXP4330_LOWCOST)
	.frame_bit			= 32, //CFG_AUDIO_I2S0_FRAME_BIT,
	.sample_rate		= 32000, //CFG_AUDIO_I2S0_SAMPLE_RATE,
#else
	.frame_bit			= CFG_AUDIO_I2S0_FRAME_BIT,
	.sample_rate		= CFG_AUDIO_I2S0_SAMPLE_RATE,
#endif
	.pre_supply_mclk 	= CFG_AUDIO_I2S0_PRE_SUPPLY_MCLK,
	/* DMA */
	.dma_filter			= pl08x_filter_id,
	.dma_play_ch		= DMA_PERIPHERAL_NAME_I2S0_TX,
	.dma_capt_ch		= DMA_PERIPHERAL_NAME_I2S0_RX,
};

static struct platform_device i2s_device_ch0 = {
	.name	= DEV_NAME_I2S,
	.id		= 0,	/* channel */
	.dev    = {
		.platform_data	= &i2s_data_ch0
	},
};
#endif
#if defined (CONFIG_SND_NEXELL_I2S_CH1)
static struct nxp_i2s_plat_data i2s_data_ch1 = {
	.master_mode		= CFG_AUDIO_I2S1_MASTER_MODE,
	.trans_mode			= CFG_AUDIO_I2S1_TRANS_MODE,
	.frame_bit			= CFG_AUDIO_I2S1_FRAME_BIT,
	.sample_rate		= CFG_AUDIO_I2S1_SAMPLE_RATE,
	.pre_supply_mclk 	= CFG_AUDIO_I2S1_PRE_SUPPLY_MCLK,
	/* DMA */
	.dma_filter			= pl08x_filter_id,
	.dma_play_ch		= DMA_PERIPHERAL_NAME_I2S1_TX,
	.dma_capt_ch		= DMA_PERIPHERAL_NAME_I2S1_RX,
};

static struct platform_device i2s_device_ch1 = {
	.name	= DEV_NAME_I2S,
	.id		= 1,	/* channel */
	.dev    = {
		.platform_data	= &i2s_data_ch1
	},
};
#endif
#if defined (CONFIG_SND_NEXELL_I2S_CH2)
static struct nxp_i2s_plat_data i2s_data_ch2 = {
	.master_mode		= CFG_AUDIO_I2S2_MASTER_MODE,
	.trans_mode			= CFG_AUDIO_I2S2_TRANS_MODE,
	.frame_bit			= CFG_AUDIO_I2S2_FRAME_BIT,
	.sample_rate		= CFG_AUDIO_I2S2_SAMPLE_RATE,
	.pre_supply_mclk 	= CFG_AUDIO_I2S2_PRE_SUPPLY_MCLK,
	/* DMA */
	.dma_filter			= pl08x_filter_id,
	.dma_play_ch		= DMA_PERIPHERAL_NAME_I2S1_TX,
	.dma_capt_ch		= DMA_PERIPHERAL_NAME_I2S1_RX,
};

static struct platform_device i2s_device_ch2 = {
	.name	= DEV_NAME_I2S,
	.id		= 2,	/* channel */
	.dev    = {
		.platform_data	= &i2s_data_ch2
	},
};
#endif

static struct platform_device *i2s_devices[] __initdata = {
	#if defined (CONFIG_SND_NEXELL_I2S_CH0)
	&i2s_device_ch0,
	#endif
	#if defined (CONFIG_SND_NEXELL_I2S_CH1)
	&i2s_device_ch1,
	#endif
	#if defined (CONFIG_SND_NEXELL_I2S_CH2)
	&i2s_device_ch2,
	#endif
};
#endif /* CONFIG_SND_NEXELL_I2S || CONFIG_SND_NEXELL_I2S_MODULE */

/*------------------------------------------------------------------------------
 * Alsa sound platform device (SPDIF)
 */
#if defined(CONFIG_SND_NEXELL_SPDIF_TX) || defined(CONFIG_SND_NEXELL_SPDIF_TX_MODULE)
static struct nxp_spdif_plat_data spdif_data_tx = {
	.sample_rate	= CFG_AUDIO_SPDIF_TX_SAMPLE_RATE,
	.hdmi_out		= CFG_AUDIO_SPDIF_TX_HDMI_OUT,
	.dma_filter		= pl08x_filter_id,
	.dma_ch			= DMA_PERIPHERAL_NAME_SPDIFTX,
};

static struct platform_device spdif_device_tx = {
	.name	= DEV_NAME_SPDIF_TX,
	.id		= -1,
	.dev    = {
		.platform_data	= &spdif_data_tx
	},
};
#endif	/* CONFIG_SND_NEXELL_SPDIF_TX || CONFIG_SND_NEXELL_SPDIF_TX_MODULE */

#if defined(CONFIG_SND_NEXELL_SPDIF_RX) || defined(CONFIG_SND_NEXELL_SPDIF_RX_MODULE)
static struct nxp_spdif_plat_data spdif_data_rx = {
	.sample_rate	= CFG_AUDIO_SPDIF_RX_SAMPLE_RATE,
	.dma_filter		= pl08x_filter_id,
	.dma_ch			= DMA_PERIPHERAL_NAME_SPDIFRX,
};

static struct platform_device spdif_device_rx = {
	.name	= DEV_NAME_SPDIF_RX,
	.id		= -1,
	.dev    = {
		.platform_data	= &spdif_data_rx
	},
};
#endif	/* CONFIG_SND_NEXELL_SPDIF_RX || CONFIG_SND_NEXELL_SPDIF_RX_MODULE */

/*------------------------------------------------------------------------------
 * DW MMC (Synopsys DesignWare Memory Card Interface)
 */
#if defined(CONFIG_MMC_DW)

#define DWMCI_CLKSEL						0x114
#define DWMCI_DDR200_RDDQS_EN				0x110
#define DWMCI_DDR200_ASYNC_FIFO_CTRL		0x114
#define DWMCI_DDR200_DLINE_CTRL				0x118
/* DDR200 RDDQS Enable*/
#define DWMCI_TXDT_CRC_TIMER_FASTLIMIT(x)	(((x) & 0xFF) << 16)
#define DWMCI_TXDT_CRC_TIMER_INITVAL(x)		(((x) & 0xFF) << 8)
#define DWMCI_BUSY_CHK_CLK_STOP_EN			BIT(2)
#define DWMCI_RXDATA_START_BIT_SEL			BIT(1)
#define DWMCI_RDDQS_EN						BIT(0)
#define DWMCI_DDR200_RDDQS_EN_DEF			DWMCI_TXDT_CRC_TIMER_FASTLIMIT(0x12) | \
											DWMCI_TXDT_CRC_TIMER_INITVAL(0x15)
#define DWMCI_DDR200_DLINE_CTRL_DEF			DWMCI_FIFO_CLK_DELAY_CTRL(0x2) | \
											DWMCI_RD_DQS_DELAY_CTRL(0x40)

/* DDR200 Async FIFO Control */
#define DWMCI_ASYNC_FIFO_RESET				BIT(0)

/* DDR200 DLINE Control */
#define DWMCI_FIFO_CLK_DELAY_CTRL(x)		(((x) & 0x3) << 16)
#define DWMCI_RD_DQS_DELAY_CTRL(x)			((x) & 0x3FF)

static u64 _dwmci_dmamask = DMA_BIT_MASK(32);

static int _dwmci_get_ocr(u32 slot_id)
{
	u32 ocr_avail = MMC_VDD_165_195 | MMC_VDD_32_33 | MMC_VDD_33_34;
	return ocr_avail;
}

static int _dwmci_get_bus_wd(u32 slot_id)
{
	return 4;
}

static int _dwmci_init(u32 slot_id, irq_handler_t handler, void *data)
{
	return 0;
}

static int _dwmci_get_ro(u32 slot_id)
{
	return 0;
}

static void _dwmci_set_io_timing(void *data, unsigned char timing)
{
	struct dw_mci *host = (struct dw_mci *)data;
	struct dw_mci_board *pdata = host->pdata;
	u32 clksel, rddqs, dline;

	if (timing > MMC_TIMING_MMC_HS200) {
		pr_err("%s: timing(%d): not suppored\n", __func__, timing);
		return;
	}

	rddqs = DWMCI_DDR200_RDDQS_EN_DEF;
	dline = DWMCI_DDR200_DLINE_CTRL_DEF;
#if 0	/* Since we later assign 0x01010000 to clksel, let's skip this stuff */
	clksel = __raw_readl(host->regs + DWMCI_CLKSEL);

	if (timing == MMC_TIMING_MMC_HS200 || timing == MMC_TIMING_UHS_SDR104) {
		clksel = (clksel & 0xfff8ffff) | (pdata->clk_drv << 16);
	} else if (timing == MMC_TIMING_UHS_SDR50) {
		clksel = (clksel & 0xfff8ffff) | (pdata->clk_drv << 16);
	} else if (timing == MMC_TIMING_UHS_DDR50) {
		clksel = pdata->ddr_timing;
	} else {
		clksel = pdata->sdr_timing;
	}
#endif

#if 0	/* 9jan14   Experiment to adjust the phase shift for mmc2 (eMMC) */
	/* Disabled for now because there were many errors when transferring
	 * files from SD to eMMC.
	 */
	if (MMC_CAP_UHS_DDR50 & pdata->caps) {
#if 1	/* 27jan14 */
		clksel = 0x01010001;	/* saw all 4 partitions; errors*/
					/* when trying to untar rootfs */
					/* iospeed 33 */
		//clksel = 0x01000000;		/* saw all 4 partitions; lots */
						/* errors while mkfs'ing rootfs*/
		//(closer) clksel = 0x00010000; /* saw all 4 partitions; errors*/
						/* when untarring to rootfs and
						 * bulk */
		//(closer) clksel = 0x01010000; /* saw all 4 partitions; errors*/
						/* when trying to mkfs on bulk*/
						/* iospeed 33 */
		//(closer) clksel = 0x01010001; /* saw all 4 partitions; errors*/
						/* when trying to untar rootfs */
						/* iospeed 33 */
		//(closer) clksel = 0x01010002; /* saw all 4 partitions; errors*/
						/* when trying to mkfs on bulk*/
						/* iospeed 33 */
		//(failed) clksel = 0x02010000; /* not a complete failure */
		//(failed) clksel = 0x02010001; /* not a complete failure */
		//(failed) clksel = 0x02010002; /* not a complete failure */
		//(failed) clksel = 0x02020000; /* not a complete failure */
		//(failed) clksel = 0x02020001; /* not a complete failure */
		//(failed) clksel = 0x02020002; /* not a complete failure */
		//(failed) clksel = 0x03020000;
		//(failed) clksel = 0x03020001;
		//(failed) clksel = 0x03020002;
		//(failed) clksel = 0x03030000;
		//(failed) clksel = 0x03030001;
		//(failed) clksel = 0x03030002;	/* this is the value from Nexell */
#else	/* earlier version */
		clksel = (1 << 16);
#endif	/* 27jan14 */
		printk(KERN_INFO "%s(): clksel = 0x%x\n",
			__func__, clksel);
	}
	else {
		clksel = ((1 << 16) | (1 << 24));
	}
#else
	clksel = ((1 << 16) | (1 << 24));
#endif	/* 9jan14 */

	__raw_writel(clksel, host->regs + DWMCI_CLKSEL);
	__raw_writel(rddqs, host->regs + DWMCI_DDR200_RDDQS_EN);
	__raw_writel(dline, host->regs + DWMCI_DDR200_DLINE_CTRL);

	//printk(KERN_INFO "CLKSEL = 0x%08x\n",
	//		__raw_readl(host->regs + DWMCI_CLKSEL));
}

static int _dwmci_clock_init(int id, unsigned long rate)
{
	char name[20];
	struct clk *clk;

	sprintf(name, "%s.%d", DEV_NAME_SDHC, id);
	clk = clk_get(NULL, name);
	clk_set_rate(clk, rate);
	clk_enable(clk);
	return 0;
}

#define NXP_DWMCI_RESOURCE(_ch)		\
static struct resource _dwmci##_ch##_resource[] = {		\
	[0] = DEFINE_RES_MEM(PHY_BASEADDR_SDMMC##_ch, SZ_4K),	\
	[1] = DEFINE_RES_IRQ(IRQ_PHY_SDMMC##_ch),				\
}

#define NXP_DWMCI_PLATDATA(_ch)		\
static struct dw_mci_board _dwmci##_ch##_data = {		\
	.num_slots		= 1,									\
	.bus_hz			= 100 * 1000 * 1000,					\
	.max_bus_hz		= 200 * 1000 * 1000,					\
	.fifo_depth		= 0x20,									\
	.detect_delay_ms= 200,									\
	.init			= _dwmci_init,							\
	.get_bus_wd		= _dwmci_get_bus_wd,					\
	.get_ro			= _dwmci_get_ro,						\
	.set_io_timing	= _dwmci_set_io_timing,					\
	.get_ocr		= _dwmci_get_ocr	,					\
	.cd_type		= DW_MCI_CD_PERMANENT,					\
}

#define NXP_DWMCI_PLATDEVICE(_ch)	\
static struct platform_device _dwmci_dev_ch##_ch = {		\
	.name			= "dw_mmc",								\
	.id				= _ch,									\
	.num_resources	= ARRAY_SIZE(_dwmci##_ch##_resource),	\
	.resource		= _dwmci##_ch##_resource,				\
	.dev			= {										\
	.dma_mask			= &_dwmci_dmamask,					\
	.coherent_dma_mask	= DMA_BIT_MASK(32),					\
	.platform_data		= &_dwmci##_ch##_data,				\
	},														\
}

#define	NXP_DWMCI_ITEM_CHECK(src, dst, item)	\
	if(src->item && src->item != dst->item)		\
		dst->item = src->item;

#ifdef CONFIG_MMC_NEXELL_CH0
NXP_DWMCI_RESOURCE(0);
NXP_DWMCI_PLATDATA(0);
NXP_DWMCI_PLATDEVICE(0);
#endif

#ifdef CONFIG_MMC_NEXELL_CH1
NXP_DWMCI_RESOURCE(1);
NXP_DWMCI_PLATDATA(1);
NXP_DWMCI_PLATDEVICE(1);
#endif

#ifdef CONFIG_MMC_NEXELL_CH2
NXP_DWMCI_RESOURCE(2);
NXP_DWMCI_PLATDATA(2);
NXP_DWMCI_PLATDEVICE(2);
#endif

static struct platform_device *dwmci_devices[] = {
#if defined(CONFIG_MMC_NEXELL_CH0)
	&_dwmci_dev_ch0,
#endif
#if defined(CONFIG_MMC_NEXELL_CH1)
	&_dwmci_dev_ch1,
#endif
#if defined(CONFIG_MMC_NEXELL_CH2)
	&_dwmci_dev_ch2,
#endif
};

void __init nxp_dwmci_platform_device_register(struct dw_mci_board *mci,
					int id, unsigned long rate)
{
	struct dw_mci_board *dst = NULL;
	int rsc_id = RESET_ID_SDMMC0 + id;

	if (id < ARRAY_SIZE(dwmci_devices)) {
		dst = dwmci_devices[id]->dev.platform_data;
	} else {
		pr_err("%s: slot %d is not supported\n", __func__, id);
		return;
	}

	NXP_DWMCI_ITEM_CHECK(mci, dst, num_slots);
	NXP_DWMCI_ITEM_CHECK(mci, dst, quirks);
	NXP_DWMCI_ITEM_CHECK(mci, dst, bus_hz);
	NXP_DWMCI_ITEM_CHECK(mci, dst, max_bus_hz);
	NXP_DWMCI_ITEM_CHECK(mci, dst, caps);
	NXP_DWMCI_ITEM_CHECK(mci, dst, caps2);
	NXP_DWMCI_ITEM_CHECK(mci, dst, pm_caps);
	NXP_DWMCI_ITEM_CHECK(mci, dst, fifo_depth);
	NXP_DWMCI_ITEM_CHECK(mci, dst, detect_delay_ms);
	NXP_DWMCI_ITEM_CHECK(mci, dst, hclk_name);
	NXP_DWMCI_ITEM_CHECK(mci, dst, cclk_name);
	NXP_DWMCI_ITEM_CHECK(mci, dst, init);
	NXP_DWMCI_ITEM_CHECK(mci, dst, get_ro);
	NXP_DWMCI_ITEM_CHECK(mci, dst, get_cd);
	NXP_DWMCI_ITEM_CHECK(mci, dst, get_ocr);
	NXP_DWMCI_ITEM_CHECK(mci, dst, get_bus_wd);
	NXP_DWMCI_ITEM_CHECK(mci, dst, cfg_gpio);
	NXP_DWMCI_ITEM_CHECK(mci, dst, hw_reset);
	NXP_DWMCI_ITEM_CHECK(mci, dst, set_io_timing);
	NXP_DWMCI_ITEM_CHECK(mci, dst, sdr_timing);
	NXP_DWMCI_ITEM_CHECK(mci, dst, ddr_timing);
	NXP_DWMCI_ITEM_CHECK(mci, dst, clk_drv);
	NXP_DWMCI_ITEM_CHECK(mci, dst, clk_smpl);
	NXP_DWMCI_ITEM_CHECK(mci, dst, tuned);
	NXP_DWMCI_ITEM_CHECK(mci, dst, cd_type);
	NXP_DWMCI_ITEM_CHECK(mci, dst, desc_sz);
	NXP_DWMCI_ITEM_CHECK(mci, dst, ext_cd_init);
	NXP_DWMCI_ITEM_CHECK(mci, dst, ext_cd_cleanup);
	NXP_DWMCI_ITEM_CHECK(mci, dst, setpower);
	NXP_DWMCI_ITEM_CHECK(mci, dst, exit);
	NXP_DWMCI_ITEM_CHECK(mci, dst, select_slot);
	NXP_DWMCI_ITEM_CHECK(mci, dst, dma_ops);
	NXP_DWMCI_ITEM_CHECK(mci, dst, data);
	NXP_DWMCI_ITEM_CHECK(mci, dst, blk_settings);

	nxp_soc_rsc_reset(rsc_id);
	_dwmci_clock_init(id, rate);

	printk("mach: add device sdmmc [%d]\n", id);
    platform_device_register(dwmci_devices[id]);
}
#endif /* CONFIG_MMC_DW */

/*------------------------------------------------------------------------------
 * BCM43143 WIFI module
 */

#if defined(CONFIG_BCM43143)

//FIXME (FMirani) : These routines are called when the WIFI driver loads.
//                  We are not really doing anything here since tha WIFI module does
//                  not respond if the WIFI_RESET pin is toggled dynamically. It
//                  is set to high when the GPIOs are initialized and we are not turning
//                  it low any time.


void bcm_wlan_power_on(int param)
{
	printk("\n BCM43143 [dhd.ko] - bcm_wlan_power_on");
//	gpio_set_value(WIFI_RESET, 0);
//	mdelay(10);
//	gpio_set_value(WIFI_RESET, 1);
//	mdelay(1000);
}

EXPORT_SYMBOL(bcm_wlan_power_on);

void bcm_wlan_power_off(int param)
{
	printk("\n BCM43143 [dhd.ko] - bcm_wlan_power_off");
	//mdelay(10);
	//gpio_set_value(WIFI_RESET, 0);
}

EXPORT_SYMBOL(bcm_wlan_power_off);

#endif	//BCM43143

/*------------------------------------------------------------------------------
 * TI WIFI module
 */
#if defined(CONFIG_WL12XX_PLATFORM_DATA)

struct wl12xx_platform_data nxp4430_wlan_data;
#if 1
static void wl_set_power(u32 slot_id, u32 on)
{
	if (on) {
		printk("WIFI_RESET: ON\n");
		gpio_set_value(WIFI_RESET, 1);
		mdelay(70);
	}
	else
	{
		printk("WIFI_RESET: OFF\n");
		gpio_set_value(WIFI_RESET, 0);
	}
}
#endif

static void wl12xx_init()
{
	struct device *dev;
	struct omap_mmc_platform_data *pdata;

	nxp4430_wlan_data.irq = gpio_to_irq(WIFI_HOST_WAKE);
	nxp4430_wlan_data.platform_quirks = WL12XX_PLATFORM_QUIRK_EDGE_IRQ;
	if(wl12xx_set_platform_data(&nxp4430_wlan_data))
		pr_err("error setting wl12xx data\n");

	_dwmci2_data.setpower = wl_set_power;


	return;
}

#endif
/*------------------------------------------------------------------------------
 * PL022 SSP/SPI
 */
#if defined(CONFIG_SPI_PL022) || defined(CONFIG_SPI_PL022_MODULE)
#include <linux/amba/pl022.h>


#if defined(CONFIG_SPI_PL022_PORT0)

static struct pl022_ssp_controller pl022_ssp0_platform_data = {
    .bus_id         = 0,
    .num_chipselect = 2,
#if defined(CONFIG_USE_DMA_PORT0) && defined(CONFIG_AMBA_PL08X)
    .enable_dma     = 1,
    .dma_filter     = pl08x_filter_id,
    .dma_rx_param   = (void *)DMA_PERIPHERAL_NAME_SSP0_RX,
    .dma_tx_param   = (void *)DMA_PERIPHERAL_NAME_SSP0_TX,
    .autosuspend_delay 	= 10,
    .rt = 0,
#else
    .enable_dma     = 0,
#endif
};

static struct amba_device spi0_device = {
    .dev = {
	        .init_name          = "ssp-pl022.0",
	        .coherent_dma_mask  = 0x000fffffUL,
	        .platform_data      = &pl022_ssp0_platform_data,
	        .id = 0,
		   },
	.res = {
	        .start = PHY_BASEADDR_SSP0 ,
	        .end   = PHY_BASEADDR_SSP0  + SZ_1K - 1,
	        .flags = IORESOURCE_MEM,
		    },

	.irq = {IRQ_PHY_SSP0 },
	.periphid = 0x00041022,                     /* ST-Ericsson modified id */
};
#endif


#if defined(CONFIG_SPI_PL022_PORT1)

static struct pl022_ssp_controller pl022_ssp1_platform_data = {
    .bus_id         = 1,
    .num_chipselect = 2,
#if defined(CONFIG_USE_DMA_PORT1) && defined(CONFIG_AMBA_PL08X)
    .enable_dma     = 1,
    .dma_filter     = pl08x_filter_id,
    .dma_rx_param   = DMA_PERIPHERAL_NAME_SSP1_RX,
    .dma_tx_param   = DMA_PERIPHERAL_NAME_SSP1_TX,
#else
    .enable_dma     = 0,
#endif
};

static struct amba_device spi1_device = {
    .dev = {
	        .init_name          = "ssp-pl022.1",
	        .coherent_dma_mask  = 0x000fffffUL,
	        .platform_data      = &pl022_ssp1_platform_data,
	        .id = 1,
		   },
	.res = {
	        .start = PHY_BASEADDR_SSP1 ,
	        .end   = PHY_BASEADDR_SSP1  + SZ_1K - 1,
	        .flags = IORESOURCE_MEM,
		    },

	.irq = {IRQ_PHY_SSP1 },
	.periphid = 0x00041022,                     /* ST-Ericsson modified id */
};
#endif


#if defined(CONFIG_SPI_PL022_PORT2)

static struct pl022_ssp_controller ssp2_platform_data = {
    .bus_id         = 2,
    .num_chipselect = 3,
#if defined(CONFIG_USE_DMA_PORT2) && defined(CONFIG_AMBA_PL08X)
    .enable_dma     = 1,
    .dma_filter     = pl08x_filter_id,
    .dma_rx_param   = DMA_PERIPHERAL_NAME_SSP2_RX,
    .dma_tx_param   = DMA_PERIPHERAL_NAME_SSP2_TX,
#else
    .enable_dma     = 0,
#endif
};

static struct amba_device spi1_device = {
    .dev = {
	        .init_name          = "ssp-pl022",
	        .coherent_dma_mask  = 0x000fffffUL,
	        .platform_data      = &ssp0_platform_data,
	        .id = 1,
		   },
	.res = {
	        .start = PHY_BASEADDR_SSP2 ,
	        .end   = PHY_BASEADDR_SSP2  + SZ_1K - 1,
	        .flags = IORESOURCE_MEM,
		    },

	.irq = {IRQ_PHY_SSP1 },
	.periphid = 0x00041022,                     /* ST-Ericsson modified id */
};
#endif


#endif /* CONFIG_SPI_PL022 */
/*------------------------------------------------------------------------------
 * USB OTG Host or Gadget
 */
#if defined(CONFIG_USB_DWCOTG) || defined(CONFIG_USB_DWCOTG_MODULE)

#include <linux/delay.h>
#include <asm/io.h>
#include <linux/usb/ch9.h>

#define SOC_PA_HSOTG		PHY_BASEADDR_HSOTG
#define	SOC_VA_HSOTG		IO_ADDRESS(SOC_PA_HSOTG)

#define SOC_PA_RSTCON		PHY_BASEADDR_RSTCON
#define	SOC_VA_RSTCON		IO_ADDRESS(SOC_PA_RSTCON)

#define SOC_PA_TIEOFF		PHY_BASEADDR_TIEOFF
#define	SOC_VA_TIEOFF		IO_ADDRESS(SOC_PA_TIEOFF)

void otg_clk_enable(void)
{
#if 0
    struct clk *hsotg_clk;

    // Clock control
    hsotg_clk = clk_get(NULL, DEV_NAME_USB2HOST);
    clk_enable(hsotg_clk);
#endif
}
EXPORT_SYMBOL(otg_clk_enable);

void otg_clk_disable(void)
{
#if 0
    struct clk *hsotg_clk;

    // Clock control
    hsotg_clk = clk_get(NULL, DEV_NAME_USB2HOST);
    clk_disable(hsotg_clk);
#endif
}
EXPORT_SYMBOL(otg_clk_disable);

/* Initializes OTG Phy. */
void otg_phy_init(void)
{
    u32 temp;

    //PM_DBGOUT("+%s\n", __func__);

    writel(readl(SOC_VA_TIEOFF + 0x3C) & ~0xF800, SOC_VA_TIEOFF + 0x3C);

    // 1. Release otg common reset
    writel(readl(SOC_VA_RSTCON + 0x04) & ~(1<<25), SOC_VA_RSTCON + 0x04);     // reset on
    udelay(10);
    writel(readl(SOC_VA_RSTCON + 0x04) |  (1<<25), SOC_VA_RSTCON + 0x04);     // reset off
    udelay(10);

    // 1-1. VBUS reconfig - Over current Issue
#if 1
    temp  = readl(SOC_VA_TIEOFF + 0x38) & ~(0x7<<23);
//    temp |= (0x3<<23); // -3%
//    temp |= (0x2<<23); // -6%
//    temp |= (0x1<<23); // -9%
    temp |= (0x0<<23); // -12%
    writel(temp, SOC_VA_TIEOFF + 0x38);
#endif

    // 2. Program scale mode to real mode
    writel(readl(SOC_VA_TIEOFF + 0x30) & ~(3<<0), SOC_VA_TIEOFF + 0x30);

    // 3. Select word interface and enable word interface selection
#if 0
    writel(readl(SOC_VA_TIEOFF + 0x38) & ~(3<<8), SOC_VA_TIEOFF + 0x38);
    writel(readl(SOC_VA_TIEOFF + 0x38) |  (1<<8), SOC_VA_TIEOFF + 0x38);        // 2'b01 8bit, 2'b11 16bit word
#else
    writel(readl(SOC_VA_TIEOFF + 0x38) |  (3<<8), SOC_VA_TIEOFF + 0x38);        // 2'b01 8bit, 2'b11 16bit word
#endif


    // 4. Select VBUS
//    writel(readl(SOC_VA_TIEOFF + 0x34) |  (3<<24), SOC_VA_TIEOFF + 0x34);   /* Select VBUS 3.3V */
    writel(readl(SOC_VA_TIEOFF + 0x34) & ~(3<<24), SOC_VA_TIEOFF + 0x34);   /* Select VBUS 5V */

    // 5. POR of PHY
#if 0
    writel(readl(SOC_VA_TIEOFF + 0x34) |  (3<<7), SOC_VA_TIEOFF + 0x34);
#else
    temp    = readl(SOC_VA_TIEOFF + 0x34);
    temp   &= ~(3<<7);
    temp   |=  (1<<7);
    writel(temp, SOC_VA_TIEOFF + 0x34);
    udelay(1);
    temp   |=  (3<<7);
    writel(temp, SOC_VA_TIEOFF + 0x34);
    udelay(1);
    temp   &= ~(2<<7);
    writel(temp, SOC_VA_TIEOFF + 0x34);
#endif
    udelay(10); // 40us delay need.

    // 6. UTMI reset
    writel(readl(SOC_VA_TIEOFF + 0x34) | (1<<3), SOC_VA_TIEOFF + 0x34);
    udelay(1);  // 10 clock need

    // 7. AHB reset
    writel(readl(SOC_VA_TIEOFF + 0x34) | (1<<2), SOC_VA_TIEOFF + 0x34);
    udelay(1);  // 10 clock need

#if 0
    if (GLASGOW == get_leapfrog_platform()) {
        // FIXME: adjust rise time for optimum eye-test result
        temp = readl(SOC_VA_TIEOFF + 0x28);
        temp &= ~(0x3 << 4);
        writel(temp, SOC_VA_TIEOFF + 0x28);
    }

    printk("%s: %08x : %08x \n", __func__, SOC_VA_TIEOFF + 0x28, readl(SOC_VA_TIEOFF + 0x28));
    printk("%s: %08x : %08x \n", __func__, SOC_VA_TIEOFF + 0x2C, readl(SOC_VA_TIEOFF + 0x2C));
    printk("%s: %08x : %08x \n", __func__, SOC_VA_TIEOFF + 0x30, readl(SOC_VA_TIEOFF + 0x30));
    printk("%s: %08x : %08x \n", __func__, SOC_VA_TIEOFF + 0x34, readl(SOC_VA_TIEOFF + 0x34));
    printk("%s: %08x : %08x \n", __func__, SOC_VA_TIEOFF + 0x38, readl(SOC_VA_TIEOFF + 0x38));
#endif
}
EXPORT_SYMBOL(otg_phy_init);

void otg_phy_off(void)
{
    // 0. Select VBUS
    writel(readl(SOC_VA_TIEOFF + 0x34) |  (3<<24), SOC_VA_TIEOFF + 0x34);   /* Select VBUS 3.3V */
//    writel(readl(SOC_VA_TIEOFF + 0x34) & ~(3<<24), SOC_VA_TIEOFF + 0x34);   /* Select VBUS 5V */

    // 1. UTMI reset
    writel(readl(SOC_VA_TIEOFF + 0x34) & ~(1<<3), SOC_VA_TIEOFF + 0x34);
    udelay(10); // 10 clock need

    // 2. AHB reset
    writel(readl(SOC_VA_TIEOFF + 0x34) & ~(1<<2), SOC_VA_TIEOFF + 0x34);
    udelay(10); // 10 clock need

    // 3. POR of PHY
    writel(readl(SOC_VA_TIEOFF + 0x34) |  (3<<7), SOC_VA_TIEOFF + 0x34);
    udelay(10); // 40us delay need.

    // 4. Release otg common reset
    writel(readl(SOC_VA_RSTCON + 0x04) & ~(1<<25), SOC_VA_RSTCON + 0x04);     // reset on
    udelay(10);
}
EXPORT_SYMBOL(otg_phy_off);

static struct resource otg_resources[] = {
    [0] = {
        .start  = SOC_PA_HSOTG,
        .end    = SOC_PA_HSOTG + SZ_64K - 1,
        .flags  = IORESOURCE_MEM,
    },
    [1] = {
        .start  = IRQ_PHY_USB20OTG,
        .end    = IRQ_PHY_USB20OTG,
        .flags  = IORESOURCE_IRQ,
    },
};

static u64 otg_dmamask = DMA_BIT_MASK(32);

static struct platform_device otg_plat_device = {
    .name   = "dwc_otg",
    .id     = -1,
    .dev    = {
        .dma_mask = &otg_dmamask,
        .coherent_dma_mask = 0xffffffffUL
    },
    .num_resources  = ARRAY_SIZE(otg_resources),
    .resource       = otg_resources,
};

#define CFG_SWITCH_USB_5V_EN        (PAD_GPIO_D + 10)
#define CFG_SWITCH_USB_HOST_DEVICE  (PAD_GPIO_D + 11)
#define CFG_OTG_MODE_HOST           1
#define CFG_OTG_MODE_DEVICE         0
#define CFG_OTG_BOOT_MODE           CFG_OTG_MODE_DEVICE

static int cur_otg_mode = CFG_OTG_BOOT_MODE;

unsigned int get_otg_mode(void)
{
    return cur_otg_mode;
}

void set_otg_mode(unsigned int mode, int is_force)
{
    if (mode > CFG_OTG_MODE_HOST) return;

    if ((mode == cur_otg_mode) && !is_force) return;

    cur_otg_mode = mode;

    return;
}

EXPORT_SYMBOL(get_otg_mode);
EXPORT_SYMBOL(set_otg_mode);
#endif/* CONFIG_USB_DWCOTG */

/*------------------------------------------------------------------------------
 * The order of device declaration may be important, since some devices
 * have dependencies on other devices being initialized first.
 */
#if defined(CONFIG_ARM_AMBA)

#include "dev-dmac.c"

static struct amba_device *amba_devices[] __initdata = {
#if defined(CONFIG_SERIAL_AMBA_PL011)
	#if defined(CONFIG_SERIAL_NEXELL_UART0)
	&uart0_device,
	#endif
	#if defined(CONFIG_SERIAL_NEXELL_UART1)
	&uart1_device,
	#endif
	#if defined(CONFIG_SERIAL_NEXELL_UART2)
	&uart2_device,
	#endif
	#if defined(CONFIG_SERIAL_NEXELL_UART3)
	&uart3_device,
	#endif
	#if defined(CONFIG_SERIAL_NEXELL_UART4)
	&uart4_device,
	#endif
	#if defined(CONFIG_SERIAL_NEXELL_UART5)
	&uart5_device,
	#endif
#endif

#if defined (CONFIG_AMBA_PL08X)
	&dmac0_device,
	&dmac1_device,
#endif

#if defined(CONFIG_SPI_PL022_PORT0)
	&spi0_device,
#endif

#if defined(CONFIG_SPI_PL022_PORT1)
	&spi1_device,
#endif

#if defined(CONFIG_SPI_PL022_PORT2)
	&spi2_device,
#endif
};
#endif

/*------------------------------------------------------------------------------
 * MPEGTS platform device
 */
#if defined(CONFIG_NXP4330_MP2TS_IF)
static struct nxp_mp2ts_plat_data mpegts_plat_data0 = {
    .cap_ch_num = 0,
    .op_mode    = CFG_MPEGTS_SLAVE_MODE,
	.clock_pol	= CFG_MPEGTS_CLOCKPOL,
	.data_pol	= CFG_MPEGTS_DATAPOL,
	.sync_pol   = CFG_MPEGTS_SYNCPOL,
	.error_pol	= CFG_MPEGTS_ERRORPOL,
    .data_width = CFG_MPEGTS_DATAWIDTH,
//	.word_cnt	 = CFG_MPEGTS_WORDCNT
};

static struct platform_device mpegts_plat_device0 = {
	.name	= DEV_NAME_MPEGTSI,
	.id		= 0,
	.dev	= {
		.platform_data = &mpegts_plat_data0,
	},
};

static struct nxp_mp2ts_plat_data mpegts_plat_data1 = {
    .cap_ch_num = 1,
    .op_mode    = CFG_MPEGTS_SLAVE_MODE,
    .clock_pol  = CFG_MPEGTS_CLOCKPOL,
    .data_pol   = CFG_MPEGTS_DATAPOL,
    .sync_pol   = CFG_MPEGTS_SYNCPOL,
    .error_pol  = CFG_MPEGTS_ERRORPOL,
    .data_width = CFG_MPEGTS_DATAWIDTH,
//  .word_cnt    = CFG_MPEGTS_WORDCNT
};

static struct platform_device mpegts_plat_device1 = {
	.name	= DEV_NAME_MPEGTSI,
//	.name	= "nxp-mpegtsi1",
	.id		= 1,
	.dev	= {
		.platform_data = &mpegts_plat_data1,
	},
};

static struct platform_device *mpegts_plat_devices[] = {
	&mpegts_plat_device0,
	&mpegts_plat_device1,
};

#endif	/* CONFIG_NXP4330_MP2TS_IF */

/*------------------------------------------------------------------------------
 *  * ION device
 *   */
#if defined(CONFIG_ION_NXP)

#include <mach/ion.h>

struct platform_device nxp_device_ion = {
    .name   = "ion-nxp",
    .id     = -1,
};

#endif /* CONFIG_ION_NXP */

#if defined(CONFIG_GPIO_LEAPFROG)
void lf3000_gpio_init(void);
#endif /* CONFIG_GPIO_LEAPFROG */

/*------------------------------------------------------------------------------
 * Alive register platform device
 */

static struct resource alive_resource = {
                .start  = PHY_BASEADDR_ALIVE,
                .end    = PHY_BASEADDR_ALIVE + 0x200,
                .flags  = IORESOURCE_MEM,
};

static struct platform_device alive_device = {
        .name   = "lf2000-alive",
        .id     = -1,
        .num_resources  = 1,
        .resource       = &alive_resource,
};


/*------------------------------------------------------------------------------
 * register cpu platform devices
 */
void __init nxp_cpu_devices_register(void)
{
	int i = 0;
	printk("[Register machine platform devices]\n");

#if defined(CONFIG_GPIO_LEAPFROG)
	printk("initialize gpio chips\n");
	lf3000_gpio_init();
#endif

	printk("plat: add device alive registers\n");
        platform_device_register(&alive_device);

#if defined(CONFIG_ARM_AMBA)
	for (i = 0; i < ARRAY_SIZE(amba_devices); i++) {
	struct amba_device *d = amba_devices[i];
	printk("mach: add amba device %s \n", d->dev.init_name);
	amba_device_register(d, &iomem_resource);
	}
#endif

#if defined(CONFIG_SERIAL_NEXELL)
	printk("mach: add device serial (array:%d)\n", ARRAY_SIZE(uart_devices));
	platform_add_devices(uart_devices, ARRAY_SIZE(uart_devices));
#endif

#if defined(CONFIG_I2C_NEXELL)
	printk("mach: add device i2c bus (array:%d) \n", ARRAY_SIZE(i2c_devices));
	platform_add_devices(i2c_devices, ARRAY_SIZE(i2c_devices));
#endif
#if defined(CONFIG_RTC_DRV_NXP)
    printk("mach: add device Real Time Clock  \n");
    platform_device_register(&rtc_plat_device);
#endif


#if defined(CONFIG_HAVE_PWM)
	printk("mach: add device generic pwm (array:%d)\n", ARRAY_SIZE(pwm_devices));
	platform_add_devices(pwm_devices, ARRAY_SIZE(pwm_devices));
#endif

#if defined(CONFIG_GPIO_NEXELL)
	printk("mach: add device generic gpio (array:%d)\n", ARRAY_SIZE(gpio_devices));
	platform_add_devices(gpio_devices, ARRAY_SIZE(gpio_devices));
#endif

#if defined(CONFIG_ADC_NEXELL)
	printk("mach: add device ADC  \n");
        platform_device_register(&adc_plat_device);
#endif

#if defined(CONFIG_SND_NEXELL_I2S) || defined(CONFIG_SND_NEXELL_I2S_MODULE)
	printk("mach: add device i2s (array:%d) \n", ARRAY_SIZE(i2s_devices));
	platform_add_devices(i2s_devices, ARRAY_SIZE(i2s_devices));
#endif

#if defined(CONFIG_SND_NEXELL_SPDIF_TX) || defined(CONFIG_SND_NEXELL_SPDIF_TX_MODULE)
	printk("mach: add device spdif tx\n");
	platform_device_register(&spdif_device_tx);
#endif

#if defined(CONFIG_SND_NEXELL_SPDIF_RX) || defined(CONFIG_SND_NEXELL_SPDIF_RX_MODULE)
	printk("mach: add device spdif rx\n");
	platform_device_register(&spdif_device_rx);
#endif

#if defined(CONFIG_NXP4330_MP2TS_IF)
	printk("mach: add device misc mpegts\n");
#if 1
//	platform_device_register(&mpegts_plat_device0);
	platform_device_register(&mpegts_plat_device1);
#else
    platform_add_devices(mpegts_plat_devices, ARRAY_SIZE(mpegts_plat_devices));
#endif
#endif

#if defined(CONFIG_USB_DWCOTG) || defined(CONFIG_USB_DWCOTG_MODULE)
    printk("mach: add device usb otg\n");
    platform_device_register(&otg_plat_device);
#endif

#if defined(CONFIG_ION_NXP)
    printk("mach: add device ion-nxp\n");
    nxp_ion_set_platdata();
    platform_device_register(&nxp_device_ion);
#endif

#if defined(CONFIG_BCM43143)
	gpio_request(WIFI_RESET, "Wi-Fi reset");
#endif

#if defined(CONFIG_WL12XX_PLATFORM_DATA)
	wl12xx_init();
	//i = gpio_request_one(BT_RESET_L, GPIOF_INIT_HIGH, "Bluetooth Reset");
	//if (!i)
		//printk("mach: BT Reset %d %d \n", i, gpio_get_value_cansleep(BT_RESET_L));
#endif

	/* Register the platform devices */
	printk("mach: add graphic device opengl|es\n");
	platform_device_register(&mali_gpu_device);
}
