################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/phy/amd.c \
../drivers/net/phy/bcm63xx.c \
../drivers/net/phy/broadcom.c \
../drivers/net/phy/cicada.c \
../drivers/net/phy/davicom.c \
../drivers/net/phy/dp83640.c \
../drivers/net/phy/et1011c.c \
../drivers/net/phy/fixed.c \
../drivers/net/phy/icplus.c \
../drivers/net/phy/lxt.c \
../drivers/net/phy/marvell.c \
../drivers/net/phy/mdio-bitbang.c \
../drivers/net/phy/mdio-gpio.c \
../drivers/net/phy/mdio-octeon.c \
../drivers/net/phy/mdio_bus.c \
../drivers/net/phy/micrel.c \
../drivers/net/phy/national.c \
../drivers/net/phy/phy.c \
../drivers/net/phy/phy_device.c \
../drivers/net/phy/qsemi.c \
../drivers/net/phy/realtek.c \
../drivers/net/phy/smsc.c \
../drivers/net/phy/spi_ks8995.c \
../drivers/net/phy/ste10Xp.c \
../drivers/net/phy/vitesse.c 

OBJS += \
./drivers/net/phy/amd.o \
./drivers/net/phy/bcm63xx.o \
./drivers/net/phy/broadcom.o \
./drivers/net/phy/cicada.o \
./drivers/net/phy/davicom.o \
./drivers/net/phy/dp83640.o \
./drivers/net/phy/et1011c.o \
./drivers/net/phy/fixed.o \
./drivers/net/phy/icplus.o \
./drivers/net/phy/lxt.o \
./drivers/net/phy/marvell.o \
./drivers/net/phy/mdio-bitbang.o \
./drivers/net/phy/mdio-gpio.o \
./drivers/net/phy/mdio-octeon.o \
./drivers/net/phy/mdio_bus.o \
./drivers/net/phy/micrel.o \
./drivers/net/phy/national.o \
./drivers/net/phy/phy.o \
./drivers/net/phy/phy_device.o \
./drivers/net/phy/qsemi.o \
./drivers/net/phy/realtek.o \
./drivers/net/phy/smsc.o \
./drivers/net/phy/spi_ks8995.o \
./drivers/net/phy/ste10Xp.o \
./drivers/net/phy/vitesse.o 

C_DEPS += \
./drivers/net/phy/amd.d \
./drivers/net/phy/bcm63xx.d \
./drivers/net/phy/broadcom.d \
./drivers/net/phy/cicada.d \
./drivers/net/phy/davicom.d \
./drivers/net/phy/dp83640.d \
./drivers/net/phy/et1011c.d \
./drivers/net/phy/fixed.d \
./drivers/net/phy/icplus.d \
./drivers/net/phy/lxt.d \
./drivers/net/phy/marvell.d \
./drivers/net/phy/mdio-bitbang.d \
./drivers/net/phy/mdio-gpio.d \
./drivers/net/phy/mdio-octeon.d \
./drivers/net/phy/mdio_bus.d \
./drivers/net/phy/micrel.d \
./drivers/net/phy/national.d \
./drivers/net/phy/phy.d \
./drivers/net/phy/phy_device.d \
./drivers/net/phy/qsemi.d \
./drivers/net/phy/realtek.d \
./drivers/net/phy/smsc.d \
./drivers/net/phy/spi_ks8995.d \
./drivers/net/phy/ste10Xp.d \
./drivers/net/phy/vitesse.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/phy/%.o: ../drivers/net/phy/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


