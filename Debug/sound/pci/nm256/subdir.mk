################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/pci/nm256/nm256.c \
../sound/pci/nm256/nm256_coef.c 

OBJS += \
./sound/pci/nm256/nm256.o \
./sound/pci/nm256/nm256_coef.o 

C_DEPS += \
./sound/pci/nm256/nm256.d \
./sound/pci/nm256/nm256_coef.d 


# Each subdirectory must supply rules for building sources it contributes
sound/pci/nm256/%.o: ../sound/pci/nm256/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


