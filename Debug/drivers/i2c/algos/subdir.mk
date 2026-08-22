################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/i2c/algos/built-in.o 

C_SRCS += \
../drivers/i2c/algos/i2c-algo-bit.c \
../drivers/i2c/algos/i2c-algo-pca.c \
../drivers/i2c/algos/i2c-algo-pcf.c 

OBJS += \
./drivers/i2c/algos/i2c-algo-bit.o \
./drivers/i2c/algos/i2c-algo-pca.o \
./drivers/i2c/algos/i2c-algo-pcf.o 

C_DEPS += \
./drivers/i2c/algos/i2c-algo-bit.d \
./drivers/i2c/algos/i2c-algo-pca.d \
./drivers/i2c/algos/i2c-algo-pcf.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/i2c/algos/%.o: ../drivers/i2c/algos/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


