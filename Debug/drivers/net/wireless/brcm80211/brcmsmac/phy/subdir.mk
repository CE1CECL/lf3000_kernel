################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/wireless/brcm80211/brcmsmac/phy/phy_cmn.c \
../drivers/net/wireless/brcm80211/brcmsmac/phy/phy_lcn.c \
../drivers/net/wireless/brcm80211/brcmsmac/phy/phy_n.c \
../drivers/net/wireless/brcm80211/brcmsmac/phy/phy_qmath.c \
../drivers/net/wireless/brcm80211/brcmsmac/phy/phytbl_lcn.c \
../drivers/net/wireless/brcm80211/brcmsmac/phy/phytbl_n.c 

OBJS += \
./drivers/net/wireless/brcm80211/brcmsmac/phy/phy_cmn.o \
./drivers/net/wireless/brcm80211/brcmsmac/phy/phy_lcn.o \
./drivers/net/wireless/brcm80211/brcmsmac/phy/phy_n.o \
./drivers/net/wireless/brcm80211/brcmsmac/phy/phy_qmath.o \
./drivers/net/wireless/brcm80211/brcmsmac/phy/phytbl_lcn.o \
./drivers/net/wireless/brcm80211/brcmsmac/phy/phytbl_n.o 

C_DEPS += \
./drivers/net/wireless/brcm80211/brcmsmac/phy/phy_cmn.d \
./drivers/net/wireless/brcm80211/brcmsmac/phy/phy_lcn.d \
./drivers/net/wireless/brcm80211/brcmsmac/phy/phy_n.d \
./drivers/net/wireless/brcm80211/brcmsmac/phy/phy_qmath.d \
./drivers/net/wireless/brcm80211/brcmsmac/phy/phytbl_lcn.d \
./drivers/net/wireless/brcm80211/brcmsmac/phy/phytbl_n.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/wireless/brcm80211/brcmsmac/phy/%.o: ../drivers/net/wireless/brcm80211/brcmsmac/phy/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


