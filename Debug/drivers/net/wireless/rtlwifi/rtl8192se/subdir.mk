################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/wireless/rtlwifi/rtl8192se/dm.c \
../drivers/net/wireless/rtlwifi/rtl8192se/fw.c \
../drivers/net/wireless/rtlwifi/rtl8192se/hw.c \
../drivers/net/wireless/rtlwifi/rtl8192se/led.c \
../drivers/net/wireless/rtlwifi/rtl8192se/phy.c \
../drivers/net/wireless/rtlwifi/rtl8192se/rf.c \
../drivers/net/wireless/rtlwifi/rtl8192se/sw.c \
../drivers/net/wireless/rtlwifi/rtl8192se/table.c \
../drivers/net/wireless/rtlwifi/rtl8192se/trx.c 

OBJS += \
./drivers/net/wireless/rtlwifi/rtl8192se/dm.o \
./drivers/net/wireless/rtlwifi/rtl8192se/fw.o \
./drivers/net/wireless/rtlwifi/rtl8192se/hw.o \
./drivers/net/wireless/rtlwifi/rtl8192se/led.o \
./drivers/net/wireless/rtlwifi/rtl8192se/phy.o \
./drivers/net/wireless/rtlwifi/rtl8192se/rf.o \
./drivers/net/wireless/rtlwifi/rtl8192se/sw.o \
./drivers/net/wireless/rtlwifi/rtl8192se/table.o \
./drivers/net/wireless/rtlwifi/rtl8192se/trx.o 

C_DEPS += \
./drivers/net/wireless/rtlwifi/rtl8192se/dm.d \
./drivers/net/wireless/rtlwifi/rtl8192se/fw.d \
./drivers/net/wireless/rtlwifi/rtl8192se/hw.d \
./drivers/net/wireless/rtlwifi/rtl8192se/led.d \
./drivers/net/wireless/rtlwifi/rtl8192se/phy.d \
./drivers/net/wireless/rtlwifi/rtl8192se/rf.d \
./drivers/net/wireless/rtlwifi/rtl8192se/sw.d \
./drivers/net/wireless/rtlwifi/rtl8192se/table.d \
./drivers/net/wireless/rtlwifi/rtl8192se/trx.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/wireless/rtlwifi/rtl8192se/%.o: ../drivers/net/wireless/rtlwifi/rtl8192se/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


