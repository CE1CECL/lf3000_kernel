################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/iio/dds/ad5930.c \
../drivers/staging/iio/dds/ad9832.c \
../drivers/staging/iio/dds/ad9834.c \
../drivers/staging/iio/dds/ad9850.c \
../drivers/staging/iio/dds/ad9852.c \
../drivers/staging/iio/dds/ad9910.c \
../drivers/staging/iio/dds/ad9951.c 

OBJS += \
./drivers/staging/iio/dds/ad5930.o \
./drivers/staging/iio/dds/ad9832.o \
./drivers/staging/iio/dds/ad9834.o \
./drivers/staging/iio/dds/ad9850.o \
./drivers/staging/iio/dds/ad9852.o \
./drivers/staging/iio/dds/ad9910.o \
./drivers/staging/iio/dds/ad9951.o 

C_DEPS += \
./drivers/staging/iio/dds/ad5930.d \
./drivers/staging/iio/dds/ad9832.d \
./drivers/staging/iio/dds/ad9834.d \
./drivers/staging/iio/dds/ad9850.d \
./drivers/staging/iio/dds/ad9852.d \
./drivers/staging/iio/dds/ad9910.d \
./drivers/staging/iio/dds/ad9951.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/iio/dds/%.o: ../drivers/staging/iio/dds/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


