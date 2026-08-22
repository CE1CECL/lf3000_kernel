################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/toshiba/ps3_gelic_net.c \
../drivers/net/ethernet/toshiba/ps3_gelic_wireless.c \
../drivers/net/ethernet/toshiba/spider_net.c \
../drivers/net/ethernet/toshiba/spider_net_ethtool.c \
../drivers/net/ethernet/toshiba/tc35815.c 

OBJS += \
./drivers/net/ethernet/toshiba/ps3_gelic_net.o \
./drivers/net/ethernet/toshiba/ps3_gelic_wireless.o \
./drivers/net/ethernet/toshiba/spider_net.o \
./drivers/net/ethernet/toshiba/spider_net_ethtool.o \
./drivers/net/ethernet/toshiba/tc35815.o 

C_DEPS += \
./drivers/net/ethernet/toshiba/ps3_gelic_net.d \
./drivers/net/ethernet/toshiba/ps3_gelic_wireless.d \
./drivers/net/ethernet/toshiba/spider_net.d \
./drivers/net/ethernet/toshiba/spider_net_ethtool.d \
./drivers/net/ethernet/toshiba/tc35815.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/toshiba/%.o: ../drivers/net/ethernet/toshiba/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


