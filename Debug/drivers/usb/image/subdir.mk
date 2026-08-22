################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/usb/image/mdc800.c \
../drivers/usb/image/microtek.c 

OBJS += \
./drivers/usb/image/mdc800.o \
./drivers/usb/image/microtek.o 

C_DEPS += \
./drivers/usb/image/mdc800.d \
./drivers/usb/image/microtek.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/usb/image/%.o: ../drivers/usb/image/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


