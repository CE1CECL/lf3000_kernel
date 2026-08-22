################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/iio/iio_dummy_evgen.c \
../drivers/staging/iio/iio_hwmon.c \
../drivers/staging/iio/iio_simple_dummy.c \
../drivers/staging/iio/iio_simple_dummy_buffer.c \
../drivers/staging/iio/iio_simple_dummy_events.c \
../drivers/staging/iio/industrialio-buffer.c \
../drivers/staging/iio/industrialio-core.c \
../drivers/staging/iio/industrialio-event.c \
../drivers/staging/iio/industrialio-trigger.c \
../drivers/staging/iio/inkern.c \
../drivers/staging/iio/kfifo_buf.c \
../drivers/staging/iio/ring_sw.c 

OBJS += \
./drivers/staging/iio/iio_dummy_evgen.o \
./drivers/staging/iio/iio_hwmon.o \
./drivers/staging/iio/iio_simple_dummy.o \
./drivers/staging/iio/iio_simple_dummy_buffer.o \
./drivers/staging/iio/iio_simple_dummy_events.o \
./drivers/staging/iio/industrialio-buffer.o \
./drivers/staging/iio/industrialio-core.o \
./drivers/staging/iio/industrialio-event.o \
./drivers/staging/iio/industrialio-trigger.o \
./drivers/staging/iio/inkern.o \
./drivers/staging/iio/kfifo_buf.o \
./drivers/staging/iio/ring_sw.o 

C_DEPS += \
./drivers/staging/iio/iio_dummy_evgen.d \
./drivers/staging/iio/iio_hwmon.d \
./drivers/staging/iio/iio_simple_dummy.d \
./drivers/staging/iio/iio_simple_dummy_buffer.d \
./drivers/staging/iio/iio_simple_dummy_events.d \
./drivers/staging/iio/industrialio-buffer.d \
./drivers/staging/iio/industrialio-core.d \
./drivers/staging/iio/industrialio-event.d \
./drivers/staging/iio/industrialio-trigger.d \
./drivers/staging/iio/inkern.d \
./drivers/staging/iio/kfifo_buf.d \
./drivers/staging/iio/ring_sw.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/iio/%.o: ../drivers/staging/iio/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


