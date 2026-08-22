################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/pci/ali5451/ali5451.c 

OBJS += \
./sound/pci/ali5451/ali5451.o 

C_DEPS += \
./sound/pci/ali5451/ali5451.d 


# Each subdirectory must supply rules for building sources it contributes
sound/pci/ali5451/%.o: ../sound/pci/ali5451/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


