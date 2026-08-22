################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/wireless/hostap/hostap_80211_rx.c \
../drivers/net/wireless/hostap/hostap_80211_tx.c \
../drivers/net/wireless/hostap/hostap_ap.c \
../drivers/net/wireless/hostap/hostap_cs.c \
../drivers/net/wireless/hostap/hostap_download.c \
../drivers/net/wireless/hostap/hostap_hw.c \
../drivers/net/wireless/hostap/hostap_info.c \
../drivers/net/wireless/hostap/hostap_ioctl.c \
../drivers/net/wireless/hostap/hostap_main.c \
../drivers/net/wireless/hostap/hostap_pci.c \
../drivers/net/wireless/hostap/hostap_plx.c \
../drivers/net/wireless/hostap/hostap_proc.c 

OBJS += \
./drivers/net/wireless/hostap/hostap_80211_rx.o \
./drivers/net/wireless/hostap/hostap_80211_tx.o \
./drivers/net/wireless/hostap/hostap_ap.o \
./drivers/net/wireless/hostap/hostap_cs.o \
./drivers/net/wireless/hostap/hostap_download.o \
./drivers/net/wireless/hostap/hostap_hw.o \
./drivers/net/wireless/hostap/hostap_info.o \
./drivers/net/wireless/hostap/hostap_ioctl.o \
./drivers/net/wireless/hostap/hostap_main.o \
./drivers/net/wireless/hostap/hostap_pci.o \
./drivers/net/wireless/hostap/hostap_plx.o \
./drivers/net/wireless/hostap/hostap_proc.o 

C_DEPS += \
./drivers/net/wireless/hostap/hostap_80211_rx.d \
./drivers/net/wireless/hostap/hostap_80211_tx.d \
./drivers/net/wireless/hostap/hostap_ap.d \
./drivers/net/wireless/hostap/hostap_cs.d \
./drivers/net/wireless/hostap/hostap_download.d \
./drivers/net/wireless/hostap/hostap_hw.d \
./drivers/net/wireless/hostap/hostap_info.d \
./drivers/net/wireless/hostap/hostap_ioctl.d \
./drivers/net/wireless/hostap/hostap_main.d \
./drivers/net/wireless/hostap/hostap_pci.d \
./drivers/net/wireless/hostap/hostap_plx.d \
./drivers/net/wireless/hostap/hostap_proc.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/wireless/hostap/%.o: ../drivers/net/wireless/hostap/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


