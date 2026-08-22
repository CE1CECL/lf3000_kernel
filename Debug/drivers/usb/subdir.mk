################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/usb/usb-common.c \
../drivers/usb/usb-skeleton.c 

OBJS += \
./drivers/usb/usb-common.o \
./drivers/usb/usb-skeleton.o 

C_DEPS += \
./drivers/usb/usb-common.d \
./drivers/usb/usb-skeleton.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/usb/%.o: ../drivers/usb/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


