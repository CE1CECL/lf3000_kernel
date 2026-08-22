################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/video/savage/savagefb-i2c.c \
../drivers/video/savage/savagefb_accel.c \
../drivers/video/savage/savagefb_driver.c 

OBJS += \
./drivers/video/savage/savagefb-i2c.o \
./drivers/video/savage/savagefb_accel.o \
./drivers/video/savage/savagefb_driver.o 

C_DEPS += \
./drivers/video/savage/savagefb-i2c.d \
./drivers/video/savage/savagefb_accel.d \
./drivers/video/savage/savagefb_driver.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/video/savage/%.o: ../drivers/video/savage/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


