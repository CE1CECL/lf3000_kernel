################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/wireless/bcmdhd/aiutils.c \
../drivers/net/wireless/bcmdhd/bcmevent.c \
../drivers/net/wireless/bcmdhd/bcmsdh.c \
../drivers/net/wireless/bcmdhd/bcmsdh_linux.c \
../drivers/net/wireless/bcmdhd/bcmsdh_sdmmc.c \
../drivers/net/wireless/bcmdhd/bcmsdh_sdmmc_linux.c \
../drivers/net/wireless/bcmdhd/bcmutils.c \
../drivers/net/wireless/bcmdhd/bcmwifi_channels.c \
../drivers/net/wireless/bcmdhd/dhd_bta.c \
../drivers/net/wireless/bcmdhd/dhd_cdc.c \
../drivers/net/wireless/bcmdhd/dhd_cfg80211.c \
../drivers/net/wireless/bcmdhd/dhd_common.c \
../drivers/net/wireless/bcmdhd/dhd_custom_gpio.c \
../drivers/net/wireless/bcmdhd/dhd_linux.c \
../drivers/net/wireless/bcmdhd/dhd_linux_sched.c \
../drivers/net/wireless/bcmdhd/dhd_sdio.c \
../drivers/net/wireless/bcmdhd/hndpmu.c \
../drivers/net/wireless/bcmdhd/linux_osl.c \
../drivers/net/wireless/bcmdhd/sbutils.c \
../drivers/net/wireless/bcmdhd/siutils.c \
../drivers/net/wireless/bcmdhd/wl_android.c \
../drivers/net/wireless/bcmdhd/wl_cfg80211.c \
../drivers/net/wireless/bcmdhd/wl_cfgp2p.c \
../drivers/net/wireless/bcmdhd/wl_iw.c \
../drivers/net/wireless/bcmdhd/wl_linux_mon.c \
../drivers/net/wireless/bcmdhd/wldev_common.c 

OBJS += \
./drivers/net/wireless/bcmdhd/aiutils.o \
./drivers/net/wireless/bcmdhd/bcmevent.o \
./drivers/net/wireless/bcmdhd/bcmsdh.o \
./drivers/net/wireless/bcmdhd/bcmsdh_linux.o \
./drivers/net/wireless/bcmdhd/bcmsdh_sdmmc.o \
./drivers/net/wireless/bcmdhd/bcmsdh_sdmmc_linux.o \
./drivers/net/wireless/bcmdhd/bcmutils.o \
./drivers/net/wireless/bcmdhd/bcmwifi_channels.o \
./drivers/net/wireless/bcmdhd/dhd_bta.o \
./drivers/net/wireless/bcmdhd/dhd_cdc.o \
./drivers/net/wireless/bcmdhd/dhd_cfg80211.o \
./drivers/net/wireless/bcmdhd/dhd_common.o \
./drivers/net/wireless/bcmdhd/dhd_custom_gpio.o \
./drivers/net/wireless/bcmdhd/dhd_linux.o \
./drivers/net/wireless/bcmdhd/dhd_linux_sched.o \
./drivers/net/wireless/bcmdhd/dhd_sdio.o \
./drivers/net/wireless/bcmdhd/hndpmu.o \
./drivers/net/wireless/bcmdhd/linux_osl.o \
./drivers/net/wireless/bcmdhd/sbutils.o \
./drivers/net/wireless/bcmdhd/siutils.o \
./drivers/net/wireless/bcmdhd/wl_android.o \
./drivers/net/wireless/bcmdhd/wl_cfg80211.o \
./drivers/net/wireless/bcmdhd/wl_cfgp2p.o \
./drivers/net/wireless/bcmdhd/wl_iw.o \
./drivers/net/wireless/bcmdhd/wl_linux_mon.o \
./drivers/net/wireless/bcmdhd/wldev_common.o 

C_DEPS += \
./drivers/net/wireless/bcmdhd/aiutils.d \
./drivers/net/wireless/bcmdhd/bcmevent.d \
./drivers/net/wireless/bcmdhd/bcmsdh.d \
./drivers/net/wireless/bcmdhd/bcmsdh_linux.d \
./drivers/net/wireless/bcmdhd/bcmsdh_sdmmc.d \
./drivers/net/wireless/bcmdhd/bcmsdh_sdmmc_linux.d \
./drivers/net/wireless/bcmdhd/bcmutils.d \
./drivers/net/wireless/bcmdhd/bcmwifi_channels.d \
./drivers/net/wireless/bcmdhd/dhd_bta.d \
./drivers/net/wireless/bcmdhd/dhd_cdc.d \
./drivers/net/wireless/bcmdhd/dhd_cfg80211.d \
./drivers/net/wireless/bcmdhd/dhd_common.d \
./drivers/net/wireless/bcmdhd/dhd_custom_gpio.d \
./drivers/net/wireless/bcmdhd/dhd_linux.d \
./drivers/net/wireless/bcmdhd/dhd_linux_sched.d \
./drivers/net/wireless/bcmdhd/dhd_sdio.d \
./drivers/net/wireless/bcmdhd/hndpmu.d \
./drivers/net/wireless/bcmdhd/linux_osl.d \
./drivers/net/wireless/bcmdhd/sbutils.d \
./drivers/net/wireless/bcmdhd/siutils.d \
./drivers/net/wireless/bcmdhd/wl_android.d \
./drivers/net/wireless/bcmdhd/wl_cfg80211.d \
./drivers/net/wireless/bcmdhd/wl_cfgp2p.d \
./drivers/net/wireless/bcmdhd/wl_iw.d \
./drivers/net/wireless/bcmdhd/wl_linux_mon.d \
./drivers/net/wireless/bcmdhd/wldev_common.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/wireless/bcmdhd/%.o: ../drivers/net/wireless/bcmdhd/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


