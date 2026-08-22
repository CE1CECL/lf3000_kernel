################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/iio/resolver/ad2s1200.c \
../drivers/staging/iio/resolver/ad2s1210.c \
../drivers/staging/iio/resolver/ad2s90.c 

OBJS += \
./drivers/staging/iio/resolver/ad2s1200.o \
./drivers/staging/iio/resolver/ad2s1210.o \
./drivers/staging/iio/resolver/ad2s90.o 

C_DEPS += \
./drivers/staging/iio/resolver/ad2s1200.d \
./drivers/staging/iio/resolver/ad2s1210.d \
./drivers/staging/iio/resolver/ad2s90.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/iio/resolver/%.o: ../drivers/staging/iio/resolver/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


