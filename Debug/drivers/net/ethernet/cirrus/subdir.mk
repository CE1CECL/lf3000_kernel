################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/cirrus/cs89x0.c \
../drivers/net/ethernet/cirrus/ep93xx_eth.c \
../drivers/net/ethernet/cirrus/mac89x0.c 

OBJS += \
./drivers/net/ethernet/cirrus/cs89x0.o \
./drivers/net/ethernet/cirrus/ep93xx_eth.o \
./drivers/net/ethernet/cirrus/mac89x0.o 

C_DEPS += \
./drivers/net/ethernet/cirrus/cs89x0.d \
./drivers/net/ethernet/cirrus/ep93xx_eth.d \
./drivers/net/ethernet/cirrus/mac89x0.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/cirrus/%.o: ../drivers/net/ethernet/cirrus/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


