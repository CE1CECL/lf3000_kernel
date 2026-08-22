################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/aoa/codecs/onyx.c \
../sound/aoa/codecs/tas.c \
../sound/aoa/codecs/toonie.c 

OBJS += \
./sound/aoa/codecs/onyx.o \
./sound/aoa/codecs/tas.o \
./sound/aoa/codecs/toonie.o 

C_DEPS += \
./sound/aoa/codecs/onyx.d \
./sound/aoa/codecs/tas.d \
./sound/aoa/codecs/toonie.d 


# Each subdirectory must supply rules for building sources it contributes
sound/aoa/codecs/%.o: ../sound/aoa/codecs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


