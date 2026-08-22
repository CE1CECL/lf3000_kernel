################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/wireless/rt2x00/rt2400pci.c \
../drivers/net/wireless/rt2x00/rt2500pci.c \
../drivers/net/wireless/rt2x00/rt2500usb.c \
../drivers/net/wireless/rt2x00/rt2800lib.c \
../drivers/net/wireless/rt2x00/rt2800pci.c \
../drivers/net/wireless/rt2x00/rt2800usb.c \
../drivers/net/wireless/rt2x00/rt2x00config.c \
../drivers/net/wireless/rt2x00/rt2x00crypto.c \
../drivers/net/wireless/rt2x00/rt2x00debug.c \
../drivers/net/wireless/rt2x00/rt2x00dev.c \
../drivers/net/wireless/rt2x00/rt2x00firmware.c \
../drivers/net/wireless/rt2x00/rt2x00leds.c \
../drivers/net/wireless/rt2x00/rt2x00link.c \
../drivers/net/wireless/rt2x00/rt2x00mac.c \
../drivers/net/wireless/rt2x00/rt2x00pci.c \
../drivers/net/wireless/rt2x00/rt2x00queue.c \
../drivers/net/wireless/rt2x00/rt2x00soc.c \
../drivers/net/wireless/rt2x00/rt2x00usb.c \
../drivers/net/wireless/rt2x00/rt61pci.c \
../drivers/net/wireless/rt2x00/rt73usb.c 

OBJS += \
./drivers/net/wireless/rt2x00/rt2400pci.o \
./drivers/net/wireless/rt2x00/rt2500pci.o \
./drivers/net/wireless/rt2x00/rt2500usb.o \
./drivers/net/wireless/rt2x00/rt2800lib.o \
./drivers/net/wireless/rt2x00/rt2800pci.o \
./drivers/net/wireless/rt2x00/rt2800usb.o \
./drivers/net/wireless/rt2x00/rt2x00config.o \
./drivers/net/wireless/rt2x00/rt2x00crypto.o \
./drivers/net/wireless/rt2x00/rt2x00debug.o \
./drivers/net/wireless/rt2x00/rt2x00dev.o \
./drivers/net/wireless/rt2x00/rt2x00firmware.o \
./drivers/net/wireless/rt2x00/rt2x00leds.o \
./drivers/net/wireless/rt2x00/rt2x00link.o \
./drivers/net/wireless/rt2x00/rt2x00mac.o \
./drivers/net/wireless/rt2x00/rt2x00pci.o \
./drivers/net/wireless/rt2x00/rt2x00queue.o \
./drivers/net/wireless/rt2x00/rt2x00soc.o \
./drivers/net/wireless/rt2x00/rt2x00usb.o \
./drivers/net/wireless/rt2x00/rt61pci.o \
./drivers/net/wireless/rt2x00/rt73usb.o 

C_DEPS += \
./drivers/net/wireless/rt2x00/rt2400pci.d \
./drivers/net/wireless/rt2x00/rt2500pci.d \
./drivers/net/wireless/rt2x00/rt2500usb.d \
./drivers/net/wireless/rt2x00/rt2800lib.d \
./drivers/net/wireless/rt2x00/rt2800pci.d \
./drivers/net/wireless/rt2x00/rt2800usb.d \
./drivers/net/wireless/rt2x00/rt2x00config.d \
./drivers/net/wireless/rt2x00/rt2x00crypto.d \
./drivers/net/wireless/rt2x00/rt2x00debug.d \
./drivers/net/wireless/rt2x00/rt2x00dev.d \
./drivers/net/wireless/rt2x00/rt2x00firmware.d \
./drivers/net/wireless/rt2x00/rt2x00leds.d \
./drivers/net/wireless/rt2x00/rt2x00link.d \
./drivers/net/wireless/rt2x00/rt2x00mac.d \
./drivers/net/wireless/rt2x00/rt2x00pci.d \
./drivers/net/wireless/rt2x00/rt2x00queue.d \
./drivers/net/wireless/rt2x00/rt2x00soc.d \
./drivers/net/wireless/rt2x00/rt2x00usb.d \
./drivers/net/wireless/rt2x00/rt61pci.d \
./drivers/net/wireless/rt2x00/rt73usb.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/wireless/rt2x00/%.o: ../drivers/net/wireless/rt2x00/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


