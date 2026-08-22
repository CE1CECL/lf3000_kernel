################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/wireless/orinoco/airport.c \
../drivers/net/wireless/orinoco/cfg.c \
../drivers/net/wireless/orinoco/fw.c \
../drivers/net/wireless/orinoco/hermes.c \
../drivers/net/wireless/orinoco/hermes_dld.c \
../drivers/net/wireless/orinoco/hw.c \
../drivers/net/wireless/orinoco/main.c \
../drivers/net/wireless/orinoco/mic.c \
../drivers/net/wireless/orinoco/orinoco_cs.c \
../drivers/net/wireless/orinoco/orinoco_nortel.c \
../drivers/net/wireless/orinoco/orinoco_pci.c \
../drivers/net/wireless/orinoco/orinoco_plx.c \
../drivers/net/wireless/orinoco/orinoco_tmd.c \
../drivers/net/wireless/orinoco/orinoco_usb.c \
../drivers/net/wireless/orinoco/scan.c \
../drivers/net/wireless/orinoco/spectrum_cs.c \
../drivers/net/wireless/orinoco/wext.c 

OBJS += \
./drivers/net/wireless/orinoco/airport.o \
./drivers/net/wireless/orinoco/cfg.o \
./drivers/net/wireless/orinoco/fw.o \
./drivers/net/wireless/orinoco/hermes.o \
./drivers/net/wireless/orinoco/hermes_dld.o \
./drivers/net/wireless/orinoco/hw.o \
./drivers/net/wireless/orinoco/main.o \
./drivers/net/wireless/orinoco/mic.o \
./drivers/net/wireless/orinoco/orinoco_cs.o \
./drivers/net/wireless/orinoco/orinoco_nortel.o \
./drivers/net/wireless/orinoco/orinoco_pci.o \
./drivers/net/wireless/orinoco/orinoco_plx.o \
./drivers/net/wireless/orinoco/orinoco_tmd.o \
./drivers/net/wireless/orinoco/orinoco_usb.o \
./drivers/net/wireless/orinoco/scan.o \
./drivers/net/wireless/orinoco/spectrum_cs.o \
./drivers/net/wireless/orinoco/wext.o 

C_DEPS += \
./drivers/net/wireless/orinoco/airport.d \
./drivers/net/wireless/orinoco/cfg.d \
./drivers/net/wireless/orinoco/fw.d \
./drivers/net/wireless/orinoco/hermes.d \
./drivers/net/wireless/orinoco/hermes_dld.d \
./drivers/net/wireless/orinoco/hw.d \
./drivers/net/wireless/orinoco/main.d \
./drivers/net/wireless/orinoco/mic.d \
./drivers/net/wireless/orinoco/orinoco_cs.d \
./drivers/net/wireless/orinoco/orinoco_nortel.d \
./drivers/net/wireless/orinoco/orinoco_pci.d \
./drivers/net/wireless/orinoco/orinoco_plx.d \
./drivers/net/wireless/orinoco/orinoco_tmd.d \
./drivers/net/wireless/orinoco/orinoco_usb.d \
./drivers/net/wireless/orinoco/scan.d \
./drivers/net/wireless/orinoco/spectrum_cs.d \
./drivers/net/wireless/orinoco/wext.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/wireless/orinoco/%.o: ../drivers/net/wireless/orinoco/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


