################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/pci/trident/trident.c \
../sound/pci/trident/trident_main.c \
../sound/pci/trident/trident_memory.c 

OBJS += \
./sound/pci/trident/trident.o \
./sound/pci/trident/trident_main.o \
./sound/pci/trident/trident_memory.o 

C_DEPS += \
./sound/pci/trident/trident.d \
./sound/pci/trident/trident_main.d \
./sound/pci/trident/trident_memory.d 


# Each subdirectory must supply rules for building sources it contributes
sound/pci/trident/%.o: ../sound/pci/trident/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


