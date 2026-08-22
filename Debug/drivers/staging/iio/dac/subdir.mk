################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/iio/dac/ad5064.c \
../drivers/staging/iio/dac/ad5360.c \
../drivers/staging/iio/dac/ad5380.c \
../drivers/staging/iio/dac/ad5421.c \
../drivers/staging/iio/dac/ad5446.c \
../drivers/staging/iio/dac/ad5504.c \
../drivers/staging/iio/dac/ad5624r_spi.c \
../drivers/staging/iio/dac/ad5686.c \
../drivers/staging/iio/dac/ad5764.c \
../drivers/staging/iio/dac/ad5791.c \
../drivers/staging/iio/dac/max517.c 

OBJS += \
./drivers/staging/iio/dac/ad5064.o \
./drivers/staging/iio/dac/ad5360.o \
./drivers/staging/iio/dac/ad5380.o \
./drivers/staging/iio/dac/ad5421.o \
./drivers/staging/iio/dac/ad5446.o \
./drivers/staging/iio/dac/ad5504.o \
./drivers/staging/iio/dac/ad5624r_spi.o \
./drivers/staging/iio/dac/ad5686.o \
./drivers/staging/iio/dac/ad5764.o \
./drivers/staging/iio/dac/ad5791.o \
./drivers/staging/iio/dac/max517.o 

C_DEPS += \
./drivers/staging/iio/dac/ad5064.d \
./drivers/staging/iio/dac/ad5360.d \
./drivers/staging/iio/dac/ad5380.d \
./drivers/staging/iio/dac/ad5421.d \
./drivers/staging/iio/dac/ad5446.d \
./drivers/staging/iio/dac/ad5504.d \
./drivers/staging/iio/dac/ad5624r_spi.d \
./drivers/staging/iio/dac/ad5686.d \
./drivers/staging/iio/dac/ad5764.d \
./drivers/staging/iio/dac/ad5791.d \
./drivers/staging/iio/dac/max517.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/iio/dac/%.o: ../drivers/staging/iio/dac/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


