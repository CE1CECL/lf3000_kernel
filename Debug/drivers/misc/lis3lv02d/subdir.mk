################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/misc/lis3lv02d/built-in.o 

C_SRCS += \
../drivers/misc/lis3lv02d/lis3lv02d.c \
../drivers/misc/lis3lv02d/lis3lv02d_i2c.c \
../drivers/misc/lis3lv02d/lis3lv02d_spi.c 

OBJS += \
./drivers/misc/lis3lv02d/lis3lv02d.o \
./drivers/misc/lis3lv02d/lis3lv02d_i2c.o \
./drivers/misc/lis3lv02d/lis3lv02d_spi.o 

C_DEPS += \
./drivers/misc/lis3lv02d/lis3lv02d.d \
./drivers/misc/lis3lv02d/lis3lv02d_i2c.d \
./drivers/misc/lis3lv02d/lis3lv02d_spi.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/misc/lis3lv02d/%.o: ../drivers/misc/lis3lv02d/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


