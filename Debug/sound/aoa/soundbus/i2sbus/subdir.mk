################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/aoa/soundbus/i2sbus/control.c \
../sound/aoa/soundbus/i2sbus/core.c \
../sound/aoa/soundbus/i2sbus/pcm.c 

OBJS += \
./sound/aoa/soundbus/i2sbus/control.o \
./sound/aoa/soundbus/i2sbus/core.o \
./sound/aoa/soundbus/i2sbus/pcm.o 

C_DEPS += \
./sound/aoa/soundbus/i2sbus/control.d \
./sound/aoa/soundbus/i2sbus/core.d \
./sound/aoa/soundbus/i2sbus/pcm.d 


# Each subdirectory must supply rules for building sources it contributes
sound/aoa/soundbus/i2sbus/%.o: ../sound/aoa/soundbus/i2sbus/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


