################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/ivtv/ivtv-cards.c \
../drivers/media/video/ivtv/ivtv-controls.c \
../drivers/media/video/ivtv/ivtv-driver.c \
../drivers/media/video/ivtv/ivtv-fileops.c \
../drivers/media/video/ivtv/ivtv-firmware.c \
../drivers/media/video/ivtv/ivtv-gpio.c \
../drivers/media/video/ivtv/ivtv-i2c.c \
../drivers/media/video/ivtv/ivtv-ioctl.c \
../drivers/media/video/ivtv/ivtv-irq.c \
../drivers/media/video/ivtv/ivtv-mailbox.c \
../drivers/media/video/ivtv/ivtv-queue.c \
../drivers/media/video/ivtv/ivtv-routing.c \
../drivers/media/video/ivtv/ivtv-streams.c \
../drivers/media/video/ivtv/ivtv-udma.c \
../drivers/media/video/ivtv/ivtv-vbi.c \
../drivers/media/video/ivtv/ivtv-yuv.c \
../drivers/media/video/ivtv/ivtvfb.c 

OBJS += \
./drivers/media/video/ivtv/ivtv-cards.o \
./drivers/media/video/ivtv/ivtv-controls.o \
./drivers/media/video/ivtv/ivtv-driver.o \
./drivers/media/video/ivtv/ivtv-fileops.o \
./drivers/media/video/ivtv/ivtv-firmware.o \
./drivers/media/video/ivtv/ivtv-gpio.o \
./drivers/media/video/ivtv/ivtv-i2c.o \
./drivers/media/video/ivtv/ivtv-ioctl.o \
./drivers/media/video/ivtv/ivtv-irq.o \
./drivers/media/video/ivtv/ivtv-mailbox.o \
./drivers/media/video/ivtv/ivtv-queue.o \
./drivers/media/video/ivtv/ivtv-routing.o \
./drivers/media/video/ivtv/ivtv-streams.o \
./drivers/media/video/ivtv/ivtv-udma.o \
./drivers/media/video/ivtv/ivtv-vbi.o \
./drivers/media/video/ivtv/ivtv-yuv.o \
./drivers/media/video/ivtv/ivtvfb.o 

C_DEPS += \
./drivers/media/video/ivtv/ivtv-cards.d \
./drivers/media/video/ivtv/ivtv-controls.d \
./drivers/media/video/ivtv/ivtv-driver.d \
./drivers/media/video/ivtv/ivtv-fileops.d \
./drivers/media/video/ivtv/ivtv-firmware.d \
./drivers/media/video/ivtv/ivtv-gpio.d \
./drivers/media/video/ivtv/ivtv-i2c.d \
./drivers/media/video/ivtv/ivtv-ioctl.d \
./drivers/media/video/ivtv/ivtv-irq.d \
./drivers/media/video/ivtv/ivtv-mailbox.d \
./drivers/media/video/ivtv/ivtv-queue.d \
./drivers/media/video/ivtv/ivtv-routing.d \
./drivers/media/video/ivtv/ivtv-streams.d \
./drivers/media/video/ivtv/ivtv-udma.d \
./drivers/media/video/ivtv/ivtv-vbi.d \
./drivers/media/video/ivtv/ivtv-yuv.d \
./drivers/media/video/ivtv/ivtvfb.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/ivtv/%.o: ../drivers/media/video/ivtv/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


