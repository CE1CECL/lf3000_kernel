################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../samples/hw_breakpoint/data_breakpoint.c 

OBJS += \
./samples/hw_breakpoint/data_breakpoint.o 

C_DEPS += \
./samples/hw_breakpoint/data_breakpoint.d 


# Each subdirectory must supply rules for building sources it contributes
samples/hw_breakpoint/%.o: ../samples/hw_breakpoint/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


