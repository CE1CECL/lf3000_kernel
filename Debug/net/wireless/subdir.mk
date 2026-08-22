################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../net/wireless/built-in.o \
../net/wireless/cfg80211.o \
../net/wireless/chan.o \
../net/wireless/core.o \
../net/wireless/ethtool.o \
../net/wireless/ibss.o \
../net/wireless/lib80211.o \
../net/wireless/mesh.o \
../net/wireless/mlme.o \
../net/wireless/nl80211.o \
../net/wireless/radiotap.o \
../net/wireless/reg.o \
../net/wireless/scan.o \
../net/wireless/sme.o \
../net/wireless/sysfs.o \
../net/wireless/util.o \
../net/wireless/wext-compat.o \
../net/wireless/wext-core.o \
../net/wireless/wext-proc.o \
../net/wireless/wext-sme.o 

C_SRCS += \
../net/wireless/chan.c \
../net/wireless/core.c \
../net/wireless/debugfs.c \
../net/wireless/ethtool.c \
../net/wireless/ibss.c \
../net/wireless/lib80211.c \
../net/wireless/lib80211_crypt_ccmp.c \
../net/wireless/lib80211_crypt_tkip.c \
../net/wireless/lib80211_crypt_wep.c \
../net/wireless/mesh.c \
../net/wireless/mlme.c \
../net/wireless/nl80211.c \
../net/wireless/radiotap.c \
../net/wireless/reg.c \
../net/wireless/scan.c \
../net/wireless/sme.c \
../net/wireless/sysfs.c \
../net/wireless/util.c \
../net/wireless/wext-compat.c \
../net/wireless/wext-core.c \
../net/wireless/wext-priv.c \
../net/wireless/wext-proc.c \
../net/wireless/wext-sme.c \
../net/wireless/wext-spy.c 

OBJS += \
./net/wireless/chan.o \
./net/wireless/core.o \
./net/wireless/debugfs.o \
./net/wireless/ethtool.o \
./net/wireless/ibss.o \
./net/wireless/lib80211.o \
./net/wireless/lib80211_crypt_ccmp.o \
./net/wireless/lib80211_crypt_tkip.o \
./net/wireless/lib80211_crypt_wep.o \
./net/wireless/mesh.o \
./net/wireless/mlme.o \
./net/wireless/nl80211.o \
./net/wireless/radiotap.o \
./net/wireless/reg.o \
./net/wireless/scan.o \
./net/wireless/sme.o \
./net/wireless/sysfs.o \
./net/wireless/util.o \
./net/wireless/wext-compat.o \
./net/wireless/wext-core.o \
./net/wireless/wext-priv.o \
./net/wireless/wext-proc.o \
./net/wireless/wext-sme.o \
./net/wireless/wext-spy.o 

C_DEPS += \
./net/wireless/chan.d \
./net/wireless/core.d \
./net/wireless/debugfs.d \
./net/wireless/ethtool.d \
./net/wireless/ibss.d \
./net/wireless/lib80211.d \
./net/wireless/lib80211_crypt_ccmp.d \
./net/wireless/lib80211_crypt_tkip.d \
./net/wireless/lib80211_crypt_wep.d \
./net/wireless/mesh.d \
./net/wireless/mlme.d \
./net/wireless/nl80211.d \
./net/wireless/radiotap.d \
./net/wireless/reg.d \
./net/wireless/scan.d \
./net/wireless/sme.d \
./net/wireless/sysfs.d \
./net/wireless/util.d \
./net/wireless/wext-compat.d \
./net/wireless/wext-core.d \
./net/wireless/wext-priv.d \
./net/wireless/wext-proc.d \
./net/wireless/wext-sme.d \
./net/wireless/wext-spy.d 


# Each subdirectory must supply rules for building sources it contributes
net/wireless/%.o: ../net/wireless/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


