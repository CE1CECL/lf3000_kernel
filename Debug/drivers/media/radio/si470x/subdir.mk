################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/radio/si470x/radio-si470x-common.c \
../drivers/media/radio/si470x/radio-si470x-i2c.c \
../drivers/media/radio/si470x/radio-si470x-usb.c 

OBJS += \
./drivers/media/radio/si470x/radio-si470x-common.o \
./drivers/media/radio/si470x/radio-si470x-i2c.o \
./drivers/media/radio/si470x/radio-si470x-usb.o 

C_DEPS += \
./drivers/media/radio/si470x/radio-si470x-common.d \
./drivers/media/radio/si470x/radio-si470x-i2c.d \
./drivers/media/radio/si470x/radio-si470x-usb.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/radio/si470x/%.o: ../drivers/media/radio/si470x/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


