################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/iio/meter/ade7753.c \
../drivers/staging/iio/meter/ade7754.c \
../drivers/staging/iio/meter/ade7758_core.c \
../drivers/staging/iio/meter/ade7758_ring.c \
../drivers/staging/iio/meter/ade7758_trigger.c \
../drivers/staging/iio/meter/ade7759.c \
../drivers/staging/iio/meter/ade7854-i2c.c \
../drivers/staging/iio/meter/ade7854-spi.c \
../drivers/staging/iio/meter/ade7854.c 

OBJS += \
./drivers/staging/iio/meter/ade7753.o \
./drivers/staging/iio/meter/ade7754.o \
./drivers/staging/iio/meter/ade7758_core.o \
./drivers/staging/iio/meter/ade7758_ring.o \
./drivers/staging/iio/meter/ade7758_trigger.o \
./drivers/staging/iio/meter/ade7759.o \
./drivers/staging/iio/meter/ade7854-i2c.o \
./drivers/staging/iio/meter/ade7854-spi.o \
./drivers/staging/iio/meter/ade7854.o 

C_DEPS += \
./drivers/staging/iio/meter/ade7753.d \
./drivers/staging/iio/meter/ade7754.d \
./drivers/staging/iio/meter/ade7758_core.d \
./drivers/staging/iio/meter/ade7758_ring.d \
./drivers/staging/iio/meter/ade7758_trigger.d \
./drivers/staging/iio/meter/ade7759.d \
./drivers/staging/iio/meter/ade7854-i2c.d \
./drivers/staging/iio/meter/ade7854-spi.d \
./drivers/staging/iio/meter/ade7854.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/iio/meter/%.o: ../drivers/staging/iio/meter/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


