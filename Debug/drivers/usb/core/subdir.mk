################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/usb/core/buffer.c \
../drivers/usb/core/config.c \
../drivers/usb/core/devices.c \
../drivers/usb/core/devio.c \
../drivers/usb/core/driver.c \
../drivers/usb/core/endpoint.c \
../drivers/usb/core/file.c \
../drivers/usb/core/generic.c \
../drivers/usb/core/hcd-pci.c \
../drivers/usb/core/hcd.c \
../drivers/usb/core/hub.c \
../drivers/usb/core/inode.c \
../drivers/usb/core/message.c \
../drivers/usb/core/notify.c \
../drivers/usb/core/quirks.c \
../drivers/usb/core/sysfs.c \
../drivers/usb/core/urb.c \
../drivers/usb/core/usb.c 

OBJS += \
./drivers/usb/core/buffer.o \
./drivers/usb/core/config.o \
./drivers/usb/core/devices.o \
./drivers/usb/core/devio.o \
./drivers/usb/core/driver.o \
./drivers/usb/core/endpoint.o \
./drivers/usb/core/file.o \
./drivers/usb/core/generic.o \
./drivers/usb/core/hcd-pci.o \
./drivers/usb/core/hcd.o \
./drivers/usb/core/hub.o \
./drivers/usb/core/inode.o \
./drivers/usb/core/message.o \
./drivers/usb/core/notify.o \
./drivers/usb/core/quirks.o \
./drivers/usb/core/sysfs.o \
./drivers/usb/core/urb.o \
./drivers/usb/core/usb.o 

C_DEPS += \
./drivers/usb/core/buffer.d \
./drivers/usb/core/config.d \
./drivers/usb/core/devices.d \
./drivers/usb/core/devio.d \
./drivers/usb/core/driver.d \
./drivers/usb/core/endpoint.d \
./drivers/usb/core/file.d \
./drivers/usb/core/generic.d \
./drivers/usb/core/hcd-pci.d \
./drivers/usb/core/hcd.d \
./drivers/usb/core/hub.d \
./drivers/usb/core/inode.d \
./drivers/usb/core/message.d \
./drivers/usb/core/notify.d \
./drivers/usb/core/quirks.d \
./drivers/usb/core/sysfs.d \
./drivers/usb/core/urb.d \
./drivers/usb/core/usb.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/usb/core/%.o: ../drivers/usb/core/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


