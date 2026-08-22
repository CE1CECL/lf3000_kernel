################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/can/usb/ems_usb.c \
../drivers/net/can/usb/esd_usb2.c 

OBJS += \
./drivers/net/can/usb/ems_usb.o \
./drivers/net/can/usb/esd_usb2.o 

C_DEPS += \
./drivers/net/can/usb/ems_usb.d \
./drivers/net/can/usb/esd_usb2.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/can/usb/%.o: ../drivers/net/can/usb/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


