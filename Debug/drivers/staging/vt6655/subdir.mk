################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/vt6655/80211mgr.c \
../drivers/staging/vt6655/IEEE11h.c \
../drivers/staging/vt6655/aes_ccmp.c \
../drivers/staging/vt6655/baseband.c \
../drivers/staging/vt6655/bssdb.c \
../drivers/staging/vt6655/card.c \
../drivers/staging/vt6655/channel.c \
../drivers/staging/vt6655/datarate.c \
../drivers/staging/vt6655/device_main.c \
../drivers/staging/vt6655/dpc.c \
../drivers/staging/vt6655/hostap.c \
../drivers/staging/vt6655/ioctl.c \
../drivers/staging/vt6655/iwctl.c \
../drivers/staging/vt6655/key.c \
../drivers/staging/vt6655/mac.c \
../drivers/staging/vt6655/mib.c \
../drivers/staging/vt6655/michael.c \
../drivers/staging/vt6655/power.c \
../drivers/staging/vt6655/rc4.c \
../drivers/staging/vt6655/rf.c \
../drivers/staging/vt6655/rxtx.c \
../drivers/staging/vt6655/srom.c \
../drivers/staging/vt6655/tcrc.c \
../drivers/staging/vt6655/tether.c \
../drivers/staging/vt6655/tkip.c \
../drivers/staging/vt6655/vntwifi.c \
../drivers/staging/vt6655/wcmd.c \
../drivers/staging/vt6655/wctl.c \
../drivers/staging/vt6655/wmgr.c \
../drivers/staging/vt6655/wpa.c \
../drivers/staging/vt6655/wpa2.c \
../drivers/staging/vt6655/wpactl.c \
../drivers/staging/vt6655/wroute.c 

OBJS += \
./drivers/staging/vt6655/80211mgr.o \
./drivers/staging/vt6655/IEEE11h.o \
./drivers/staging/vt6655/aes_ccmp.o \
./drivers/staging/vt6655/baseband.o \
./drivers/staging/vt6655/bssdb.o \
./drivers/staging/vt6655/card.o \
./drivers/staging/vt6655/channel.o \
./drivers/staging/vt6655/datarate.o \
./drivers/staging/vt6655/device_main.o \
./drivers/staging/vt6655/dpc.o \
./drivers/staging/vt6655/hostap.o \
./drivers/staging/vt6655/ioctl.o \
./drivers/staging/vt6655/iwctl.o \
./drivers/staging/vt6655/key.o \
./drivers/staging/vt6655/mac.o \
./drivers/staging/vt6655/mib.o \
./drivers/staging/vt6655/michael.o \
./drivers/staging/vt6655/power.o \
./drivers/staging/vt6655/rc4.o \
./drivers/staging/vt6655/rf.o \
./drivers/staging/vt6655/rxtx.o \
./drivers/staging/vt6655/srom.o \
./drivers/staging/vt6655/tcrc.o \
./drivers/staging/vt6655/tether.o \
./drivers/staging/vt6655/tkip.o \
./drivers/staging/vt6655/vntwifi.o \
./drivers/staging/vt6655/wcmd.o \
./drivers/staging/vt6655/wctl.o \
./drivers/staging/vt6655/wmgr.o \
./drivers/staging/vt6655/wpa.o \
./drivers/staging/vt6655/wpa2.o \
./drivers/staging/vt6655/wpactl.o \
./drivers/staging/vt6655/wroute.o 

C_DEPS += \
./drivers/staging/vt6655/80211mgr.d \
./drivers/staging/vt6655/IEEE11h.d \
./drivers/staging/vt6655/aes_ccmp.d \
./drivers/staging/vt6655/baseband.d \
./drivers/staging/vt6655/bssdb.d \
./drivers/staging/vt6655/card.d \
./drivers/staging/vt6655/channel.d \
./drivers/staging/vt6655/datarate.d \
./drivers/staging/vt6655/device_main.d \
./drivers/staging/vt6655/dpc.d \
./drivers/staging/vt6655/hostap.d \
./drivers/staging/vt6655/ioctl.d \
./drivers/staging/vt6655/iwctl.d \
./drivers/staging/vt6655/key.d \
./drivers/staging/vt6655/mac.d \
./drivers/staging/vt6655/mib.d \
./drivers/staging/vt6655/michael.d \
./drivers/staging/vt6655/power.d \
./drivers/staging/vt6655/rc4.d \
./drivers/staging/vt6655/rf.d \
./drivers/staging/vt6655/rxtx.d \
./drivers/staging/vt6655/srom.d \
./drivers/staging/vt6655/tcrc.d \
./drivers/staging/vt6655/tether.d \
./drivers/staging/vt6655/tkip.d \
./drivers/staging/vt6655/vntwifi.d \
./drivers/staging/vt6655/wcmd.d \
./drivers/staging/vt6655/wctl.d \
./drivers/staging/vt6655/wmgr.d \
./drivers/staging/vt6655/wpa.d \
./drivers/staging/vt6655/wpa2.d \
./drivers/staging/vt6655/wpactl.d \
./drivers/staging/vt6655/wroute.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/vt6655/%.o: ../drivers/staging/vt6655/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


