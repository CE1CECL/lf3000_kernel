################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tools/power/x86/turbostat/turbostat.c 

OBJS += \
./tools/power/x86/turbostat/turbostat.o 

C_DEPS += \
./tools/power/x86/turbostat/turbostat.d 


# Each subdirectory must supply rules for building sources it contributes
tools/power/x86/turbostat/%.o: ../tools/power/x86/turbostat/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


