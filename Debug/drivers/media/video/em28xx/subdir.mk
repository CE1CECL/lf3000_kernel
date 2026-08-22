################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/em28xx/em28xx-audio.c \
../drivers/media/video/em28xx/em28xx-cards.c \
../drivers/media/video/em28xx/em28xx-core.c \
../drivers/media/video/em28xx/em28xx-dvb.c \
../drivers/media/video/em28xx/em28xx-i2c.c \
../drivers/media/video/em28xx/em28xx-input.c \
../drivers/media/video/em28xx/em28xx-vbi.c \
../drivers/media/video/em28xx/em28xx-video.c 

OBJS += \
./drivers/media/video/em28xx/em28xx-audio.o \
./drivers/media/video/em28xx/em28xx-cards.o \
./drivers/media/video/em28xx/em28xx-core.o \
./drivers/media/video/em28xx/em28xx-dvb.o \
./drivers/media/video/em28xx/em28xx-i2c.o \
./drivers/media/video/em28xx/em28xx-input.o \
./drivers/media/video/em28xx/em28xx-vbi.o \
./drivers/media/video/em28xx/em28xx-video.o 

C_DEPS += \
./drivers/media/video/em28xx/em28xx-audio.d \
./drivers/media/video/em28xx/em28xx-cards.d \
./drivers/media/video/em28xx/em28xx-core.d \
./drivers/media/video/em28xx/em28xx-dvb.d \
./drivers/media/video/em28xx/em28xx-i2c.d \
./drivers/media/video/em28xx/em28xx-input.d \
./drivers/media/video/em28xx/em28xx-vbi.d \
./drivers/media/video/em28xx/em28xx-video.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/em28xx/%.o: ../drivers/media/video/em28xx/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


