################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/cx23885/altera-ci.c \
../drivers/media/video/cx23885/cimax2.c \
../drivers/media/video/cx23885/cx23885-417.c \
../drivers/media/video/cx23885/cx23885-alsa.c \
../drivers/media/video/cx23885/cx23885-av.c \
../drivers/media/video/cx23885/cx23885-cards.c \
../drivers/media/video/cx23885/cx23885-core.c \
../drivers/media/video/cx23885/cx23885-dvb.c \
../drivers/media/video/cx23885/cx23885-f300.c \
../drivers/media/video/cx23885/cx23885-i2c.c \
../drivers/media/video/cx23885/cx23885-input.c \
../drivers/media/video/cx23885/cx23885-ioctl.c \
../drivers/media/video/cx23885/cx23885-ir.c \
../drivers/media/video/cx23885/cx23885-vbi.c \
../drivers/media/video/cx23885/cx23885-video.c \
../drivers/media/video/cx23885/cx23888-ir.c \
../drivers/media/video/cx23885/netup-eeprom.c \
../drivers/media/video/cx23885/netup-init.c 

OBJS += \
./drivers/media/video/cx23885/altera-ci.o \
./drivers/media/video/cx23885/cimax2.o \
./drivers/media/video/cx23885/cx23885-417.o \
./drivers/media/video/cx23885/cx23885-alsa.o \
./drivers/media/video/cx23885/cx23885-av.o \
./drivers/media/video/cx23885/cx23885-cards.o \
./drivers/media/video/cx23885/cx23885-core.o \
./drivers/media/video/cx23885/cx23885-dvb.o \
./drivers/media/video/cx23885/cx23885-f300.o \
./drivers/media/video/cx23885/cx23885-i2c.o \
./drivers/media/video/cx23885/cx23885-input.o \
./drivers/media/video/cx23885/cx23885-ioctl.o \
./drivers/media/video/cx23885/cx23885-ir.o \
./drivers/media/video/cx23885/cx23885-vbi.o \
./drivers/media/video/cx23885/cx23885-video.o \
./drivers/media/video/cx23885/cx23888-ir.o \
./drivers/media/video/cx23885/netup-eeprom.o \
./drivers/media/video/cx23885/netup-init.o 

C_DEPS += \
./drivers/media/video/cx23885/altera-ci.d \
./drivers/media/video/cx23885/cimax2.d \
./drivers/media/video/cx23885/cx23885-417.d \
./drivers/media/video/cx23885/cx23885-alsa.d \
./drivers/media/video/cx23885/cx23885-av.d \
./drivers/media/video/cx23885/cx23885-cards.d \
./drivers/media/video/cx23885/cx23885-core.d \
./drivers/media/video/cx23885/cx23885-dvb.d \
./drivers/media/video/cx23885/cx23885-f300.d \
./drivers/media/video/cx23885/cx23885-i2c.d \
./drivers/media/video/cx23885/cx23885-input.d \
./drivers/media/video/cx23885/cx23885-ioctl.d \
./drivers/media/video/cx23885/cx23885-ir.d \
./drivers/media/video/cx23885/cx23885-vbi.d \
./drivers/media/video/cx23885/cx23885-video.d \
./drivers/media/video/cx23885/cx23888-ir.d \
./drivers/media/video/cx23885/netup-eeprom.d \
./drivers/media/video/cx23885/netup-init.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/cx23885/%.o: ../drivers/media/video/cx23885/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


