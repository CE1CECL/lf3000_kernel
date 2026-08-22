################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/uwb/i1480/i1480-est.c 

OBJS += \
./drivers/uwb/i1480/i1480-est.o 

C_DEPS += \
./drivers/uwb/i1480/i1480-est.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/uwb/i1480/%.o: ../drivers/uwb/i1480/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


