################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/iio/trigger/iio-trig-bfin-timer.c \
../drivers/staging/iio/trigger/iio-trig-gpio.c \
../drivers/staging/iio/trigger/iio-trig-periodic-rtc.c \
../drivers/staging/iio/trigger/iio-trig-sysfs.c 

OBJS += \
./drivers/staging/iio/trigger/iio-trig-bfin-timer.o \
./drivers/staging/iio/trigger/iio-trig-gpio.o \
./drivers/staging/iio/trigger/iio-trig-periodic-rtc.o \
./drivers/staging/iio/trigger/iio-trig-sysfs.o 

C_DEPS += \
./drivers/staging/iio/trigger/iio-trig-bfin-timer.d \
./drivers/staging/iio/trigger/iio-trig-gpio.d \
./drivers/staging/iio/trigger/iio-trig-periodic-rtc.d \
./drivers/staging/iio/trigger/iio-trig-sysfs.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/iio/trigger/%.o: ../drivers/staging/iio/trigger/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


