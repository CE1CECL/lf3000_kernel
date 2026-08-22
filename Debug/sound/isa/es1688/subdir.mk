################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/isa/es1688/es1688.c \
../sound/isa/es1688/es1688_lib.c 

OBJS += \
./sound/isa/es1688/es1688.o \
./sound/isa/es1688/es1688_lib.o 

C_DEPS += \
./sound/isa/es1688/es1688.d \
./sound/isa/es1688/es1688_lib.d 


# Each subdirectory must supply rules for building sources it contributes
sound/isa/es1688/%.o: ../sound/isa/es1688/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


