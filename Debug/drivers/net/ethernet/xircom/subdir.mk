################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/xircom/xirc2ps_cs.c 

OBJS += \
./drivers/net/ethernet/xircom/xirc2ps_cs.o 

C_DEPS += \
./drivers/net/ethernet/xircom/xirc2ps_cs.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/xircom/%.o: ../drivers/net/ethernet/xircom/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


