################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/cx18/cx18-alsa-main.c \
../drivers/media/video/cx18/cx18-alsa-mixer.c \
../drivers/media/video/cx18/cx18-alsa-pcm.c \
../drivers/media/video/cx18/cx18-audio.c \
../drivers/media/video/cx18/cx18-av-audio.c \
../drivers/media/video/cx18/cx18-av-core.c \
../drivers/media/video/cx18/cx18-av-firmware.c \
../drivers/media/video/cx18/cx18-av-vbi.c \
../drivers/media/video/cx18/cx18-cards.c \
../drivers/media/video/cx18/cx18-controls.c \
../drivers/media/video/cx18/cx18-driver.c \
../drivers/media/video/cx18/cx18-dvb.c \
../drivers/media/video/cx18/cx18-fileops.c \
../drivers/media/video/cx18/cx18-firmware.c \
../drivers/media/video/cx18/cx18-gpio.c \
../drivers/media/video/cx18/cx18-i2c.c \
../drivers/media/video/cx18/cx18-io.c \
../drivers/media/video/cx18/cx18-ioctl.c \
../drivers/media/video/cx18/cx18-irq.c \
../drivers/media/video/cx18/cx18-mailbox.c \
../drivers/media/video/cx18/cx18-queue.c \
../drivers/media/video/cx18/cx18-scb.c \
../drivers/media/video/cx18/cx18-streams.c \
../drivers/media/video/cx18/cx18-vbi.c \
../drivers/media/video/cx18/cx18-video.c 

OBJS += \
./drivers/media/video/cx18/cx18-alsa-main.o \
./drivers/media/video/cx18/cx18-alsa-mixer.o \
./drivers/media/video/cx18/cx18-alsa-pcm.o \
./drivers/media/video/cx18/cx18-audio.o \
./drivers/media/video/cx18/cx18-av-audio.o \
./drivers/media/video/cx18/cx18-av-core.o \
./drivers/media/video/cx18/cx18-av-firmware.o \
./drivers/media/video/cx18/cx18-av-vbi.o \
./drivers/media/video/cx18/cx18-cards.o \
./drivers/media/video/cx18/cx18-controls.o \
./drivers/media/video/cx18/cx18-driver.o \
./drivers/media/video/cx18/cx18-dvb.o \
./drivers/media/video/cx18/cx18-fileops.o \
./drivers/media/video/cx18/cx18-firmware.o \
./drivers/media/video/cx18/cx18-gpio.o \
./drivers/media/video/cx18/cx18-i2c.o \
./drivers/media/video/cx18/cx18-io.o \
./drivers/media/video/cx18/cx18-ioctl.o \
./drivers/media/video/cx18/cx18-irq.o \
./drivers/media/video/cx18/cx18-mailbox.o \
./drivers/media/video/cx18/cx18-queue.o \
./drivers/media/video/cx18/cx18-scb.o \
./drivers/media/video/cx18/cx18-streams.o \
./drivers/media/video/cx18/cx18-vbi.o \
./drivers/media/video/cx18/cx18-video.o 

C_DEPS += \
./drivers/media/video/cx18/cx18-alsa-main.d \
./drivers/media/video/cx18/cx18-alsa-mixer.d \
./drivers/media/video/cx18/cx18-alsa-pcm.d \
./drivers/media/video/cx18/cx18-audio.d \
./drivers/media/video/cx18/cx18-av-audio.d \
./drivers/media/video/cx18/cx18-av-core.d \
./drivers/media/video/cx18/cx18-av-firmware.d \
./drivers/media/video/cx18/cx18-av-vbi.d \
./drivers/media/video/cx18/cx18-cards.d \
./drivers/media/video/cx18/cx18-controls.d \
./drivers/media/video/cx18/cx18-driver.d \
./drivers/media/video/cx18/cx18-dvb.d \
./drivers/media/video/cx18/cx18-fileops.d \
./drivers/media/video/cx18/cx18-firmware.d \
./drivers/media/video/cx18/cx18-gpio.d \
./drivers/media/video/cx18/cx18-i2c.d \
./drivers/media/video/cx18/cx18-io.d \
./drivers/media/video/cx18/cx18-ioctl.d \
./drivers/media/video/cx18/cx18-irq.d \
./drivers/media/video/cx18/cx18-mailbox.d \
./drivers/media/video/cx18/cx18-queue.d \
./drivers/media/video/cx18/cx18-scb.d \
./drivers/media/video/cx18/cx18-streams.d \
./drivers/media/video/cx18/cx18-vbi.d \
./drivers/media/video/cx18/cx18-video.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/cx18/%.o: ../drivers/media/video/cx18/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


