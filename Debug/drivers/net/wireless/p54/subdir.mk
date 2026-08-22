################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/wireless/p54/eeprom.c \
../drivers/net/wireless/p54/fwio.c \
../drivers/net/wireless/p54/led.c \
../drivers/net/wireless/p54/main.c \
../drivers/net/wireless/p54/p54pci.c \
../drivers/net/wireless/p54/p54spi.c \
../drivers/net/wireless/p54/p54usb.c \
../drivers/net/wireless/p54/txrx.c 

OBJS += \
./drivers/net/wireless/p54/eeprom.o \
./drivers/net/wireless/p54/fwio.o \
./drivers/net/wireless/p54/led.o \
./drivers/net/wireless/p54/main.o \
./drivers/net/wireless/p54/p54pci.o \
./drivers/net/wireless/p54/p54spi.o \
./drivers/net/wireless/p54/p54usb.o \
./drivers/net/wireless/p54/txrx.o 

C_DEPS += \
./drivers/net/wireless/p54/eeprom.d \
./drivers/net/wireless/p54/fwio.d \
./drivers/net/wireless/p54/led.d \
./drivers/net/wireless/p54/main.d \
./drivers/net/wireless/p54/p54pci.d \
./drivers/net/wireless/p54/p54spi.d \
./drivers/net/wireless/p54/p54usb.d \
./drivers/net/wireless/p54/txrx.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/wireless/p54/%.o: ../drivers/net/wireless/p54/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


