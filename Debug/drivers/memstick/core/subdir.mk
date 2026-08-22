################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/memstick/core/memstick.c \
../drivers/memstick/core/mspro_block.c 

OBJS += \
./drivers/memstick/core/memstick.o \
./drivers/memstick/core/mspro_block.o 

C_DEPS += \
./drivers/memstick/core/memstick.d \
./drivers/memstick/core/mspro_block.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/memstick/core/%.o: ../drivers/memstick/core/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


