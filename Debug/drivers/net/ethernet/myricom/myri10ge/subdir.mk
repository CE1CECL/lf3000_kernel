################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/myricom/myri10ge/myri10ge.c 

OBJS += \
./drivers/net/ethernet/myricom/myri10ge/myri10ge.o 

C_DEPS += \
./drivers/net/ethernet/myricom/myri10ge/myri10ge.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/myricom/myri10ge/%.o: ../drivers/net/ethernet/myricom/myri10ge/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


