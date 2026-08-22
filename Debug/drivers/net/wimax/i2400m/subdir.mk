################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/wimax/i2400m/control.c \
../drivers/net/wimax/i2400m/debugfs.c \
../drivers/net/wimax/i2400m/driver.c \
../drivers/net/wimax/i2400m/fw.c \
../drivers/net/wimax/i2400m/netdev.c \
../drivers/net/wimax/i2400m/op-rfkill.c \
../drivers/net/wimax/i2400m/rx.c \
../drivers/net/wimax/i2400m/sdio-fw.c \
../drivers/net/wimax/i2400m/sdio-rx.c \
../drivers/net/wimax/i2400m/sdio-tx.c \
../drivers/net/wimax/i2400m/sdio.c \
../drivers/net/wimax/i2400m/sysfs.c \
../drivers/net/wimax/i2400m/tx.c \
../drivers/net/wimax/i2400m/usb-fw.c \
../drivers/net/wimax/i2400m/usb-notif.c \
../drivers/net/wimax/i2400m/usb-rx.c \
../drivers/net/wimax/i2400m/usb-tx.c \
../drivers/net/wimax/i2400m/usb.c 

OBJS += \
./drivers/net/wimax/i2400m/control.o \
./drivers/net/wimax/i2400m/debugfs.o \
./drivers/net/wimax/i2400m/driver.o \
./drivers/net/wimax/i2400m/fw.o \
./drivers/net/wimax/i2400m/netdev.o \
./drivers/net/wimax/i2400m/op-rfkill.o \
./drivers/net/wimax/i2400m/rx.o \
./drivers/net/wimax/i2400m/sdio-fw.o \
./drivers/net/wimax/i2400m/sdio-rx.o \
./drivers/net/wimax/i2400m/sdio-tx.o \
./drivers/net/wimax/i2400m/sdio.o \
./drivers/net/wimax/i2400m/sysfs.o \
./drivers/net/wimax/i2400m/tx.o \
./drivers/net/wimax/i2400m/usb-fw.o \
./drivers/net/wimax/i2400m/usb-notif.o \
./drivers/net/wimax/i2400m/usb-rx.o \
./drivers/net/wimax/i2400m/usb-tx.o \
./drivers/net/wimax/i2400m/usb.o 

C_DEPS += \
./drivers/net/wimax/i2400m/control.d \
./drivers/net/wimax/i2400m/debugfs.d \
./drivers/net/wimax/i2400m/driver.d \
./drivers/net/wimax/i2400m/fw.d \
./drivers/net/wimax/i2400m/netdev.d \
./drivers/net/wimax/i2400m/op-rfkill.d \
./drivers/net/wimax/i2400m/rx.d \
./drivers/net/wimax/i2400m/sdio-fw.d \
./drivers/net/wimax/i2400m/sdio-rx.d \
./drivers/net/wimax/i2400m/sdio-tx.d \
./drivers/net/wimax/i2400m/sdio.d \
./drivers/net/wimax/i2400m/sysfs.d \
./drivers/net/wimax/i2400m/tx.d \
./drivers/net/wimax/i2400m/usb-fw.d \
./drivers/net/wimax/i2400m/usb-notif.d \
./drivers/net/wimax/i2400m/usb-rx.d \
./drivers/net/wimax/i2400m/usb-tx.d \
./drivers/net/wimax/i2400m/usb.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/wimax/i2400m/%.o: ../drivers/net/wimax/i2400m/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


