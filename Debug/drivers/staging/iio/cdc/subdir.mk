################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/iio/cdc/ad7150.c \
../drivers/staging/iio/cdc/ad7152.c \
../drivers/staging/iio/cdc/ad7746.c 

OBJS += \
./drivers/staging/iio/cdc/ad7150.o \
./drivers/staging/iio/cdc/ad7152.o \
./drivers/staging/iio/cdc/ad7746.o 

C_DEPS += \
./drivers/staging/iio/cdc/ad7150.d \
./drivers/staging/iio/cdc/ad7152.d \
./drivers/staging/iio/cdc/ad7746.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/iio/cdc/%.o: ../drivers/staging/iio/cdc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


