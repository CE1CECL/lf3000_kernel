################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/cadence/at91_ether.c \
../drivers/net/ethernet/cadence/macb.c 

OBJS += \
./drivers/net/ethernet/cadence/at91_ether.o \
./drivers/net/ethernet/cadence/macb.o 

C_DEPS += \
./drivers/net/ethernet/cadence/at91_ether.d \
./drivers/net/ethernet/cadence/macb.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/cadence/%.o: ../drivers/net/ethernet/cadence/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


