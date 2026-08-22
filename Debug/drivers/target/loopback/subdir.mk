################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/target/loopback/tcm_loop.c 

OBJS += \
./drivers/target/loopback/tcm_loop.o 

C_DEPS += \
./drivers/target/loopback/tcm_loop.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/target/loopback/%.o: ../drivers/target/loopback/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


