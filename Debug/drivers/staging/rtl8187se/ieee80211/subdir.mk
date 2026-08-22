################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/rtl8187se/ieee80211/dot11d.c \
../drivers/staging/rtl8187se/ieee80211/ieee80211_crypt.c \
../drivers/staging/rtl8187se/ieee80211/ieee80211_crypt_ccmp.c \
../drivers/staging/rtl8187se/ieee80211/ieee80211_crypt_tkip.c \
../drivers/staging/rtl8187se/ieee80211/ieee80211_crypt_wep.c \
../drivers/staging/rtl8187se/ieee80211/ieee80211_module.c \
../drivers/staging/rtl8187se/ieee80211/ieee80211_rx.c \
../drivers/staging/rtl8187se/ieee80211/ieee80211_softmac.c \
../drivers/staging/rtl8187se/ieee80211/ieee80211_softmac_wx.c \
../drivers/staging/rtl8187se/ieee80211/ieee80211_tx.c \
../drivers/staging/rtl8187se/ieee80211/ieee80211_wx.c 

OBJS += \
./drivers/staging/rtl8187se/ieee80211/dot11d.o \
./drivers/staging/rtl8187se/ieee80211/ieee80211_crypt.o \
./drivers/staging/rtl8187se/ieee80211/ieee80211_crypt_ccmp.o \
./drivers/staging/rtl8187se/ieee80211/ieee80211_crypt_tkip.o \
./drivers/staging/rtl8187se/ieee80211/ieee80211_crypt_wep.o \
./drivers/staging/rtl8187se/ieee80211/ieee80211_module.o \
./drivers/staging/rtl8187se/ieee80211/ieee80211_rx.o \
./drivers/staging/rtl8187se/ieee80211/ieee80211_softmac.o \
./drivers/staging/rtl8187se/ieee80211/ieee80211_softmac_wx.o \
./drivers/staging/rtl8187se/ieee80211/ieee80211_tx.o \
./drivers/staging/rtl8187se/ieee80211/ieee80211_wx.o 

C_DEPS += \
./drivers/staging/rtl8187se/ieee80211/dot11d.d \
./drivers/staging/rtl8187se/ieee80211/ieee80211_crypt.d \
./drivers/staging/rtl8187se/ieee80211/ieee80211_crypt_ccmp.d \
./drivers/staging/rtl8187se/ieee80211/ieee80211_crypt_tkip.d \
./drivers/staging/rtl8187se/ieee80211/ieee80211_crypt_wep.d \
./drivers/staging/rtl8187se/ieee80211/ieee80211_module.d \
./drivers/staging/rtl8187se/ieee80211/ieee80211_rx.d \
./drivers/staging/rtl8187se/ieee80211/ieee80211_softmac.d \
./drivers/staging/rtl8187se/ieee80211/ieee80211_softmac_wx.d \
./drivers/staging/rtl8187se/ieee80211/ieee80211_tx.d \
./drivers/staging/rtl8187se/ieee80211/ieee80211_wx.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/rtl8187se/ieee80211/%.o: ../drivers/staging/rtl8187se/ieee80211/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


