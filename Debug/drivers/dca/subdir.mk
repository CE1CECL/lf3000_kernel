################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/dca/dca-core.c \
../drivers/dca/dca-sysfs.c 

OBJS += \
./drivers/dca/dca-core.o \
./drivers/dca/dca-sysfs.o 

C_DEPS += \
./drivers/dca/dca-core.d \
./drivers/dca/dca-sysfs.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/dca/%.o: ../drivers/dca/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


