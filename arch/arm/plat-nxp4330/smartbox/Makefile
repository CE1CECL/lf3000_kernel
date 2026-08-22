#
# Copyright 2009 Nexell Co.
#
# Makefile for the NXP4330

obj-y				  			:= board.o device.o
obj-$(CONFIG_SUSPEND) 			+= pm.o
obj-$(CONFIG_ION_NXP) 			+= dev-ion.o
obj-$(CONFIG_USB_EHCI_NXP4330)	+= setup-usb-phy.o
obj-$(CONFIG_S3C_DEV_USB_HSOTG)	+= setup-usb-phy.o

