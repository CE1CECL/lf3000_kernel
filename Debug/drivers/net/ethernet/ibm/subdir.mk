################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/ibm/ibmveth.c 

OBJS += \
./drivers/net/ethernet/ibm/ibmveth.o 

C_DEPS += \
./drivers/net/ethernet/ibm/ibmveth.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/ibm/%.o: ../drivers/net/ethernet/ibm/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


