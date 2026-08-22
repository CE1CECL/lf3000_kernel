################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
ASM_SRCS += \
../firmware/dsp56k/bootstrap.asm 

OBJS += \
./firmware/dsp56k/bootstrap.o 

ASM_DEPS += \
./firmware/dsp56k/bootstrap.d 


# Each subdirectory must supply rules for building sources it contributes
firmware/dsp56k/%.o: ../firmware/dsp56k/%.asm
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC Assembler'
	arm-elf-gcc -x assembler-with-cpp -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


