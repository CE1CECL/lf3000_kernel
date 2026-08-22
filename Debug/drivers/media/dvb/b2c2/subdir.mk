################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/dvb/b2c2/flexcop-dma.c \
../drivers/media/dvb/b2c2/flexcop-eeprom.c \
../drivers/media/dvb/b2c2/flexcop-fe-tuner.c \
../drivers/media/dvb/b2c2/flexcop-hw-filter.c \
../drivers/media/dvb/b2c2/flexcop-i2c.c \
../drivers/media/dvb/b2c2/flexcop-misc.c \
../drivers/media/dvb/b2c2/flexcop-pci.c \
../drivers/media/dvb/b2c2/flexcop-sram.c \
../drivers/media/dvb/b2c2/flexcop-usb.c \
../drivers/media/dvb/b2c2/flexcop.c 

OBJS += \
./drivers/media/dvb/b2c2/flexcop-dma.o \
./drivers/media/dvb/b2c2/flexcop-eeprom.o \
./drivers/media/dvb/b2c2/flexcop-fe-tuner.o \
./drivers/media/dvb/b2c2/flexcop-hw-filter.o \
./drivers/media/dvb/b2c2/flexcop-i2c.o \
./drivers/media/dvb/b2c2/flexcop-misc.o \
./drivers/media/dvb/b2c2/flexcop-pci.o \
./drivers/media/dvb/b2c2/flexcop-sram.o \
./drivers/media/dvb/b2c2/flexcop-usb.o \
./drivers/media/dvb/b2c2/flexcop.o 

C_DEPS += \
./drivers/media/dvb/b2c2/flexcop-dma.d \
./drivers/media/dvb/b2c2/flexcop-eeprom.d \
./drivers/media/dvb/b2c2/flexcop-fe-tuner.d \
./drivers/media/dvb/b2c2/flexcop-hw-filter.d \
./drivers/media/dvb/b2c2/flexcop-i2c.d \
./drivers/media/dvb/b2c2/flexcop-misc.d \
./drivers/media/dvb/b2c2/flexcop-pci.d \
./drivers/media/dvb/b2c2/flexcop-sram.d \
./drivers/media/dvb/b2c2/flexcop-usb.d \
./drivers/media/dvb/b2c2/flexcop.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/dvb/b2c2/%.o: ../drivers/media/dvb/b2c2/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


