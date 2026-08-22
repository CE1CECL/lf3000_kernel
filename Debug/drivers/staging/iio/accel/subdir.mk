################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/iio/accel/adis16201_core.c \
../drivers/staging/iio/accel/adis16201_ring.c \
../drivers/staging/iio/accel/adis16201_trigger.c \
../drivers/staging/iio/accel/adis16203_core.c \
../drivers/staging/iio/accel/adis16203_ring.c \
../drivers/staging/iio/accel/adis16203_trigger.c \
../drivers/staging/iio/accel/adis16204_core.c \
../drivers/staging/iio/accel/adis16204_ring.c \
../drivers/staging/iio/accel/adis16204_trigger.c \
../drivers/staging/iio/accel/adis16209_core.c \
../drivers/staging/iio/accel/adis16209_ring.c \
../drivers/staging/iio/accel/adis16209_trigger.c \
../drivers/staging/iio/accel/adis16220_core.c \
../drivers/staging/iio/accel/adis16240_core.c \
../drivers/staging/iio/accel/adis16240_ring.c \
../drivers/staging/iio/accel/adis16240_trigger.c \
../drivers/staging/iio/accel/kxsd9.c \
../drivers/staging/iio/accel/lis3l02dq_core.c \
../drivers/staging/iio/accel/lis3l02dq_ring.c \
../drivers/staging/iio/accel/sca3000_core.c \
../drivers/staging/iio/accel/sca3000_ring.c 

OBJS += \
./drivers/staging/iio/accel/adis16201_core.o \
./drivers/staging/iio/accel/adis16201_ring.o \
./drivers/staging/iio/accel/adis16201_trigger.o \
./drivers/staging/iio/accel/adis16203_core.o \
./drivers/staging/iio/accel/adis16203_ring.o \
./drivers/staging/iio/accel/adis16203_trigger.o \
./drivers/staging/iio/accel/adis16204_core.o \
./drivers/staging/iio/accel/adis16204_ring.o \
./drivers/staging/iio/accel/adis16204_trigger.o \
./drivers/staging/iio/accel/adis16209_core.o \
./drivers/staging/iio/accel/adis16209_ring.o \
./drivers/staging/iio/accel/adis16209_trigger.o \
./drivers/staging/iio/accel/adis16220_core.o \
./drivers/staging/iio/accel/adis16240_core.o \
./drivers/staging/iio/accel/adis16240_ring.o \
./drivers/staging/iio/accel/adis16240_trigger.o \
./drivers/staging/iio/accel/kxsd9.o \
./drivers/staging/iio/accel/lis3l02dq_core.o \
./drivers/staging/iio/accel/lis3l02dq_ring.o \
./drivers/staging/iio/accel/sca3000_core.o \
./drivers/staging/iio/accel/sca3000_ring.o 

C_DEPS += \
./drivers/staging/iio/accel/adis16201_core.d \
./drivers/staging/iio/accel/adis16201_ring.d \
./drivers/staging/iio/accel/adis16201_trigger.d \
./drivers/staging/iio/accel/adis16203_core.d \
./drivers/staging/iio/accel/adis16203_ring.d \
./drivers/staging/iio/accel/adis16203_trigger.d \
./drivers/staging/iio/accel/adis16204_core.d \
./drivers/staging/iio/accel/adis16204_ring.d \
./drivers/staging/iio/accel/adis16204_trigger.d \
./drivers/staging/iio/accel/adis16209_core.d \
./drivers/staging/iio/accel/adis16209_ring.d \
./drivers/staging/iio/accel/adis16209_trigger.d \
./drivers/staging/iio/accel/adis16220_core.d \
./drivers/staging/iio/accel/adis16240_core.d \
./drivers/staging/iio/accel/adis16240_ring.d \
./drivers/staging/iio/accel/adis16240_trigger.d \
./drivers/staging/iio/accel/kxsd9.d \
./drivers/staging/iio/accel/lis3l02dq_core.d \
./drivers/staging/iio/accel/lis3l02dq_ring.d \
./drivers/staging/iio/accel/sca3000_core.d \
./drivers/staging/iio/accel/sca3000_ring.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/iio/accel/%.o: ../drivers/staging/iio/accel/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


