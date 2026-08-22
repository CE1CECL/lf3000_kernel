################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/vt6656/80211mgr.c \
../drivers/staging/vt6656/aes_ccmp.c \
../drivers/staging/vt6656/baseband.c \
../drivers/staging/vt6656/bssdb.c \
../drivers/staging/vt6656/card.c \
../drivers/staging/vt6656/channel.c \
../drivers/staging/vt6656/control.c \
../drivers/staging/vt6656/datarate.c \
../drivers/staging/vt6656/dpc.c \
../drivers/staging/vt6656/firmware.c \
../drivers/staging/vt6656/hostap.c \
../drivers/staging/vt6656/int.c \
../drivers/staging/vt6656/ioctl.c \
../drivers/staging/vt6656/iwctl.c \
../drivers/staging/vt6656/key.c \
../drivers/staging/vt6656/mac.c \
../drivers/staging/vt6656/main_usb.c \
../drivers/staging/vt6656/mib.c \
../drivers/staging/vt6656/michael.c \
../drivers/staging/vt6656/power.c \
../drivers/staging/vt6656/rc4.c \
../drivers/staging/vt6656/rf.c \
../drivers/staging/vt6656/rxtx.c \
../drivers/staging/vt6656/tcrc.c \
../drivers/staging/vt6656/tether.c \
../drivers/staging/vt6656/tkip.c \
../drivers/staging/vt6656/usbpipe.c \
../drivers/staging/vt6656/wcmd.c \
../drivers/staging/vt6656/wctl.c \
../drivers/staging/vt6656/wmgr.c \
../drivers/staging/vt6656/wpa.c \
../drivers/staging/vt6656/wpa2.c \
../drivers/staging/vt6656/wpactl.c 

OBJS += \
./drivers/staging/vt6656/80211mgr.o \
./drivers/staging/vt6656/aes_ccmp.o \
./drivers/staging/vt6656/baseband.o \
./drivers/staging/vt6656/bssdb.o \
./drivers/staging/vt6656/card.o \
./drivers/staging/vt6656/channel.o \
./drivers/staging/vt6656/control.o \
./drivers/staging/vt6656/datarate.o \
./drivers/staging/vt6656/dpc.o \
./drivers/staging/vt6656/firmware.o \
./drivers/staging/vt6656/hostap.o \
./drivers/staging/vt6656/int.o \
./drivers/staging/vt6656/ioctl.o \
./drivers/staging/vt6656/iwctl.o \
./drivers/staging/vt6656/key.o \
./drivers/staging/vt6656/mac.o \
./drivers/staging/vt6656/main_usb.o \
./drivers/staging/vt6656/mib.o \
./drivers/staging/vt6656/michael.o \
./drivers/staging/vt6656/power.o \
./drivers/staging/vt6656/rc4.o \
./drivers/staging/vt6656/rf.o \
./drivers/staging/vt6656/rxtx.o \
./drivers/staging/vt6656/tcrc.o \
./drivers/staging/vt6656/tether.o \
./drivers/staging/vt6656/tkip.o \
./drivers/staging/vt6656/usbpipe.o \
./drivers/staging/vt6656/wcmd.o \
./drivers/staging/vt6656/wctl.o \
./drivers/staging/vt6656/wmgr.o \
./drivers/staging/vt6656/wpa.o \
./drivers/staging/vt6656/wpa2.o \
./drivers/staging/vt6656/wpactl.o 

C_DEPS += \
./drivers/staging/vt6656/80211mgr.d \
./drivers/staging/vt6656/aes_ccmp.d \
./drivers/staging/vt6656/baseband.d \
./drivers/staging/vt6656/bssdb.d \
./drivers/staging/vt6656/card.d \
./drivers/staging/vt6656/channel.d \
./drivers/staging/vt6656/control.d \
./drivers/staging/vt6656/datarate.d \
./drivers/staging/vt6656/dpc.d \
./drivers/staging/vt6656/firmware.d \
./drivers/staging/vt6656/hostap.d \
./drivers/staging/vt6656/int.d \
./drivers/staging/vt6656/ioctl.d \
./drivers/staging/vt6656/iwctl.d \
./drivers/staging/vt6656/key.d \
./drivers/staging/vt6656/mac.d \
./drivers/staging/vt6656/main_usb.d \
./drivers/staging/vt6656/mib.d \
./drivers/staging/vt6656/michael.d \
./drivers/staging/vt6656/power.d \
./drivers/staging/vt6656/rc4.d \
./drivers/staging/vt6656/rf.d \
./drivers/staging/vt6656/rxtx.d \
./drivers/staging/vt6656/tcrc.d \
./drivers/staging/vt6656/tether.d \
./drivers/staging/vt6656/tkip.d \
./drivers/staging/vt6656/usbpipe.d \
./drivers/staging/vt6656/wcmd.d \
./drivers/staging/vt6656/wctl.d \
./drivers/staging/vt6656/wmgr.d \
./drivers/staging/vt6656/wpa.d \
./drivers/staging/vt6656/wpa2.d \
./drivers/staging/vt6656/wpactl.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/vt6656/%.o: ../drivers/staging/vt6656/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


