################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/wireless/rtlwifi/base.c \
../drivers/net/wireless/rtlwifi/cam.c \
../drivers/net/wireless/rtlwifi/core.c \
../drivers/net/wireless/rtlwifi/debug.c \
../drivers/net/wireless/rtlwifi/efuse.c \
../drivers/net/wireless/rtlwifi/pci.c \
../drivers/net/wireless/rtlwifi/ps.c \
../drivers/net/wireless/rtlwifi/rc.c \
../drivers/net/wireless/rtlwifi/regd.c \
../drivers/net/wireless/rtlwifi/usb.c 

OBJS += \
./drivers/net/wireless/rtlwifi/base.o \
./drivers/net/wireless/rtlwifi/cam.o \
./drivers/net/wireless/rtlwifi/core.o \
./drivers/net/wireless/rtlwifi/debug.o \
./drivers/net/wireless/rtlwifi/efuse.o \
./drivers/net/wireless/rtlwifi/pci.o \
./drivers/net/wireless/rtlwifi/ps.o \
./drivers/net/wireless/rtlwifi/rc.o \
./drivers/net/wireless/rtlwifi/regd.o \
./drivers/net/wireless/rtlwifi/usb.o 

C_DEPS += \
./drivers/net/wireless/rtlwifi/base.d \
./drivers/net/wireless/rtlwifi/cam.d \
./drivers/net/wireless/rtlwifi/core.d \
./drivers/net/wireless/rtlwifi/debug.d \
./drivers/net/wireless/rtlwifi/efuse.d \
./drivers/net/wireless/rtlwifi/pci.d \
./drivers/net/wireless/rtlwifi/ps.d \
./drivers/net/wireless/rtlwifi/rc.d \
./drivers/net/wireless/rtlwifi/regd.d \
./drivers/net/wireless/rtlwifi/usb.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/wireless/rtlwifi/%.o: ../drivers/net/wireless/rtlwifi/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


