################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/net/wireless/built-in.o 

C_SRCS += \
../drivers/net/wireless/adm8211.c \
../drivers/net/wireless/airo.c \
../drivers/net/wireless/airo_cs.c \
../drivers/net/wireless/at76c50x-usb.c \
../drivers/net/wireless/atmel.c \
../drivers/net/wireless/atmel_cs.c \
../drivers/net/wireless/atmel_pci.c \
../drivers/net/wireless/mac80211_hwsim.c \
../drivers/net/wireless/mwl8k.c \
../drivers/net/wireless/ray_cs.c \
../drivers/net/wireless/rndis_wlan.c \
../drivers/net/wireless/wl3501_cs.c \
../drivers/net/wireless/zd1201.c 

OBJS += \
./drivers/net/wireless/adm8211.o \
./drivers/net/wireless/airo.o \
./drivers/net/wireless/airo_cs.o \
./drivers/net/wireless/at76c50x-usb.o \
./drivers/net/wireless/atmel.o \
./drivers/net/wireless/atmel_cs.o \
./drivers/net/wireless/atmel_pci.o \
./drivers/net/wireless/mac80211_hwsim.o \
./drivers/net/wireless/mwl8k.o \
./drivers/net/wireless/ray_cs.o \
./drivers/net/wireless/rndis_wlan.o \
./drivers/net/wireless/wl3501_cs.o \
./drivers/net/wireless/zd1201.o 

C_DEPS += \
./drivers/net/wireless/adm8211.d \
./drivers/net/wireless/airo.d \
./drivers/net/wireless/airo_cs.d \
./drivers/net/wireless/at76c50x-usb.d \
./drivers/net/wireless/atmel.d \
./drivers/net/wireless/atmel_cs.d \
./drivers/net/wireless/atmel_pci.d \
./drivers/net/wireless/mac80211_hwsim.d \
./drivers/net/wireless/mwl8k.d \
./drivers/net/wireless/ray_cs.d \
./drivers/net/wireless/rndis_wlan.d \
./drivers/net/wireless/wl3501_cs.d \
./drivers/net/wireless/zd1201.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/wireless/%.o: ../drivers/net/wireless/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


