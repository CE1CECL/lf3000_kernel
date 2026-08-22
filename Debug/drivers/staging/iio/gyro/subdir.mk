################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/iio/gyro/adis16060_core.c \
../drivers/staging/iio/gyro/adis16080_core.c \
../drivers/staging/iio/gyro/adis16130_core.c \
../drivers/staging/iio/gyro/adis16260_core.c \
../drivers/staging/iio/gyro/adis16260_ring.c \
../drivers/staging/iio/gyro/adis16260_trigger.c \
../drivers/staging/iio/gyro/adxrs450_core.c 

OBJS += \
./drivers/staging/iio/gyro/adis16060_core.o \
./drivers/staging/iio/gyro/adis16080_core.o \
./drivers/staging/iio/gyro/adis16130_core.o \
./drivers/staging/iio/gyro/adis16260_core.o \
./drivers/staging/iio/gyro/adis16260_ring.o \
./drivers/staging/iio/gyro/adis16260_trigger.o \
./drivers/staging/iio/gyro/adxrs450_core.o 

C_DEPS += \
./drivers/staging/iio/gyro/adis16060_core.d \
./drivers/staging/iio/gyro/adis16080_core.d \
./drivers/staging/iio/gyro/adis16130_core.d \
./drivers/staging/iio/gyro/adis16260_core.d \
./drivers/staging/iio/gyro/adis16260_ring.d \
./drivers/staging/iio/gyro/adis16260_trigger.d \
./drivers/staging/iio/gyro/adxrs450_core.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/iio/gyro/%.o: ../drivers/staging/iio/gyro/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


