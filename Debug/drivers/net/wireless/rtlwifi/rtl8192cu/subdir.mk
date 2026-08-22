################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/wireless/rtlwifi/rtl8192cu/dm.c \
../drivers/net/wireless/rtlwifi/rtl8192cu/hw.c \
../drivers/net/wireless/rtlwifi/rtl8192cu/led.c \
../drivers/net/wireless/rtlwifi/rtl8192cu/mac.c \
../drivers/net/wireless/rtlwifi/rtl8192cu/phy.c \
../drivers/net/wireless/rtlwifi/rtl8192cu/rf.c \
../drivers/net/wireless/rtlwifi/rtl8192cu/sw.c \
../drivers/net/wireless/rtlwifi/rtl8192cu/table.c \
../drivers/net/wireless/rtlwifi/rtl8192cu/trx.c 

OBJS += \
./drivers/net/wireless/rtlwifi/rtl8192cu/dm.o \
./drivers/net/wireless/rtlwifi/rtl8192cu/hw.o \
./drivers/net/wireless/rtlwifi/rtl8192cu/led.o \
./drivers/net/wireless/rtlwifi/rtl8192cu/mac.o \
./drivers/net/wireless/rtlwifi/rtl8192cu/phy.o \
./drivers/net/wireless/rtlwifi/rtl8192cu/rf.o \
./drivers/net/wireless/rtlwifi/rtl8192cu/sw.o \
./drivers/net/wireless/rtlwifi/rtl8192cu/table.o \
./drivers/net/wireless/rtlwifi/rtl8192cu/trx.o 

C_DEPS += \
./drivers/net/wireless/rtlwifi/rtl8192cu/dm.d \
./drivers/net/wireless/rtlwifi/rtl8192cu/hw.d \
./drivers/net/wireless/rtlwifi/rtl8192cu/led.d \
./drivers/net/wireless/rtlwifi/rtl8192cu/mac.d \
./drivers/net/wireless/rtlwifi/rtl8192cu/phy.d \
./drivers/net/wireless/rtlwifi/rtl8192cu/rf.d \
./drivers/net/wireless/rtlwifi/rtl8192cu/sw.d \
./drivers/net/wireless/rtlwifi/rtl8192cu/table.d \
./drivers/net/wireless/rtlwifi/rtl8192cu/trx.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/wireless/rtlwifi/rtl8192cu/%.o: ../drivers/net/wireless/rtlwifi/rtl8192cu/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


