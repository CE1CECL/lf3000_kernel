################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/usb/asix.c \
../drivers/net/usb/catc.c \
../drivers/net/usb/cdc-phonet.c \
../drivers/net/usb/cdc_eem.c \
../drivers/net/usb/cdc_ether.c \
../drivers/net/usb/cdc_ncm.c \
../drivers/net/usb/cdc_subset.c \
../drivers/net/usb/cx82310_eth.c \
../drivers/net/usb/dm9601.c \
../drivers/net/usb/gl620a.c \
../drivers/net/usb/hso.c \
../drivers/net/usb/int51x1.c \
../drivers/net/usb/ipheth.c \
../drivers/net/usb/kalmia.c \
../drivers/net/usb/kaweth.c \
../drivers/net/usb/lg-vl600.c \
../drivers/net/usb/mcs7830.c \
../drivers/net/usb/net1080.c \
../drivers/net/usb/pegasus.c \
../drivers/net/usb/plusb.c \
../drivers/net/usb/qmi_wwan.c \
../drivers/net/usb/rndis_host.c \
../drivers/net/usb/rtl8150.c \
../drivers/net/usb/sierra_net.c \
../drivers/net/usb/smsc75xx.c \
../drivers/net/usb/smsc95xx.c \
../drivers/net/usb/usbnet.c \
../drivers/net/usb/zaurus.c 

OBJS += \
./drivers/net/usb/asix.o \
./drivers/net/usb/catc.o \
./drivers/net/usb/cdc-phonet.o \
./drivers/net/usb/cdc_eem.o \
./drivers/net/usb/cdc_ether.o \
./drivers/net/usb/cdc_ncm.o \
./drivers/net/usb/cdc_subset.o \
./drivers/net/usb/cx82310_eth.o \
./drivers/net/usb/dm9601.o \
./drivers/net/usb/gl620a.o \
./drivers/net/usb/hso.o \
./drivers/net/usb/int51x1.o \
./drivers/net/usb/ipheth.o \
./drivers/net/usb/kalmia.o \
./drivers/net/usb/kaweth.o \
./drivers/net/usb/lg-vl600.o \
./drivers/net/usb/mcs7830.o \
./drivers/net/usb/net1080.o \
./drivers/net/usb/pegasus.o \
./drivers/net/usb/plusb.o \
./drivers/net/usb/qmi_wwan.o \
./drivers/net/usb/rndis_host.o \
./drivers/net/usb/rtl8150.o \
./drivers/net/usb/sierra_net.o \
./drivers/net/usb/smsc75xx.o \
./drivers/net/usb/smsc95xx.o \
./drivers/net/usb/usbnet.o \
./drivers/net/usb/zaurus.o 

C_DEPS += \
./drivers/net/usb/asix.d \
./drivers/net/usb/catc.d \
./drivers/net/usb/cdc-phonet.d \
./drivers/net/usb/cdc_eem.d \
./drivers/net/usb/cdc_ether.d \
./drivers/net/usb/cdc_ncm.d \
./drivers/net/usb/cdc_subset.d \
./drivers/net/usb/cx82310_eth.d \
./drivers/net/usb/dm9601.d \
./drivers/net/usb/gl620a.d \
./drivers/net/usb/hso.d \
./drivers/net/usb/int51x1.d \
./drivers/net/usb/ipheth.d \
./drivers/net/usb/kalmia.d \
./drivers/net/usb/kaweth.d \
./drivers/net/usb/lg-vl600.d \
./drivers/net/usb/mcs7830.d \
./drivers/net/usb/net1080.d \
./drivers/net/usb/pegasus.d \
./drivers/net/usb/plusb.d \
./drivers/net/usb/qmi_wwan.d \
./drivers/net/usb/rndis_host.d \
./drivers/net/usb/rtl8150.d \
./drivers/net/usb/sierra_net.d \
./drivers/net/usb/smsc75xx.d \
./drivers/net/usb/smsc95xx.d \
./drivers/net/usb/usbnet.d \
./drivers/net/usb/zaurus.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/usb/%.o: ../drivers/net/usb/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


