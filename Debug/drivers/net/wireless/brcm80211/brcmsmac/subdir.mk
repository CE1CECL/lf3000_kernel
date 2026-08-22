################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/wireless/brcm80211/brcmsmac/aiutils.c \
../drivers/net/wireless/brcm80211/brcmsmac/ampdu.c \
../drivers/net/wireless/brcm80211/brcmsmac/antsel.c \
../drivers/net/wireless/brcm80211/brcmsmac/brcms_trace_events.c \
../drivers/net/wireless/brcm80211/brcmsmac/channel.c \
../drivers/net/wireless/brcm80211/brcmsmac/dma.c \
../drivers/net/wireless/brcm80211/brcmsmac/mac80211_if.c \
../drivers/net/wireless/brcm80211/brcmsmac/main.c \
../drivers/net/wireless/brcm80211/brcmsmac/nicpci.c \
../drivers/net/wireless/brcm80211/brcmsmac/otp.c \
../drivers/net/wireless/brcm80211/brcmsmac/phy_shim.c \
../drivers/net/wireless/brcm80211/brcmsmac/pmu.c \
../drivers/net/wireless/brcm80211/brcmsmac/rate.c \
../drivers/net/wireless/brcm80211/brcmsmac/srom.c \
../drivers/net/wireless/brcm80211/brcmsmac/stf.c \
../drivers/net/wireless/brcm80211/brcmsmac/ucode_loader.c 

OBJS += \
./drivers/net/wireless/brcm80211/brcmsmac/aiutils.o \
./drivers/net/wireless/brcm80211/brcmsmac/ampdu.o \
./drivers/net/wireless/brcm80211/brcmsmac/antsel.o \
./drivers/net/wireless/brcm80211/brcmsmac/brcms_trace_events.o \
./drivers/net/wireless/brcm80211/brcmsmac/channel.o \
./drivers/net/wireless/brcm80211/brcmsmac/dma.o \
./drivers/net/wireless/brcm80211/brcmsmac/mac80211_if.o \
./drivers/net/wireless/brcm80211/brcmsmac/main.o \
./drivers/net/wireless/brcm80211/brcmsmac/nicpci.o \
./drivers/net/wireless/brcm80211/brcmsmac/otp.o \
./drivers/net/wireless/brcm80211/brcmsmac/phy_shim.o \
./drivers/net/wireless/brcm80211/brcmsmac/pmu.o \
./drivers/net/wireless/brcm80211/brcmsmac/rate.o \
./drivers/net/wireless/brcm80211/brcmsmac/srom.o \
./drivers/net/wireless/brcm80211/brcmsmac/stf.o \
./drivers/net/wireless/brcm80211/brcmsmac/ucode_loader.o 

C_DEPS += \
./drivers/net/wireless/brcm80211/brcmsmac/aiutils.d \
./drivers/net/wireless/brcm80211/brcmsmac/ampdu.d \
./drivers/net/wireless/brcm80211/brcmsmac/antsel.d \
./drivers/net/wireless/brcm80211/brcmsmac/brcms_trace_events.d \
./drivers/net/wireless/brcm80211/brcmsmac/channel.d \
./drivers/net/wireless/brcm80211/brcmsmac/dma.d \
./drivers/net/wireless/brcm80211/brcmsmac/mac80211_if.d \
./drivers/net/wireless/brcm80211/brcmsmac/main.d \
./drivers/net/wireless/brcm80211/brcmsmac/nicpci.d \
./drivers/net/wireless/brcm80211/brcmsmac/otp.d \
./drivers/net/wireless/brcm80211/brcmsmac/phy_shim.d \
./drivers/net/wireless/brcm80211/brcmsmac/pmu.d \
./drivers/net/wireless/brcm80211/brcmsmac/rate.d \
./drivers/net/wireless/brcm80211/brcmsmac/srom.d \
./drivers/net/wireless/brcm80211/brcmsmac/stf.d \
./drivers/net/wireless/brcm80211/brcmsmac/ucode_loader.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/wireless/brcm80211/brcmsmac/%.o: ../drivers/net/wireless/brcm80211/brcmsmac/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


