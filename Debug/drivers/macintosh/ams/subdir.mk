################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/macintosh/ams/ams-core.c \
../drivers/macintosh/ams/ams-i2c.c \
../drivers/macintosh/ams/ams-input.c \
../drivers/macintosh/ams/ams-pmu.c 

OBJS += \
./drivers/macintosh/ams/ams-core.o \
./drivers/macintosh/ams/ams-i2c.o \
./drivers/macintosh/ams/ams-input.o \
./drivers/macintosh/ams/ams-pmu.o 

C_DEPS += \
./drivers/macintosh/ams/ams-core.d \
./drivers/macintosh/ams/ams-i2c.d \
./drivers/macintosh/ams/ams-input.d \
./drivers/macintosh/ams/ams-pmu.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/macintosh/ams/%.o: ../drivers/macintosh/ams/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


