################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/sh/aica.c \
../sound/sh/sh_dac_audio.c 

OBJS += \
./sound/sh/aica.o \
./sound/sh/sh_dac_audio.o 

C_DEPS += \
./sound/sh/aica.d \
./sound/sh/sh_dac_audio.d 


# Each subdirectory must supply rules for building sources it contributes
sound/sh/%.o: ../sound/sh/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


