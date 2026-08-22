################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/firewire/built-in.o 

C_SRCS += \
../drivers/firewire/core-card.c \
../drivers/firewire/core-cdev.c \
../drivers/firewire/core-device.c \
../drivers/firewire/core-iso.c \
../drivers/firewire/core-topology.c \
../drivers/firewire/core-transaction.c \
../drivers/firewire/init_ohci1394_dma.c \
../drivers/firewire/net.c \
../drivers/firewire/nosy.c \
../drivers/firewire/ohci.c \
../drivers/firewire/sbp2.c 

OBJS += \
./drivers/firewire/core-card.o \
./drivers/firewire/core-cdev.o \
./drivers/firewire/core-device.o \
./drivers/firewire/core-iso.o \
./drivers/firewire/core-topology.o \
./drivers/firewire/core-transaction.o \
./drivers/firewire/init_ohci1394_dma.o \
./drivers/firewire/net.o \
./drivers/firewire/nosy.o \
./drivers/firewire/ohci.o \
./drivers/firewire/sbp2.o 

C_DEPS += \
./drivers/firewire/core-card.d \
./drivers/firewire/core-cdev.d \
./drivers/firewire/core-device.d \
./drivers/firewire/core-iso.d \
./drivers/firewire/core-topology.d \
./drivers/firewire/core-transaction.d \
./drivers/firewire/init_ohci1394_dma.d \
./drivers/firewire/net.d \
./drivers/firewire/nosy.d \
./drivers/firewire/ohci.d \
./drivers/firewire/sbp2.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/firewire/%.o: ../drivers/firewire/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


