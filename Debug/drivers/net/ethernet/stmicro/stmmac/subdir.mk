################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/stmicro/stmmac/chain_mode.c \
../drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.c \
../drivers/net/ethernet/stmicro/stmmac/dwmac1000_dma.c \
../drivers/net/ethernet/stmicro/stmmac/dwmac100_core.c \
../drivers/net/ethernet/stmicro/stmmac/dwmac100_dma.c \
../drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c \
../drivers/net/ethernet/stmicro/stmmac/enh_desc.c \
../drivers/net/ethernet/stmicro/stmmac/mmc_core.c \
../drivers/net/ethernet/stmicro/stmmac/norm_desc.c \
../drivers/net/ethernet/stmicro/stmmac/ring_mode.c \
../drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c \
../drivers/net/ethernet/stmicro/stmmac/stmmac_main.c \
../drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c \
../drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c \
../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c \
../drivers/net/ethernet/stmicro/stmmac/stmmac_timer.c 

OBJS += \
./drivers/net/ethernet/stmicro/stmmac/chain_mode.o \
./drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.o \
./drivers/net/ethernet/stmicro/stmmac/dwmac1000_dma.o \
./drivers/net/ethernet/stmicro/stmmac/dwmac100_core.o \
./drivers/net/ethernet/stmicro/stmmac/dwmac100_dma.o \
./drivers/net/ethernet/stmicro/stmmac/dwmac_lib.o \
./drivers/net/ethernet/stmicro/stmmac/enh_desc.o \
./drivers/net/ethernet/stmicro/stmmac/mmc_core.o \
./drivers/net/ethernet/stmicro/stmmac/norm_desc.o \
./drivers/net/ethernet/stmicro/stmmac/ring_mode.o \
./drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.o \
./drivers/net/ethernet/stmicro/stmmac/stmmac_main.o \
./drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.o \
./drivers/net/ethernet/stmicro/stmmac/stmmac_pci.o \
./drivers/net/ethernet/stmicro/stmmac/stmmac_platform.o \
./drivers/net/ethernet/stmicro/stmmac/stmmac_timer.o 

C_DEPS += \
./drivers/net/ethernet/stmicro/stmmac/chain_mode.d \
./drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.d \
./drivers/net/ethernet/stmicro/stmmac/dwmac1000_dma.d \
./drivers/net/ethernet/stmicro/stmmac/dwmac100_core.d \
./drivers/net/ethernet/stmicro/stmmac/dwmac100_dma.d \
./drivers/net/ethernet/stmicro/stmmac/dwmac_lib.d \
./drivers/net/ethernet/stmicro/stmmac/enh_desc.d \
./drivers/net/ethernet/stmicro/stmmac/mmc_core.d \
./drivers/net/ethernet/stmicro/stmmac/norm_desc.d \
./drivers/net/ethernet/stmicro/stmmac/ring_mode.d \
./drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.d \
./drivers/net/ethernet/stmicro/stmmac/stmmac_main.d \
./drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.d \
./drivers/net/ethernet/stmicro/stmmac/stmmac_pci.d \
./drivers/net/ethernet/stmicro/stmmac/stmmac_platform.d \
./drivers/net/ethernet/stmicro/stmmac/stmmac_timer.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/stmicro/stmmac/%.o: ../drivers/net/ethernet/stmicro/stmmac/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


