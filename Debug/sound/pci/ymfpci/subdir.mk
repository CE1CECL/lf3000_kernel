################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/pci/ymfpci/ymfpci.c \
../sound/pci/ymfpci/ymfpci_main.c 

OBJS += \
./sound/pci/ymfpci/ymfpci.o \
./sound/pci/ymfpci/ymfpci_main.o 

C_DEPS += \
./sound/pci/ymfpci/ymfpci.d \
./sound/pci/ymfpci/ymfpci_main.d 


# Each subdirectory must supply rules for building sources it contributes
sound/pci/ymfpci/%.o: ../sound/pci/ymfpci/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


