################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/usb/renesas_usbhs/common.c \
../drivers/usb/renesas_usbhs/fifo.c \
../drivers/usb/renesas_usbhs/mod.c \
../drivers/usb/renesas_usbhs/mod_gadget.c \
../drivers/usb/renesas_usbhs/mod_host.c \
../drivers/usb/renesas_usbhs/pipe.c 

OBJS += \
./drivers/usb/renesas_usbhs/common.o \
./drivers/usb/renesas_usbhs/fifo.o \
./drivers/usb/renesas_usbhs/mod.o \
./drivers/usb/renesas_usbhs/mod_gadget.o \
./drivers/usb/renesas_usbhs/mod_host.o \
./drivers/usb/renesas_usbhs/pipe.o 

C_DEPS += \
./drivers/usb/renesas_usbhs/common.d \
./drivers/usb/renesas_usbhs/fifo.d \
./drivers/usb/renesas_usbhs/mod.d \
./drivers/usb/renesas_usbhs/mod_gadget.d \
./drivers/usb/renesas_usbhs/mod_host.d \
./drivers/usb/renesas_usbhs/pipe.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/usb/renesas_usbhs/%.o: ../drivers/usb/renesas_usbhs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


