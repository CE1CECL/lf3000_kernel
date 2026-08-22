################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/usb/misc/adutux.c \
../drivers/usb/misc/appledisplay.c \
../drivers/usb/misc/cypress_cy7c63.c \
../drivers/usb/misc/cytherm.c \
../drivers/usb/misc/emi26.c \
../drivers/usb/misc/emi62.c \
../drivers/usb/misc/ftdi-elan.c \
../drivers/usb/misc/idmouse.c \
../drivers/usb/misc/iowarrior.c \
../drivers/usb/misc/isight_firmware.c \
../drivers/usb/misc/ldusb.c \
../drivers/usb/misc/legousbtower.c \
../drivers/usb/misc/rio500.c \
../drivers/usb/misc/trancevibrator.c \
../drivers/usb/misc/usblcd.c \
../drivers/usb/misc/usbled.c \
../drivers/usb/misc/usbsevseg.c \
../drivers/usb/misc/usbtest.c \
../drivers/usb/misc/uss720.c \
../drivers/usb/misc/yurex.c 

OBJS += \
./drivers/usb/misc/adutux.o \
./drivers/usb/misc/appledisplay.o \
./drivers/usb/misc/cypress_cy7c63.o \
./drivers/usb/misc/cytherm.o \
./drivers/usb/misc/emi26.o \
./drivers/usb/misc/emi62.o \
./drivers/usb/misc/ftdi-elan.o \
./drivers/usb/misc/idmouse.o \
./drivers/usb/misc/iowarrior.o \
./drivers/usb/misc/isight_firmware.o \
./drivers/usb/misc/ldusb.o \
./drivers/usb/misc/legousbtower.o \
./drivers/usb/misc/rio500.o \
./drivers/usb/misc/trancevibrator.o \
./drivers/usb/misc/usblcd.o \
./drivers/usb/misc/usbled.o \
./drivers/usb/misc/usbsevseg.o \
./drivers/usb/misc/usbtest.o \
./drivers/usb/misc/uss720.o \
./drivers/usb/misc/yurex.o 

C_DEPS += \
./drivers/usb/misc/adutux.d \
./drivers/usb/misc/appledisplay.d \
./drivers/usb/misc/cypress_cy7c63.d \
./drivers/usb/misc/cytherm.d \
./drivers/usb/misc/emi26.d \
./drivers/usb/misc/emi62.d \
./drivers/usb/misc/ftdi-elan.d \
./drivers/usb/misc/idmouse.d \
./drivers/usb/misc/iowarrior.d \
./drivers/usb/misc/isight_firmware.d \
./drivers/usb/misc/ldusb.d \
./drivers/usb/misc/legousbtower.d \
./drivers/usb/misc/rio500.d \
./drivers/usb/misc/trancevibrator.d \
./drivers/usb/misc/usblcd.d \
./drivers/usb/misc/usbled.d \
./drivers/usb/misc/usbsevseg.d \
./drivers/usb/misc/usbtest.d \
./drivers/usb/misc/uss720.d \
./drivers/usb/misc/yurex.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/usb/misc/%.o: ../drivers/usb/misc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


