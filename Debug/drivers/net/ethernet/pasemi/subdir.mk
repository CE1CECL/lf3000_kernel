################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/pasemi/pasemi_mac.c \
../drivers/net/ethernet/pasemi/pasemi_mac_ethtool.c 

OBJS += \
./drivers/net/ethernet/pasemi/pasemi_mac.o \
./drivers/net/ethernet/pasemi/pasemi_mac_ethtool.o 

C_DEPS += \
./drivers/net/ethernet/pasemi/pasemi_mac.d \
./drivers/net/ethernet/pasemi/pasemi_mac_ethtool.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/pasemi/%.o: ../drivers/net/ethernet/pasemi/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


