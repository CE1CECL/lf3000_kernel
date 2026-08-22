################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/can/usb/peak_usb/pcan_usb.c \
../drivers/net/can/usb/peak_usb/pcan_usb_core.c \
../drivers/net/can/usb/peak_usb/pcan_usb_pro.c 

OBJS += \
./drivers/net/can/usb/peak_usb/pcan_usb.o \
./drivers/net/can/usb/peak_usb/pcan_usb_core.o \
./drivers/net/can/usb/peak_usb/pcan_usb_pro.o 

C_DEPS += \
./drivers/net/can/usb/peak_usb/pcan_usb.d \
./drivers/net/can/usb/peak_usb/pcan_usb_core.d \
./drivers/net/can/usb/peak_usb/pcan_usb_pro.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/can/usb/peak_usb/%.o: ../drivers/net/can/usb/peak_usb/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


