################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/cx25821/cx25821-alsa.c \
../drivers/media/video/cx25821/cx25821-audio-upstream.c \
../drivers/media/video/cx25821/cx25821-cards.c \
../drivers/media/video/cx25821/cx25821-core.c \
../drivers/media/video/cx25821/cx25821-gpio.c \
../drivers/media/video/cx25821/cx25821-i2c.c \
../drivers/media/video/cx25821/cx25821-medusa-video.c \
../drivers/media/video/cx25821/cx25821-video-upstream-ch2.c \
../drivers/media/video/cx25821/cx25821-video-upstream.c \
../drivers/media/video/cx25821/cx25821-video.c 

OBJS += \
./drivers/media/video/cx25821/cx25821-alsa.o \
./drivers/media/video/cx25821/cx25821-audio-upstream.o \
./drivers/media/video/cx25821/cx25821-cards.o \
./drivers/media/video/cx25821/cx25821-core.o \
./drivers/media/video/cx25821/cx25821-gpio.o \
./drivers/media/video/cx25821/cx25821-i2c.o \
./drivers/media/video/cx25821/cx25821-medusa-video.o \
./drivers/media/video/cx25821/cx25821-video-upstream-ch2.o \
./drivers/media/video/cx25821/cx25821-video-upstream.o \
./drivers/media/video/cx25821/cx25821-video.o 

C_DEPS += \
./drivers/media/video/cx25821/cx25821-alsa.d \
./drivers/media/video/cx25821/cx25821-audio-upstream.d \
./drivers/media/video/cx25821/cx25821-cards.d \
./drivers/media/video/cx25821/cx25821-core.d \
./drivers/media/video/cx25821/cx25821-gpio.d \
./drivers/media/video/cx25821/cx25821-i2c.d \
./drivers/media/video/cx25821/cx25821-medusa-video.d \
./drivers/media/video/cx25821/cx25821-video-upstream-ch2.d \
./drivers/media/video/cx25821/cx25821-video-upstream.d \
./drivers/media/video/cx25821/cx25821-video.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/cx25821/%.o: ../drivers/media/video/cx25821/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


