#
# Copyright 2009 Nexell Co.
#
# Makefile for the NXP4330

obj-$(CONFIG_ARCH_NXP4330) := board_sysfs.o cpu.o nxp4330.o timer.o irq.o clock.o	devices.o
obj-$(CONFIG_PLAT_NXP4330_R3K) += board.o device.o flash.o
obj-$(CONFIG_PLAT_NXP4330_CABO) += board.o device.o flash.o devices.o alive.o
obj-$(CONFIG_PLAT_NXP4330_GLASGOW_ALPHA) += board.o device.o flash.o alive.o
obj-$(CONFIG_PLAT_NXP4330_XANADU) += board.o device.o flash.o devices.o alive.o
obj-$(CONFIG_PLAT_NXP4330_LOWCOST) += board.o device.o flash.o devices.o alive.o

ifeq ($(CONFIG_PLAT_NXP4330_R3K),y)
obj-$(CONFIG_ION_NXP) += dev-ion.o
endif

ifeq ($(CONFIG_PLAT_NXP4330_CABO),y)
obj-$(CONFIG_ION_NXP) += dev-ion.o
endif

ifeq ($(CONFIG_PLAT_NXP4330_GLASGOW_ALPHA),y)
obj-$(CONFIG_ION_NXP) += dev-ion.o
endif

ifeq ($(CONFIG_PLAT_NXP4330_XANADU),y)
obj-$(CONFIG_ION_NXP) += dev-ion.o
endif

ifeq ($(CONFIG_PLAT_NXP4330_LOWCOST),y)
obj-$(CONFIG_ION_NXP) += dev-ion.o
endif

obj-$(CONFIG_KEYBOARD_GPIO) +=  keyboard.o

obj-$(CONFIG_ARCH_NXP4330) 			+= soc/
obj-$(CONFIG_HOTPLUG_CPU)			+= hotplug.o
obj-$(CONFIG_SMP)					+= platsmp.o headsmp.o
obj-$(CONFIG_PM)					+= pm.o lldebug.o
obj-$(CONFIG_ARM_NXP4330_CPUFREQ)	+= cpufreq.o
obj-$(CONFIG_HAVE_PWM)				+= pwm.o
obj-$(CONFIG_CMA)					+= reserve_mem.o

obj-$(CONFIG_GPIO_LEAPFROG)	+= gpio/
obj-$(CONFIG_BQ24250_CHARGER) += bq24250_charger.o
obj-$(CONFIG_TC7734_PMIC) += tc7734.o
#===============================================================================
# Support prototype
#===============================================================================
PROTOTYPE := prototype
MODULES	  := module
BASEDIR	  := base

include $(srctree)/arch/arm/mach-nxp4330/$(PROTOTYPE).mk

KBUILD_CFLAGS += -I$(srctree)/$(MACHINE)$(PROTOTYPE)/$(BASEDIR)	\
				 -I$(srctree)/$(MACHINE)$(PROTOTYPE)/$(MODULES)	\
				 -I$(srctree)/$(MACHINE)$(PROTOTYPE)/$(MODULES)

ifeq ($(CONFIG_PROTOTYPE_RELEASE),y)
KBUILD_CFLAGS += -D__LINUX__ -D__PRINTK__ -DNX_RELEASE
else
KBUILD_CFLAGS += -D__LINUX__ -D__PRINTK__ -DNX_DEBUG
endif

#===============================================================================
#	Build options for nexell soc
#===============================================================================
KBUILD_CFLAGS += -mtune=cortex-a9 -mfpu=vfp -mfloat-abi=softfp
# -mfpu=vfpv3
