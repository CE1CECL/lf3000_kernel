################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/rtl8712/hal_init.c \
../drivers/staging/rtl8712/ieee80211.c \
../drivers/staging/rtl8712/mlme_linux.c \
../drivers/staging/rtl8712/os_intfs.c \
../drivers/staging/rtl8712/recv_linux.c \
../drivers/staging/rtl8712/rtl8712_cmd.c \
../drivers/staging/rtl8712/rtl8712_efuse.c \
../drivers/staging/rtl8712/rtl8712_io.c \
../drivers/staging/rtl8712/rtl8712_led.c \
../drivers/staging/rtl8712/rtl8712_recv.c \
../drivers/staging/rtl8712/rtl8712_xmit.c \
../drivers/staging/rtl8712/rtl871x_cmd.c \
../drivers/staging/rtl8712/rtl871x_eeprom.c \
../drivers/staging/rtl8712/rtl871x_io.c \
../drivers/staging/rtl8712/rtl871x_ioctl_linux.c \
../drivers/staging/rtl8712/rtl871x_ioctl_rtl.c \
../drivers/staging/rtl8712/rtl871x_ioctl_set.c \
../drivers/staging/rtl8712/rtl871x_mlme.c \
../drivers/staging/rtl8712/rtl871x_mp.c \
../drivers/staging/rtl8712/rtl871x_mp_ioctl.c \
../drivers/staging/rtl8712/rtl871x_pwrctrl.c \
../drivers/staging/rtl8712/rtl871x_recv.c \
../drivers/staging/rtl8712/rtl871x_security.c \
../drivers/staging/rtl8712/rtl871x_sta_mgt.c \
../drivers/staging/rtl8712/rtl871x_xmit.c \
../drivers/staging/rtl8712/usb_halinit.c \
../drivers/staging/rtl8712/usb_intf.c \
../drivers/staging/rtl8712/usb_ops.c \
../drivers/staging/rtl8712/usb_ops_linux.c \
../drivers/staging/rtl8712/xmit_linux.c 

OBJS += \
./drivers/staging/rtl8712/hal_init.o \
./drivers/staging/rtl8712/ieee80211.o \
./drivers/staging/rtl8712/mlme_linux.o \
./drivers/staging/rtl8712/os_intfs.o \
./drivers/staging/rtl8712/recv_linux.o \
./drivers/staging/rtl8712/rtl8712_cmd.o \
./drivers/staging/rtl8712/rtl8712_efuse.o \
./drivers/staging/rtl8712/rtl8712_io.o \
./drivers/staging/rtl8712/rtl8712_led.o \
./drivers/staging/rtl8712/rtl8712_recv.o \
./drivers/staging/rtl8712/rtl8712_xmit.o \
./drivers/staging/rtl8712/rtl871x_cmd.o \
./drivers/staging/rtl8712/rtl871x_eeprom.o \
./drivers/staging/rtl8712/rtl871x_io.o \
./drivers/staging/rtl8712/rtl871x_ioctl_linux.o \
./drivers/staging/rtl8712/rtl871x_ioctl_rtl.o \
./drivers/staging/rtl8712/rtl871x_ioctl_set.o \
./drivers/staging/rtl8712/rtl871x_mlme.o \
./drivers/staging/rtl8712/rtl871x_mp.o \
./drivers/staging/rtl8712/rtl871x_mp_ioctl.o \
./drivers/staging/rtl8712/rtl871x_pwrctrl.o \
./drivers/staging/rtl8712/rtl871x_recv.o \
./drivers/staging/rtl8712/rtl871x_security.o \
./drivers/staging/rtl8712/rtl871x_sta_mgt.o \
./drivers/staging/rtl8712/rtl871x_xmit.o \
./drivers/staging/rtl8712/usb_halinit.o \
./drivers/staging/rtl8712/usb_intf.o \
./drivers/staging/rtl8712/usb_ops.o \
./drivers/staging/rtl8712/usb_ops_linux.o \
./drivers/staging/rtl8712/xmit_linux.o 

C_DEPS += \
./drivers/staging/rtl8712/hal_init.d \
./drivers/staging/rtl8712/ieee80211.d \
./drivers/staging/rtl8712/mlme_linux.d \
./drivers/staging/rtl8712/os_intfs.d \
./drivers/staging/rtl8712/recv_linux.d \
./drivers/staging/rtl8712/rtl8712_cmd.d \
./drivers/staging/rtl8712/rtl8712_efuse.d \
./drivers/staging/rtl8712/rtl8712_io.d \
./drivers/staging/rtl8712/rtl8712_led.d \
./drivers/staging/rtl8712/rtl8712_recv.d \
./drivers/staging/rtl8712/rtl8712_xmit.d \
./drivers/staging/rtl8712/rtl871x_cmd.d \
./drivers/staging/rtl8712/rtl871x_eeprom.d \
./drivers/staging/rtl8712/rtl871x_io.d \
./drivers/staging/rtl8712/rtl871x_ioctl_linux.d \
./drivers/staging/rtl8712/rtl871x_ioctl_rtl.d \
./drivers/staging/rtl8712/rtl871x_ioctl_set.d \
./drivers/staging/rtl8712/rtl871x_mlme.d \
./drivers/staging/rtl8712/rtl871x_mp.d \
./drivers/staging/rtl8712/rtl871x_mp_ioctl.d \
./drivers/staging/rtl8712/rtl871x_pwrctrl.d \
./drivers/staging/rtl8712/rtl871x_recv.d \
./drivers/staging/rtl8712/rtl871x_security.d \
./drivers/staging/rtl8712/rtl871x_sta_mgt.d \
./drivers/staging/rtl8712/rtl871x_xmit.d \
./drivers/staging/rtl8712/usb_halinit.d \
./drivers/staging/rtl8712/usb_intf.d \
./drivers/staging/rtl8712/usb_ops.d \
./drivers/staging/rtl8712/usb_ops_linux.d \
./drivers/staging/rtl8712/xmit_linux.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/rtl8712/%.o: ../drivers/staging/rtl8712/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


