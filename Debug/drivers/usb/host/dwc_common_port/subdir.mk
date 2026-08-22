################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/usb/host/dwc_common_port/dwc_cc.c \
../drivers/usb/host/dwc_common_port/dwc_common_fbsd.c \
../drivers/usb/host/dwc_common_port/dwc_common_linux.c \
../drivers/usb/host/dwc_common_port/dwc_common_nbsd.c \
../drivers/usb/host/dwc_common_port/dwc_crypto.c \
../drivers/usb/host/dwc_common_port/dwc_dh.c \
../drivers/usb/host/dwc_common_port/dwc_mem.c \
../drivers/usb/host/dwc_common_port/dwc_modpow.c \
../drivers/usb/host/dwc_common_port/dwc_notifier.c 

OBJS += \
./drivers/usb/host/dwc_common_port/dwc_cc.o \
./drivers/usb/host/dwc_common_port/dwc_common_fbsd.o \
./drivers/usb/host/dwc_common_port/dwc_common_linux.o \
./drivers/usb/host/dwc_common_port/dwc_common_nbsd.o \
./drivers/usb/host/dwc_common_port/dwc_crypto.o \
./drivers/usb/host/dwc_common_port/dwc_dh.o \
./drivers/usb/host/dwc_common_port/dwc_mem.o \
./drivers/usb/host/dwc_common_port/dwc_modpow.o \
./drivers/usb/host/dwc_common_port/dwc_notifier.o 

C_DEPS += \
./drivers/usb/host/dwc_common_port/dwc_cc.d \
./drivers/usb/host/dwc_common_port/dwc_common_fbsd.d \
./drivers/usb/host/dwc_common_port/dwc_common_linux.d \
./drivers/usb/host/dwc_common_port/dwc_common_nbsd.d \
./drivers/usb/host/dwc_common_port/dwc_crypto.d \
./drivers/usb/host/dwc_common_port/dwc_dh.d \
./drivers/usb/host/dwc_common_port/dwc_mem.d \
./drivers/usb/host/dwc_common_port/dwc_modpow.d \
./drivers/usb/host/dwc_common_port/dwc_notifier.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/usb/host/dwc_common_port/%.o: ../drivers/usb/host/dwc_common_port/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


