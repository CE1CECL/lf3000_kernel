################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/net/ethernet/davicom/built-in.o \
../drivers/net/ethernet/davicom/dm9000.o 

C_SRCS += \
../drivers/net/ethernet/davicom/dm9000.c 

OBJS += \
./drivers/net/ethernet/davicom/dm9000.o 

C_DEPS += \
./drivers/net/ethernet/davicom/dm9000.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/davicom/%.o: ../drivers/net/ethernet/davicom/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


