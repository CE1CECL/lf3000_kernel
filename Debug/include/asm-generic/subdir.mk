################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
ASM_SRCS += \
../include/asm-generic/Kbuild.asm 

OBJS += \
./include/asm-generic/Kbuild.o 

ASM_DEPS += \
./include/asm-generic/Kbuild.d 


# Each subdirectory must supply rules for building sources it contributes
include/asm-generic/%.o: ../include/asm-generic/%.asm
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC Assembler'
	arm-elf-gcc -x assembler-with-cpp -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


