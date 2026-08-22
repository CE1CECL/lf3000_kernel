################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/wireless/ath/ath5k/ahb.c \
../drivers/net/wireless/ath/ath5k/ani.c \
../drivers/net/wireless/ath/ath5k/attach.c \
../drivers/net/wireless/ath/ath5k/base.c \
../drivers/net/wireless/ath/ath5k/caps.c \
../drivers/net/wireless/ath/ath5k/debug.c \
../drivers/net/wireless/ath/ath5k/desc.c \
../drivers/net/wireless/ath/ath5k/dma.c \
../drivers/net/wireless/ath/ath5k/eeprom.c \
../drivers/net/wireless/ath/ath5k/gpio.c \
../drivers/net/wireless/ath/ath5k/initvals.c \
../drivers/net/wireless/ath/ath5k/led.c \
../drivers/net/wireless/ath/ath5k/mac80211-ops.c \
../drivers/net/wireless/ath/ath5k/pci.c \
../drivers/net/wireless/ath/ath5k/pcu.c \
../drivers/net/wireless/ath/ath5k/phy.c \
../drivers/net/wireless/ath/ath5k/qcu.c \
../drivers/net/wireless/ath/ath5k/reset.c \
../drivers/net/wireless/ath/ath5k/rfkill.c \
../drivers/net/wireless/ath/ath5k/sysfs.c 

OBJS += \
./drivers/net/wireless/ath/ath5k/ahb.o \
./drivers/net/wireless/ath/ath5k/ani.o \
./drivers/net/wireless/ath/ath5k/attach.o \
./drivers/net/wireless/ath/ath5k/base.o \
./drivers/net/wireless/ath/ath5k/caps.o \
./drivers/net/wireless/ath/ath5k/debug.o \
./drivers/net/wireless/ath/ath5k/desc.o \
./drivers/net/wireless/ath/ath5k/dma.o \
./drivers/net/wireless/ath/ath5k/eeprom.o \
./drivers/net/wireless/ath/ath5k/gpio.o \
./drivers/net/wireless/ath/ath5k/initvals.o \
./drivers/net/wireless/ath/ath5k/led.o \
./drivers/net/wireless/ath/ath5k/mac80211-ops.o \
./drivers/net/wireless/ath/ath5k/pci.o \
./drivers/net/wireless/ath/ath5k/pcu.o \
./drivers/net/wireless/ath/ath5k/phy.o \
./drivers/net/wireless/ath/ath5k/qcu.o \
./drivers/net/wireless/ath/ath5k/reset.o \
./drivers/net/wireless/ath/ath5k/rfkill.o \
./drivers/net/wireless/ath/ath5k/sysfs.o 

C_DEPS += \
./drivers/net/wireless/ath/ath5k/ahb.d \
./drivers/net/wireless/ath/ath5k/ani.d \
./drivers/net/wireless/ath/ath5k/attach.d \
./drivers/net/wireless/ath/ath5k/base.d \
./drivers/net/wireless/ath/ath5k/caps.d \
./drivers/net/wireless/ath/ath5k/debug.d \
./drivers/net/wireless/ath/ath5k/desc.d \
./drivers/net/wireless/ath/ath5k/dma.d \
./drivers/net/wireless/ath/ath5k/eeprom.d \
./drivers/net/wireless/ath/ath5k/gpio.d \
./drivers/net/wireless/ath/ath5k/initvals.d \
./drivers/net/wireless/ath/ath5k/led.d \
./drivers/net/wireless/ath/ath5k/mac80211-ops.d \
./drivers/net/wireless/ath/ath5k/pci.d \
./drivers/net/wireless/ath/ath5k/pcu.d \
./drivers/net/wireless/ath/ath5k/phy.d \
./drivers/net/wireless/ath/ath5k/qcu.d \
./drivers/net/wireless/ath/ath5k/reset.d \
./drivers/net/wireless/ath/ath5k/rfkill.d \
./drivers/net/wireless/ath/ath5k/sysfs.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/wireless/ath/ath5k/%.o: ../drivers/net/wireless/ath/ath5k/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


