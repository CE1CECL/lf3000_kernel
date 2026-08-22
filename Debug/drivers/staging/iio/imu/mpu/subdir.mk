################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/iio/imu/mpu/dmpDefaultMPU6050.c \
../drivers/staging/iio/imu/mpu/inv_mpu3050_iio.c \
../drivers/staging/iio/imu/mpu/inv_mpu_core.c \
../drivers/staging/iio/imu/mpu/inv_mpu_misc.c \
../drivers/staging/iio/imu/mpu/inv_mpu_ring.c \
../drivers/staging/iio/imu/mpu/inv_mpu_trigger.c \
../drivers/staging/iio/imu/mpu/inv_slave_bma250.c 

OBJS += \
./drivers/staging/iio/imu/mpu/dmpDefaultMPU6050.o \
./drivers/staging/iio/imu/mpu/inv_mpu3050_iio.o \
./drivers/staging/iio/imu/mpu/inv_mpu_core.o \
./drivers/staging/iio/imu/mpu/inv_mpu_misc.o \
./drivers/staging/iio/imu/mpu/inv_mpu_ring.o \
./drivers/staging/iio/imu/mpu/inv_mpu_trigger.o \
./drivers/staging/iio/imu/mpu/inv_slave_bma250.o 

C_DEPS += \
./drivers/staging/iio/imu/mpu/dmpDefaultMPU6050.d \
./drivers/staging/iio/imu/mpu/inv_mpu3050_iio.d \
./drivers/staging/iio/imu/mpu/inv_mpu_core.d \
./drivers/staging/iio/imu/mpu/inv_mpu_misc.d \
./drivers/staging/iio/imu/mpu/inv_mpu_ring.d \
./drivers/staging/iio/imu/mpu/inv_mpu_trigger.d \
./drivers/staging/iio/imu/mpu/inv_slave_bma250.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/iio/imu/mpu/%.o: ../drivers/staging/iio/imu/mpu/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


