################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/iio/addac/adt7316-i2c.c \
../drivers/staging/iio/addac/adt7316-spi.c \
../drivers/staging/iio/addac/adt7316.c 

OBJS += \
./drivers/staging/iio/addac/adt7316-i2c.o \
./drivers/staging/iio/addac/adt7316-spi.o \
./drivers/staging/iio/addac/adt7316.o 

C_DEPS += \
./drivers/staging/iio/addac/adt7316-i2c.d \
./drivers/staging/iio/addac/adt7316-spi.d \
./drivers/staging/iio/addac/adt7316.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/iio/addac/%.o: ../drivers/staging/iio/addac/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


