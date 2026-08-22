################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../firmware/keyspan_pda/keyspan_pda.S \
../firmware/keyspan_pda/xircom_pgs.S 

OBJS += \
./firmware/keyspan_pda/keyspan_pda.o \
./firmware/keyspan_pda/xircom_pgs.o 

S_UPPER_DEPS += \
./firmware/keyspan_pda/keyspan_pda.d \
./firmware/keyspan_pda/xircom_pgs.d 


# Each subdirectory must supply rules for building sources it contributes
firmware/keyspan_pda/%.o: ../firmware/keyspan_pda/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC Assembler'
	arm-elf-gcc -x assembler-with-cpp -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


