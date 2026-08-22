################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/usb/wusbcore/cbaf.c \
../drivers/usb/wusbcore/crypto.c \
../drivers/usb/wusbcore/dev-sysfs.c \
../drivers/usb/wusbcore/devconnect.c \
../drivers/usb/wusbcore/mmc.c \
../drivers/usb/wusbcore/pal.c \
../drivers/usb/wusbcore/reservation.c \
../drivers/usb/wusbcore/rh.c \
../drivers/usb/wusbcore/security.c \
../drivers/usb/wusbcore/wa-hc.c \
../drivers/usb/wusbcore/wa-nep.c \
../drivers/usb/wusbcore/wa-rpipe.c \
../drivers/usb/wusbcore/wa-xfer.c \
../drivers/usb/wusbcore/wusbhc.c 

OBJS += \
./drivers/usb/wusbcore/cbaf.o \
./drivers/usb/wusbcore/crypto.o \
./drivers/usb/wusbcore/dev-sysfs.o \
./drivers/usb/wusbcore/devconnect.o \
./drivers/usb/wusbcore/mmc.o \
./drivers/usb/wusbcore/pal.o \
./drivers/usb/wusbcore/reservation.o \
./drivers/usb/wusbcore/rh.o \
./drivers/usb/wusbcore/security.o \
./drivers/usb/wusbcore/wa-hc.o \
./drivers/usb/wusbcore/wa-nep.o \
./drivers/usb/wusbcore/wa-rpipe.o \
./drivers/usb/wusbcore/wa-xfer.o \
./drivers/usb/wusbcore/wusbhc.o 

C_DEPS += \
./drivers/usb/wusbcore/cbaf.d \
./drivers/usb/wusbcore/crypto.d \
./drivers/usb/wusbcore/dev-sysfs.d \
./drivers/usb/wusbcore/devconnect.d \
./drivers/usb/wusbcore/mmc.d \
./drivers/usb/wusbcore/pal.d \
./drivers/usb/wusbcore/reservation.d \
./drivers/usb/wusbcore/rh.d \
./drivers/usb/wusbcore/security.d \
./drivers/usb/wusbcore/wa-hc.d \
./drivers/usb/wusbcore/wa-nep.d \
./drivers/usb/wusbcore/wa-rpipe.d \
./drivers/usb/wusbcore/wa-xfer.d \
./drivers/usb/wusbcore/wusbhc.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/usb/wusbcore/%.o: ../drivers/usb/wusbcore/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


