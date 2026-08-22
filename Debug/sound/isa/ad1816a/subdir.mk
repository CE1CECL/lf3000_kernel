################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/isa/ad1816a/ad1816a.c \
../sound/isa/ad1816a/ad1816a_lib.c 

OBJS += \
./sound/isa/ad1816a/ad1816a.o \
./sound/isa/ad1816a/ad1816a_lib.o 

C_DEPS += \
./sound/isa/ad1816a/ad1816a.d \
./sound/isa/ad1816a/ad1816a_lib.d 


# Each subdirectory must supply rules for building sources it contributes
sound/isa/ad1816a/%.o: ../sound/isa/ad1816a/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


