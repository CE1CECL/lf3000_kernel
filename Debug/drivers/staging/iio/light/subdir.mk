################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/iio/light/bh1721fvc.c \
../drivers/staging/iio/light/isl29018.c \
../drivers/staging/iio/light/tsl2563.c \
../drivers/staging/iio/light/tsl2583.c 

OBJS += \
./drivers/staging/iio/light/bh1721fvc.o \
./drivers/staging/iio/light/isl29018.o \
./drivers/staging/iio/light/tsl2563.o \
./drivers/staging/iio/light/tsl2583.o 

C_DEPS += \
./drivers/staging/iio/light/bh1721fvc.d \
./drivers/staging/iio/light/isl29018.d \
./drivers/staging/iio/light/tsl2563.d \
./drivers/staging/iio/light/tsl2583.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/iio/light/%.o: ../drivers/staging/iio/light/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


