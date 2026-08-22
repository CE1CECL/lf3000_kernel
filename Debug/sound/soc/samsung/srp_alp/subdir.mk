################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/soc/samsung/srp_alp/srp_alp.c 

OBJS += \
./sound/soc/samsung/srp_alp/srp_alp.o 

C_DEPS += \
./sound/soc/samsung/srp_alp/srp_alp.d 


# Each subdirectory must supply rules for building sources it contributes
sound/soc/samsung/srp_alp/%.o: ../sound/soc/samsung/srp_alp/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


