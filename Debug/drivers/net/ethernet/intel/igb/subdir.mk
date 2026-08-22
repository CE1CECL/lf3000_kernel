################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/intel/igb/e1000_82575.c \
../drivers/net/ethernet/intel/igb/e1000_mac.c \
../drivers/net/ethernet/intel/igb/e1000_mbx.c \
../drivers/net/ethernet/intel/igb/e1000_nvm.c \
../drivers/net/ethernet/intel/igb/e1000_phy.c \
../drivers/net/ethernet/intel/igb/igb_ethtool.c \
../drivers/net/ethernet/intel/igb/igb_main.c 

OBJS += \
./drivers/net/ethernet/intel/igb/e1000_82575.o \
./drivers/net/ethernet/intel/igb/e1000_mac.o \
./drivers/net/ethernet/intel/igb/e1000_mbx.o \
./drivers/net/ethernet/intel/igb/e1000_nvm.o \
./drivers/net/ethernet/intel/igb/e1000_phy.o \
./drivers/net/ethernet/intel/igb/igb_ethtool.o \
./drivers/net/ethernet/intel/igb/igb_main.o 

C_DEPS += \
./drivers/net/ethernet/intel/igb/e1000_82575.d \
./drivers/net/ethernet/intel/igb/e1000_mac.d \
./drivers/net/ethernet/intel/igb/e1000_mbx.d \
./drivers/net/ethernet/intel/igb/e1000_nvm.d \
./drivers/net/ethernet/intel/igb/e1000_phy.d \
./drivers/net/ethernet/intel/igb/igb_ethtool.d \
./drivers/net/ethernet/intel/igb/igb_main.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/intel/igb/%.o: ../drivers/net/ethernet/intel/igb/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


