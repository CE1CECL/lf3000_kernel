################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/pci/pcie/aspm.c \
../drivers/pci/pcie/pme.c \
../drivers/pci/pcie/portdrv_acpi.c \
../drivers/pci/pcie/portdrv_bus.c \
../drivers/pci/pcie/portdrv_core.c \
../drivers/pci/pcie/portdrv_pci.c 

OBJS += \
./drivers/pci/pcie/aspm.o \
./drivers/pci/pcie/pme.o \
./drivers/pci/pcie/portdrv_acpi.o \
./drivers/pci/pcie/portdrv_bus.o \
./drivers/pci/pcie/portdrv_core.o \
./drivers/pci/pcie/portdrv_pci.o 

C_DEPS += \
./drivers/pci/pcie/aspm.d \
./drivers/pci/pcie/pme.d \
./drivers/pci/pcie/portdrv_acpi.d \
./drivers/pci/pcie/portdrv_bus.d \
./drivers/pci/pcie/portdrv_core.d \
./drivers/pci/pcie/portdrv_pci.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/pci/pcie/%.o: ../drivers/pci/pcie/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


