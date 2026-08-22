################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/wireless/brcm80211/brcmfmac/bcmsdh.c \
../drivers/net/wireless/brcm80211/brcmfmac/bcmsdh_sdmmc.c \
../drivers/net/wireless/brcm80211/brcmfmac/dhd_cdc.c \
../drivers/net/wireless/brcm80211/brcmfmac/dhd_common.c \
../drivers/net/wireless/brcm80211/brcmfmac/dhd_linux.c \
../drivers/net/wireless/brcm80211/brcmfmac/dhd_sdio.c \
../drivers/net/wireless/brcm80211/brcmfmac/sdio_chip.c \
../drivers/net/wireless/brcm80211/brcmfmac/usb.c \
../drivers/net/wireless/brcm80211/brcmfmac/wl_cfg80211.c 

OBJS += \
./drivers/net/wireless/brcm80211/brcmfmac/bcmsdh.o \
./drivers/net/wireless/brcm80211/brcmfmac/bcmsdh_sdmmc.o \
./drivers/net/wireless/brcm80211/brcmfmac/dhd_cdc.o \
./drivers/net/wireless/brcm80211/brcmfmac/dhd_common.o \
./drivers/net/wireless/brcm80211/brcmfmac/dhd_linux.o \
./drivers/net/wireless/brcm80211/brcmfmac/dhd_sdio.o \
./drivers/net/wireless/brcm80211/brcmfmac/sdio_chip.o \
./drivers/net/wireless/brcm80211/brcmfmac/usb.o \
./drivers/net/wireless/brcm80211/brcmfmac/wl_cfg80211.o 

C_DEPS += \
./drivers/net/wireless/brcm80211/brcmfmac/bcmsdh.d \
./drivers/net/wireless/brcm80211/brcmfmac/bcmsdh_sdmmc.d \
./drivers/net/wireless/brcm80211/brcmfmac/dhd_cdc.d \
./drivers/net/wireless/brcm80211/brcmfmac/dhd_common.d \
./drivers/net/wireless/brcm80211/brcmfmac/dhd_linux.d \
./drivers/net/wireless/brcm80211/brcmfmac/dhd_sdio.d \
./drivers/net/wireless/brcm80211/brcmfmac/sdio_chip.d \
./drivers/net/wireless/brcm80211/brcmfmac/usb.d \
./drivers/net/wireless/brcm80211/brcmfmac/wl_cfg80211.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/wireless/brcm80211/brcmfmac/%.o: ../drivers/net/wireless/brcm80211/brcmfmac/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


