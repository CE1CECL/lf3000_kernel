################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/oss/dmasound/dmasound_atari.c \
../sound/oss/dmasound/dmasound_core.c \
../sound/oss/dmasound/dmasound_paula.c \
../sound/oss/dmasound/dmasound_q40.c 

OBJS += \
./sound/oss/dmasound/dmasound_atari.o \
./sound/oss/dmasound/dmasound_core.o \
./sound/oss/dmasound/dmasound_paula.o \
./sound/oss/dmasound/dmasound_q40.o 

C_DEPS += \
./sound/oss/dmasound/dmasound_atari.d \
./sound/oss/dmasound/dmasound_core.d \
./sound/oss/dmasound/dmasound_paula.d \
./sound/oss/dmasound/dmasound_q40.d 


# Each subdirectory must supply rules for building sources it contributes
sound/oss/dmasound/%.o: ../sound/oss/dmasound/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


