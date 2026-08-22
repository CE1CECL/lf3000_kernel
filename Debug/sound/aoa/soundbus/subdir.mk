################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/aoa/soundbus/core.c \
../sound/aoa/soundbus/sysfs.c 

OBJS += \
./sound/aoa/soundbus/core.o \
./sound/aoa/soundbus/sysfs.o 

C_DEPS += \
./sound/aoa/soundbus/core.d \
./sound/aoa/soundbus/sysfs.d 


# Each subdirectory must supply rules for building sources it contributes
sound/aoa/soundbus/%.o: ../sound/aoa/soundbus/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


