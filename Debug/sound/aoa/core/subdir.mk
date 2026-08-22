################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/aoa/core/alsa.c \
../sound/aoa/core/core.c \
../sound/aoa/core/gpio-feature.c \
../sound/aoa/core/gpio-pmf.c 

OBJS += \
./sound/aoa/core/alsa.o \
./sound/aoa/core/core.o \
./sound/aoa/core/gpio-feature.o \
./sound/aoa/core/gpio-pmf.o 

C_DEPS += \
./sound/aoa/core/alsa.d \
./sound/aoa/core/core.d \
./sound/aoa/core/gpio-feature.d \
./sound/aoa/core/gpio-pmf.d 


# Each subdirectory must supply rules for building sources it contributes
sound/aoa/core/%.o: ../sound/aoa/core/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


