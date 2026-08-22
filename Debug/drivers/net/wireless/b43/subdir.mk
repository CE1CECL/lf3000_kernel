################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/wireless/b43/bus.c \
../drivers/net/wireless/b43/debugfs.c \
../drivers/net/wireless/b43/dma.c \
../drivers/net/wireless/b43/leds.c \
../drivers/net/wireless/b43/lo.c \
../drivers/net/wireless/b43/main.c \
../drivers/net/wireless/b43/pcmcia.c \
../drivers/net/wireless/b43/phy_a.c \
../drivers/net/wireless/b43/phy_common.c \
../drivers/net/wireless/b43/phy_g.c \
../drivers/net/wireless/b43/phy_ht.c \
../drivers/net/wireless/b43/phy_lcn.c \
../drivers/net/wireless/b43/phy_lp.c \
../drivers/net/wireless/b43/phy_n.c \
../drivers/net/wireless/b43/pio.c \
../drivers/net/wireless/b43/radio_2055.c \
../drivers/net/wireless/b43/radio_2056.c \
../drivers/net/wireless/b43/radio_2059.c \
../drivers/net/wireless/b43/rfkill.c \
../drivers/net/wireless/b43/sdio.c \
../drivers/net/wireless/b43/sysfs.c \
../drivers/net/wireless/b43/tables.c \
../drivers/net/wireless/b43/tables_lpphy.c \
../drivers/net/wireless/b43/tables_nphy.c \
../drivers/net/wireless/b43/tables_phy_ht.c \
../drivers/net/wireless/b43/tables_phy_lcn.c \
../drivers/net/wireless/b43/wa.c \
../drivers/net/wireless/b43/xmit.c 

OBJS += \
./drivers/net/wireless/b43/bus.o \
./drivers/net/wireless/b43/debugfs.o \
./drivers/net/wireless/b43/dma.o \
./drivers/net/wireless/b43/leds.o \
./drivers/net/wireless/b43/lo.o \
./drivers/net/wireless/b43/main.o \
./drivers/net/wireless/b43/pcmcia.o \
./drivers/net/wireless/b43/phy_a.o \
./drivers/net/wireless/b43/phy_common.o \
./drivers/net/wireless/b43/phy_g.o \
./drivers/net/wireless/b43/phy_ht.o \
./drivers/net/wireless/b43/phy_lcn.o \
./drivers/net/wireless/b43/phy_lp.o \
./drivers/net/wireless/b43/phy_n.o \
./drivers/net/wireless/b43/pio.o \
./drivers/net/wireless/b43/radio_2055.o \
./drivers/net/wireless/b43/radio_2056.o \
./drivers/net/wireless/b43/radio_2059.o \
./drivers/net/wireless/b43/rfkill.o \
./drivers/net/wireless/b43/sdio.o \
./drivers/net/wireless/b43/sysfs.o \
./drivers/net/wireless/b43/tables.o \
./drivers/net/wireless/b43/tables_lpphy.o \
./drivers/net/wireless/b43/tables_nphy.o \
./drivers/net/wireless/b43/tables_phy_ht.o \
./drivers/net/wireless/b43/tables_phy_lcn.o \
./drivers/net/wireless/b43/wa.o \
./drivers/net/wireless/b43/xmit.o 

C_DEPS += \
./drivers/net/wireless/b43/bus.d \
./drivers/net/wireless/b43/debugfs.d \
./drivers/net/wireless/b43/dma.d \
./drivers/net/wireless/b43/leds.d \
./drivers/net/wireless/b43/lo.d \
./drivers/net/wireless/b43/main.d \
./drivers/net/wireless/b43/pcmcia.d \
./drivers/net/wireless/b43/phy_a.d \
./drivers/net/wireless/b43/phy_common.d \
./drivers/net/wireless/b43/phy_g.d \
./drivers/net/wireless/b43/phy_ht.d \
./drivers/net/wireless/b43/phy_lcn.d \
./drivers/net/wireless/b43/phy_lp.d \
./drivers/net/wireless/b43/phy_n.d \
./drivers/net/wireless/b43/pio.d \
./drivers/net/wireless/b43/radio_2055.d \
./drivers/net/wireless/b43/radio_2056.d \
./drivers/net/wireless/b43/radio_2059.d \
./drivers/net/wireless/b43/rfkill.d \
./drivers/net/wireless/b43/sdio.d \
./drivers/net/wireless/b43/sysfs.d \
./drivers/net/wireless/b43/tables.d \
./drivers/net/wireless/b43/tables_lpphy.d \
./drivers/net/wireless/b43/tables_nphy.d \
./drivers/net/wireless/b43/tables_phy_ht.d \
./drivers/net/wireless/b43/tables_phy_lcn.d \
./drivers/net/wireless/b43/wa.d \
./drivers/net/wireless/b43/xmit.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/wireless/b43/%.o: ../drivers/net/wireless/b43/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


