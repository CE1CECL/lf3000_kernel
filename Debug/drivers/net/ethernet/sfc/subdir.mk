################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/sfc/efx.c \
../drivers/net/ethernet/sfc/ethtool.c \
../drivers/net/ethernet/sfc/falcon.c \
../drivers/net/ethernet/sfc/falcon_boards.c \
../drivers/net/ethernet/sfc/falcon_xmac.c \
../drivers/net/ethernet/sfc/filter.c \
../drivers/net/ethernet/sfc/mcdi.c \
../drivers/net/ethernet/sfc/mcdi_mac.c \
../drivers/net/ethernet/sfc/mcdi_mon.c \
../drivers/net/ethernet/sfc/mcdi_phy.c \
../drivers/net/ethernet/sfc/mdio_10g.c \
../drivers/net/ethernet/sfc/mtd.c \
../drivers/net/ethernet/sfc/nic.c \
../drivers/net/ethernet/sfc/qt202x_phy.c \
../drivers/net/ethernet/sfc/rx.c \
../drivers/net/ethernet/sfc/selftest.c \
../drivers/net/ethernet/sfc/siena.c \
../drivers/net/ethernet/sfc/siena_sriov.c \
../drivers/net/ethernet/sfc/tenxpress.c \
../drivers/net/ethernet/sfc/tx.c \
../drivers/net/ethernet/sfc/txc43128_phy.c 

OBJS += \
./drivers/net/ethernet/sfc/efx.o \
./drivers/net/ethernet/sfc/ethtool.o \
./drivers/net/ethernet/sfc/falcon.o \
./drivers/net/ethernet/sfc/falcon_boards.o \
./drivers/net/ethernet/sfc/falcon_xmac.o \
./drivers/net/ethernet/sfc/filter.o \
./drivers/net/ethernet/sfc/mcdi.o \
./drivers/net/ethernet/sfc/mcdi_mac.o \
./drivers/net/ethernet/sfc/mcdi_mon.o \
./drivers/net/ethernet/sfc/mcdi_phy.o \
./drivers/net/ethernet/sfc/mdio_10g.o \
./drivers/net/ethernet/sfc/mtd.o \
./drivers/net/ethernet/sfc/nic.o \
./drivers/net/ethernet/sfc/qt202x_phy.o \
./drivers/net/ethernet/sfc/rx.o \
./drivers/net/ethernet/sfc/selftest.o \
./drivers/net/ethernet/sfc/siena.o \
./drivers/net/ethernet/sfc/siena_sriov.o \
./drivers/net/ethernet/sfc/tenxpress.o \
./drivers/net/ethernet/sfc/tx.o \
./drivers/net/ethernet/sfc/txc43128_phy.o 

C_DEPS += \
./drivers/net/ethernet/sfc/efx.d \
./drivers/net/ethernet/sfc/ethtool.d \
./drivers/net/ethernet/sfc/falcon.d \
./drivers/net/ethernet/sfc/falcon_boards.d \
./drivers/net/ethernet/sfc/falcon_xmac.d \
./drivers/net/ethernet/sfc/filter.d \
./drivers/net/ethernet/sfc/mcdi.d \
./drivers/net/ethernet/sfc/mcdi_mac.d \
./drivers/net/ethernet/sfc/mcdi_mon.d \
./drivers/net/ethernet/sfc/mcdi_phy.d \
./drivers/net/ethernet/sfc/mdio_10g.d \
./drivers/net/ethernet/sfc/mtd.d \
./drivers/net/ethernet/sfc/nic.d \
./drivers/net/ethernet/sfc/qt202x_phy.d \
./drivers/net/ethernet/sfc/rx.d \
./drivers/net/ethernet/sfc/selftest.d \
./drivers/net/ethernet/sfc/siena.d \
./drivers/net/ethernet/sfc/siena_sriov.d \
./drivers/net/ethernet/sfc/tenxpress.d \
./drivers/net/ethernet/sfc/tx.d \
./drivers/net/ethernet/sfc/txc43128_phy.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/sfc/%.o: ../drivers/net/ethernet/sfc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


