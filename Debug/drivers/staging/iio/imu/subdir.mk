################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/iio/imu/adis16400_core.c \
../drivers/staging/iio/imu/adis16400_ring.c \
../drivers/staging/iio/imu/adis16400_trigger.c 

OBJS += \
./drivers/staging/iio/imu/adis16400_core.o \
./drivers/staging/iio/imu/adis16400_ring.o \
./drivers/staging/iio/imu/adis16400_trigger.o 

C_DEPS += \
./drivers/staging/iio/imu/adis16400_core.d \
./drivers/staging/iio/imu/adis16400_ring.d \
./drivers/staging/iio/imu/adis16400_trigger.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/iio/imu/%.o: ../drivers/staging/iio/imu/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


