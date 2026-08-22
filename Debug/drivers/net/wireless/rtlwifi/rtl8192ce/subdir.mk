################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/wireless/rtlwifi/rtl8192ce/dm.c \
../drivers/net/wireless/rtlwifi/rtl8192ce/hw.c \
../drivers/net/wireless/rtlwifi/rtl8192ce/led.c \
../drivers/net/wireless/rtlwifi/rtl8192ce/phy.c \
../drivers/net/wireless/rtlwifi/rtl8192ce/rf.c \
../drivers/net/wireless/rtlwifi/rtl8192ce/sw.c \
../drivers/net/wireless/rtlwifi/rtl8192ce/table.c \
../drivers/net/wireless/rtlwifi/rtl8192ce/trx.c 

OBJS += \
./drivers/net/wireless/rtlwifi/rtl8192ce/dm.o \
./drivers/net/wireless/rtlwifi/rtl8192ce/hw.o \
./drivers/net/wireless/rtlwifi/rtl8192ce/led.o \
./drivers/net/wireless/rtlwifi/rtl8192ce/phy.o \
./drivers/net/wireless/rtlwifi/rtl8192ce/rf.o \
./drivers/net/wireless/rtlwifi/rtl8192ce/sw.o \
./drivers/net/wireless/rtlwifi/rtl8192ce/table.o \
./drivers/net/wireless/rtlwifi/rtl8192ce/trx.o 

C_DEPS += \
./drivers/net/wireless/rtlwifi/rtl8192ce/dm.d \
./drivers/net/wireless/rtlwifi/rtl8192ce/hw.d \
./drivers/net/wireless/rtlwifi/rtl8192ce/led.d \
./drivers/net/wireless/rtlwifi/rtl8192ce/phy.d \
./drivers/net/wireless/rtlwifi/rtl8192ce/rf.d \
./drivers/net/wireless/rtlwifi/rtl8192ce/sw.d \
./drivers/net/wireless/rtlwifi/rtl8192ce/table.d \
./drivers/net/wireless/rtlwifi/rtl8192ce/trx.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/wireless/rtlwifi/rtl8192ce/%.o: ../drivers/net/wireless/rtlwifi/rtl8192ce/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


