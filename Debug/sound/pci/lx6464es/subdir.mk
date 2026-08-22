################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/pci/lx6464es/lx6464es.c \
../sound/pci/lx6464es/lx_core.c 

OBJS += \
./sound/pci/lx6464es/lx6464es.o \
./sound/pci/lx6464es/lx_core.o 

C_DEPS += \
./sound/pci/lx6464es/lx6464es.d \
./sound/pci/lx6464es/lx_core.d 


# Each subdirectory must supply rules for building sources it contributes
sound/pci/lx6464es/%.o: ../sound/pci/lx6464es/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


