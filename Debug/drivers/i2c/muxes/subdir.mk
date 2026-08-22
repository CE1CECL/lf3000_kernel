################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/i2c/muxes/built-in.o 

C_SRCS += \
../drivers/i2c/muxes/gpio-i2cmux.c \
../drivers/i2c/muxes/pca9541.c \
../drivers/i2c/muxes/pca954x.c 

OBJS += \
./drivers/i2c/muxes/gpio-i2cmux.o \
./drivers/i2c/muxes/pca9541.o \
./drivers/i2c/muxes/pca954x.o 

C_DEPS += \
./drivers/i2c/muxes/gpio-i2cmux.d \
./drivers/i2c/muxes/pca9541.d \
./drivers/i2c/muxes/pca954x.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/i2c/muxes/%.o: ../drivers/i2c/muxes/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


