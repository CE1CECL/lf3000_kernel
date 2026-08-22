################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/wlan-ng/cfg80211.c \
../drivers/staging/wlan-ng/hfa384x_usb.c \
../drivers/staging/wlan-ng/p80211conv.c \
../drivers/staging/wlan-ng/p80211netdev.c \
../drivers/staging/wlan-ng/p80211req.c \
../drivers/staging/wlan-ng/p80211wep.c \
../drivers/staging/wlan-ng/prism2fw.c \
../drivers/staging/wlan-ng/prism2mgmt.c \
../drivers/staging/wlan-ng/prism2mib.c \
../drivers/staging/wlan-ng/prism2sta.c \
../drivers/staging/wlan-ng/prism2usb.c 

OBJS += \
./drivers/staging/wlan-ng/cfg80211.o \
./drivers/staging/wlan-ng/hfa384x_usb.o \
./drivers/staging/wlan-ng/p80211conv.o \
./drivers/staging/wlan-ng/p80211netdev.o \
./drivers/staging/wlan-ng/p80211req.o \
./drivers/staging/wlan-ng/p80211wep.o \
./drivers/staging/wlan-ng/prism2fw.o \
./drivers/staging/wlan-ng/prism2mgmt.o \
./drivers/staging/wlan-ng/prism2mib.o \
./drivers/staging/wlan-ng/prism2sta.o \
./drivers/staging/wlan-ng/prism2usb.o 

C_DEPS += \
./drivers/staging/wlan-ng/cfg80211.d \
./drivers/staging/wlan-ng/hfa384x_usb.d \
./drivers/staging/wlan-ng/p80211conv.d \
./drivers/staging/wlan-ng/p80211netdev.d \
./drivers/staging/wlan-ng/p80211req.d \
./drivers/staging/wlan-ng/p80211wep.d \
./drivers/staging/wlan-ng/prism2fw.d \
./drivers/staging/wlan-ng/prism2mgmt.d \
./drivers/staging/wlan-ng/prism2mib.d \
./drivers/staging/wlan-ng/prism2sta.d \
./drivers/staging/wlan-ng/prism2usb.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/wlan-ng/%.o: ../drivers/staging/wlan-ng/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


