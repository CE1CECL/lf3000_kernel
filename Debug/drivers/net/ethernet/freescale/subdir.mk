################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/freescale/fec.c \
../drivers/net/ethernet/freescale/fec_mpc52xx.c \
../drivers/net/ethernet/freescale/fec_mpc52xx_phy.c \
../drivers/net/ethernet/freescale/fsl_pq_mdio.c \
../drivers/net/ethernet/freescale/gianfar.c \
../drivers/net/ethernet/freescale/gianfar_ethtool.c \
../drivers/net/ethernet/freescale/gianfar_ptp.c \
../drivers/net/ethernet/freescale/gianfar_sysfs.c \
../drivers/net/ethernet/freescale/ucc_geth.c \
../drivers/net/ethernet/freescale/ucc_geth_ethtool.c 

OBJS += \
./drivers/net/ethernet/freescale/fec.o \
./drivers/net/ethernet/freescale/fec_mpc52xx.o \
./drivers/net/ethernet/freescale/fec_mpc52xx_phy.o \
./drivers/net/ethernet/freescale/fsl_pq_mdio.o \
./drivers/net/ethernet/freescale/gianfar.o \
./drivers/net/ethernet/freescale/gianfar_ethtool.o \
./drivers/net/ethernet/freescale/gianfar_ptp.o \
./drivers/net/ethernet/freescale/gianfar_sysfs.o \
./drivers/net/ethernet/freescale/ucc_geth.o \
./drivers/net/ethernet/freescale/ucc_geth_ethtool.o 

C_DEPS += \
./drivers/net/ethernet/freescale/fec.d \
./drivers/net/ethernet/freescale/fec_mpc52xx.d \
./drivers/net/ethernet/freescale/fec_mpc52xx_phy.d \
./drivers/net/ethernet/freescale/fsl_pq_mdio.d \
./drivers/net/ethernet/freescale/gianfar.d \
./drivers/net/ethernet/freescale/gianfar_ethtool.d \
./drivers/net/ethernet/freescale/gianfar_ptp.d \
./drivers/net/ethernet/freescale/gianfar_sysfs.d \
./drivers/net/ethernet/freescale/ucc_geth.d \
./drivers/net/ethernet/freescale/ucc_geth_ethtool.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/freescale/%.o: ../drivers/net/ethernet/freescale/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


