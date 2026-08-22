################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/eisa/eisa-bus.c \
../drivers/eisa/pci_eisa.c \
../drivers/eisa/virtual_root.c 

OBJS += \
./drivers/eisa/eisa-bus.o \
./drivers/eisa/pci_eisa.o \
./drivers/eisa/virtual_root.o 

C_DEPS += \
./drivers/eisa/eisa-bus.d \
./drivers/eisa/pci_eisa.d \
./drivers/eisa/virtual_root.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/eisa/%.o: ../drivers/eisa/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


