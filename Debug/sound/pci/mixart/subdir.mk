################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/pci/mixart/mixart.c \
../sound/pci/mixart/mixart_core.c \
../sound/pci/mixart/mixart_hwdep.c \
../sound/pci/mixart/mixart_mixer.c 

OBJS += \
./sound/pci/mixart/mixart.o \
./sound/pci/mixart/mixart_core.o \
./sound/pci/mixart/mixart_hwdep.o \
./sound/pci/mixart/mixart_mixer.o 

C_DEPS += \
./sound/pci/mixart/mixart.d \
./sound/pci/mixart/mixart_core.d \
./sound/pci/mixart/mixart_hwdep.d \
./sound/pci/mixart/mixart_mixer.d 


# Each subdirectory must supply rules for building sources it contributes
sound/pci/mixart/%.o: ../sound/pci/mixart/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


