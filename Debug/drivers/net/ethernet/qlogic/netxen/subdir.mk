################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/qlogic/netxen/netxen_nic_ctx.c \
../drivers/net/ethernet/qlogic/netxen/netxen_nic_ethtool.c \
../drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c \
../drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c \
../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c 

OBJS += \
./drivers/net/ethernet/qlogic/netxen/netxen_nic_ctx.o \
./drivers/net/ethernet/qlogic/netxen/netxen_nic_ethtool.o \
./drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.o \
./drivers/net/ethernet/qlogic/netxen/netxen_nic_init.o \
./drivers/net/ethernet/qlogic/netxen/netxen_nic_main.o 

C_DEPS += \
./drivers/net/ethernet/qlogic/netxen/netxen_nic_ctx.d \
./drivers/net/ethernet/qlogic/netxen/netxen_nic_ethtool.d \
./drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.d \
./drivers/net/ethernet/qlogic/netxen/netxen_nic_init.d \
./drivers/net/ethernet/qlogic/netxen/netxen_nic_main.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/qlogic/netxen/%.o: ../drivers/net/ethernet/qlogic/netxen/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


