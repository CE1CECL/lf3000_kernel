################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/wireless/b43legacy/debugfs.c \
../drivers/net/wireless/b43legacy/dma.c \
../drivers/net/wireless/b43legacy/ilt.c \
../drivers/net/wireless/b43legacy/leds.c \
../drivers/net/wireless/b43legacy/main.c \
../drivers/net/wireless/b43legacy/phy.c \
../drivers/net/wireless/b43legacy/pio.c \
../drivers/net/wireless/b43legacy/radio.c \
../drivers/net/wireless/b43legacy/rfkill.c \
../drivers/net/wireless/b43legacy/sysfs.c \
../drivers/net/wireless/b43legacy/xmit.c 

OBJS += \
./drivers/net/wireless/b43legacy/debugfs.o \
./drivers/net/wireless/b43legacy/dma.o \
./drivers/net/wireless/b43legacy/ilt.o \
./drivers/net/wireless/b43legacy/leds.o \
./drivers/net/wireless/b43legacy/main.o \
./drivers/net/wireless/b43legacy/phy.o \
./drivers/net/wireless/b43legacy/pio.o \
./drivers/net/wireless/b43legacy/radio.o \
./drivers/net/wireless/b43legacy/rfkill.o \
./drivers/net/wireless/b43legacy/sysfs.o \
./drivers/net/wireless/b43legacy/xmit.o 

C_DEPS += \
./drivers/net/wireless/b43legacy/debugfs.d \
./drivers/net/wireless/b43legacy/dma.d \
./drivers/net/wireless/b43legacy/ilt.d \
./drivers/net/wireless/b43legacy/leds.d \
./drivers/net/wireless/b43legacy/main.d \
./drivers/net/wireless/b43legacy/phy.d \
./drivers/net/wireless/b43legacy/pio.d \
./drivers/net/wireless/b43legacy/radio.d \
./drivers/net/wireless/b43legacy/rfkill.d \
./drivers/net/wireless/b43legacy/sysfs.d \
./drivers/net/wireless/b43legacy/xmit.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/wireless/b43legacy/%.o: ../drivers/net/wireless/b43legacy/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


