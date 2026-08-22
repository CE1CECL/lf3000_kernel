################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/bluetooth/ath3k.c \
../drivers/bluetooth/bcm203x.c \
../drivers/bluetooth/bfusb.c \
../drivers/bluetooth/bluecard_cs.c \
../drivers/bluetooth/bpa10x.c \
../drivers/bluetooth/bt3c_cs.c \
../drivers/bluetooth/btmrvl_debugfs.c \
../drivers/bluetooth/btmrvl_main.c \
../drivers/bluetooth/btmrvl_sdio.c \
../drivers/bluetooth/btsdio.c \
../drivers/bluetooth/btuart_cs.c \
../drivers/bluetooth/btusb.c \
../drivers/bluetooth/btwilink.c \
../drivers/bluetooth/dtl1_cs.c \
../drivers/bluetooth/hci_ath.c \
../drivers/bluetooth/hci_bcsp.c \
../drivers/bluetooth/hci_h4.c \
../drivers/bluetooth/hci_ldisc.c \
../drivers/bluetooth/hci_ll.c \
../drivers/bluetooth/hci_vhci.c 

OBJS += \
./drivers/bluetooth/ath3k.o \
./drivers/bluetooth/bcm203x.o \
./drivers/bluetooth/bfusb.o \
./drivers/bluetooth/bluecard_cs.o \
./drivers/bluetooth/bpa10x.o \
./drivers/bluetooth/bt3c_cs.o \
./drivers/bluetooth/btmrvl_debugfs.o \
./drivers/bluetooth/btmrvl_main.o \
./drivers/bluetooth/btmrvl_sdio.o \
./drivers/bluetooth/btsdio.o \
./drivers/bluetooth/btuart_cs.o \
./drivers/bluetooth/btusb.o \
./drivers/bluetooth/btwilink.o \
./drivers/bluetooth/dtl1_cs.o \
./drivers/bluetooth/hci_ath.o \
./drivers/bluetooth/hci_bcsp.o \
./drivers/bluetooth/hci_h4.o \
./drivers/bluetooth/hci_ldisc.o \
./drivers/bluetooth/hci_ll.o \
./drivers/bluetooth/hci_vhci.o 

C_DEPS += \
./drivers/bluetooth/ath3k.d \
./drivers/bluetooth/bcm203x.d \
./drivers/bluetooth/bfusb.d \
./drivers/bluetooth/bluecard_cs.d \
./drivers/bluetooth/bpa10x.d \
./drivers/bluetooth/bt3c_cs.d \
./drivers/bluetooth/btmrvl_debugfs.d \
./drivers/bluetooth/btmrvl_main.d \
./drivers/bluetooth/btmrvl_sdio.d \
./drivers/bluetooth/btsdio.d \
./drivers/bluetooth/btuart_cs.d \
./drivers/bluetooth/btusb.d \
./drivers/bluetooth/btwilink.d \
./drivers/bluetooth/dtl1_cs.d \
./drivers/bluetooth/hci_ath.d \
./drivers/bluetooth/hci_bcsp.d \
./drivers/bluetooth/hci_h4.d \
./drivers/bluetooth/hci_ldisc.d \
./drivers/bluetooth/hci_ll.d \
./drivers/bluetooth/hci_vhci.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/bluetooth/%.o: ../drivers/bluetooth/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


