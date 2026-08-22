################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/wireless/ath/carl9170/cmd.c \
../drivers/net/wireless/ath/carl9170/debug.c \
../drivers/net/wireless/ath/carl9170/fw.c \
../drivers/net/wireless/ath/carl9170/led.c \
../drivers/net/wireless/ath/carl9170/mac.c \
../drivers/net/wireless/ath/carl9170/main.c \
../drivers/net/wireless/ath/carl9170/phy.c \
../drivers/net/wireless/ath/carl9170/rx.c \
../drivers/net/wireless/ath/carl9170/tx.c \
../drivers/net/wireless/ath/carl9170/usb.c 

OBJS += \
./drivers/net/wireless/ath/carl9170/cmd.o \
./drivers/net/wireless/ath/carl9170/debug.o \
./drivers/net/wireless/ath/carl9170/fw.o \
./drivers/net/wireless/ath/carl9170/led.o \
./drivers/net/wireless/ath/carl9170/mac.o \
./drivers/net/wireless/ath/carl9170/main.o \
./drivers/net/wireless/ath/carl9170/phy.o \
./drivers/net/wireless/ath/carl9170/rx.o \
./drivers/net/wireless/ath/carl9170/tx.o \
./drivers/net/wireless/ath/carl9170/usb.o 

C_DEPS += \
./drivers/net/wireless/ath/carl9170/cmd.d \
./drivers/net/wireless/ath/carl9170/debug.d \
./drivers/net/wireless/ath/carl9170/fw.d \
./drivers/net/wireless/ath/carl9170/led.d \
./drivers/net/wireless/ath/carl9170/mac.d \
./drivers/net/wireless/ath/carl9170/main.d \
./drivers/net/wireless/ath/carl9170/phy.d \
./drivers/net/wireless/ath/carl9170/rx.d \
./drivers/net/wireless/ath/carl9170/tx.d \
./drivers/net/wireless/ath/carl9170/usb.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/wireless/ath/carl9170/%.o: ../drivers/net/wireless/ath/carl9170/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


