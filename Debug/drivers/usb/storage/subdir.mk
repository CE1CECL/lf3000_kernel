################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/usb/storage/alauda.c \
../drivers/usb/storage/cypress_atacb.c \
../drivers/usb/storage/datafab.c \
../drivers/usb/storage/debug.c \
../drivers/usb/storage/ene_ub6250.c \
../drivers/usb/storage/freecom.c \
../drivers/usb/storage/initializers.c \
../drivers/usb/storage/isd200.c \
../drivers/usb/storage/jumpshot.c \
../drivers/usb/storage/karma.c \
../drivers/usb/storage/libusual.c \
../drivers/usb/storage/onetouch.c \
../drivers/usb/storage/option_ms.c \
../drivers/usb/storage/protocol.c \
../drivers/usb/storage/realtek_cr.c \
../drivers/usb/storage/scsiglue.c \
../drivers/usb/storage/sddr09.c \
../drivers/usb/storage/sddr55.c \
../drivers/usb/storage/shuttle_usbat.c \
../drivers/usb/storage/sierra_ms.c \
../drivers/usb/storage/transport.c \
../drivers/usb/storage/uas.c \
../drivers/usb/storage/usb.c \
../drivers/usb/storage/usual-tables.c 

OBJS += \
./drivers/usb/storage/alauda.o \
./drivers/usb/storage/cypress_atacb.o \
./drivers/usb/storage/datafab.o \
./drivers/usb/storage/debug.o \
./drivers/usb/storage/ene_ub6250.o \
./drivers/usb/storage/freecom.o \
./drivers/usb/storage/initializers.o \
./drivers/usb/storage/isd200.o \
./drivers/usb/storage/jumpshot.o \
./drivers/usb/storage/karma.o \
./drivers/usb/storage/libusual.o \
./drivers/usb/storage/onetouch.o \
./drivers/usb/storage/option_ms.o \
./drivers/usb/storage/protocol.o \
./drivers/usb/storage/realtek_cr.o \
./drivers/usb/storage/scsiglue.o \
./drivers/usb/storage/sddr09.o \
./drivers/usb/storage/sddr55.o \
./drivers/usb/storage/shuttle_usbat.o \
./drivers/usb/storage/sierra_ms.o \
./drivers/usb/storage/transport.o \
./drivers/usb/storage/uas.o \
./drivers/usb/storage/usb.o \
./drivers/usb/storage/usual-tables.o 

C_DEPS += \
./drivers/usb/storage/alauda.d \
./drivers/usb/storage/cypress_atacb.d \
./drivers/usb/storage/datafab.d \
./drivers/usb/storage/debug.d \
./drivers/usb/storage/ene_ub6250.d \
./drivers/usb/storage/freecom.d \
./drivers/usb/storage/initializers.d \
./drivers/usb/storage/isd200.d \
./drivers/usb/storage/jumpshot.d \
./drivers/usb/storage/karma.d \
./drivers/usb/storage/libusual.d \
./drivers/usb/storage/onetouch.d \
./drivers/usb/storage/option_ms.d \
./drivers/usb/storage/protocol.d \
./drivers/usb/storage/realtek_cr.d \
./drivers/usb/storage/scsiglue.d \
./drivers/usb/storage/sddr09.d \
./drivers/usb/storage/sddr55.d \
./drivers/usb/storage/shuttle_usbat.d \
./drivers/usb/storage/sierra_ms.d \
./drivers/usb/storage/transport.d \
./drivers/usb/storage/uas.d \
./drivers/usb/storage/usb.d \
./drivers/usb/storage/usual-tables.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/usb/storage/%.o: ../drivers/usb/storage/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


