################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_api.c \
../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_ethtool.c \
../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c \
../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c \
../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_phy.c 

OBJS += \
./drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_api.o \
./drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_ethtool.o \
./drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.o \
./drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.o \
./drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_phy.o 

C_DEPS += \
./drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_api.d \
./drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_ethtool.d \
./drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_main.d \
./drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.d \
./drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_phy.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/oki-semi/pch_gbe/%.o: ../drivers/net/ethernet/oki-semi/pch_gbe/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


