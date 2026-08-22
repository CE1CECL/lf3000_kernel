################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/wireless/rtlwifi/rtl8192de/dm.c \
../drivers/net/wireless/rtlwifi/rtl8192de/fw.c \
../drivers/net/wireless/rtlwifi/rtl8192de/hw.c \
../drivers/net/wireless/rtlwifi/rtl8192de/led.c \
../drivers/net/wireless/rtlwifi/rtl8192de/phy.c \
../drivers/net/wireless/rtlwifi/rtl8192de/rf.c \
../drivers/net/wireless/rtlwifi/rtl8192de/sw.c \
../drivers/net/wireless/rtlwifi/rtl8192de/table.c \
../drivers/net/wireless/rtlwifi/rtl8192de/trx.c 

OBJS += \
./drivers/net/wireless/rtlwifi/rtl8192de/dm.o \
./drivers/net/wireless/rtlwifi/rtl8192de/fw.o \
./drivers/net/wireless/rtlwifi/rtl8192de/hw.o \
./drivers/net/wireless/rtlwifi/rtl8192de/led.o \
./drivers/net/wireless/rtlwifi/rtl8192de/phy.o \
./drivers/net/wireless/rtlwifi/rtl8192de/rf.o \
./drivers/net/wireless/rtlwifi/rtl8192de/sw.o \
./drivers/net/wireless/rtlwifi/rtl8192de/table.o \
./drivers/net/wireless/rtlwifi/rtl8192de/trx.o 

C_DEPS += \
./drivers/net/wireless/rtlwifi/rtl8192de/dm.d \
./drivers/net/wireless/rtlwifi/rtl8192de/fw.d \
./drivers/net/wireless/rtlwifi/rtl8192de/hw.d \
./drivers/net/wireless/rtlwifi/rtl8192de/led.d \
./drivers/net/wireless/rtlwifi/rtl8192de/phy.d \
./drivers/net/wireless/rtlwifi/rtl8192de/rf.d \
./drivers/net/wireless/rtlwifi/rtl8192de/sw.d \
./drivers/net/wireless/rtlwifi/rtl8192de/table.d \
./drivers/net/wireless/rtlwifi/rtl8192de/trx.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/wireless/rtlwifi/rtl8192de/%.o: ../drivers/net/wireless/rtlwifi/rtl8192de/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


