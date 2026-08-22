################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/idle/built-in.o 

C_SRCS += \
../drivers/idle/i7300_idle.c \
../drivers/idle/intel_idle.c 

OBJS += \
./drivers/idle/i7300_idle.o \
./drivers/idle/intel_idle.o 

C_DEPS += \
./drivers/idle/i7300_idle.d \
./drivers/idle/intel_idle.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/idle/%.o: ../drivers/idle/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


