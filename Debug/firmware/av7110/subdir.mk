################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../firmware/av7110/Boot.S 

OBJS += \
./firmware/av7110/Boot.o 

S_UPPER_DEPS += \
./firmware/av7110/Boot.d 


# Each subdirectory must supply rules for building sources it contributes
firmware/av7110/%.o: ../firmware/av7110/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC Assembler'
	arm-elf-gcc -x assembler-with-cpp -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


