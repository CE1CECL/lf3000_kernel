################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/pci/vx222/vx222.c \
../sound/pci/vx222/vx222_ops.c 

OBJS += \
./sound/pci/vx222/vx222.o \
./sound/pci/vx222/vx222_ops.o 

C_DEPS += \
./sound/pci/vx222/vx222.d \
./sound/pci/vx222/vx222_ops.d 


# Each subdirectory must supply rules for building sources it contributes
sound/pci/vx222/%.o: ../sound/pci/vx222/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


