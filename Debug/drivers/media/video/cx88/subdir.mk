################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/cx88/cx88-alsa.c \
../drivers/media/video/cx88/cx88-blackbird.c \
../drivers/media/video/cx88/cx88-cards.c \
../drivers/media/video/cx88/cx88-core.c \
../drivers/media/video/cx88/cx88-dsp.c \
../drivers/media/video/cx88/cx88-dvb.c \
../drivers/media/video/cx88/cx88-i2c.c \
../drivers/media/video/cx88/cx88-input.c \
../drivers/media/video/cx88/cx88-mpeg.c \
../drivers/media/video/cx88/cx88-tvaudio.c \
../drivers/media/video/cx88/cx88-vbi.c \
../drivers/media/video/cx88/cx88-video.c \
../drivers/media/video/cx88/cx88-vp3054-i2c.c 

OBJS += \
./drivers/media/video/cx88/cx88-alsa.o \
./drivers/media/video/cx88/cx88-blackbird.o \
./drivers/media/video/cx88/cx88-cards.o \
./drivers/media/video/cx88/cx88-core.o \
./drivers/media/video/cx88/cx88-dsp.o \
./drivers/media/video/cx88/cx88-dvb.o \
./drivers/media/video/cx88/cx88-i2c.o \
./drivers/media/video/cx88/cx88-input.o \
./drivers/media/video/cx88/cx88-mpeg.o \
./drivers/media/video/cx88/cx88-tvaudio.o \
./drivers/media/video/cx88/cx88-vbi.o \
./drivers/media/video/cx88/cx88-video.o \
./drivers/media/video/cx88/cx88-vp3054-i2c.o 

C_DEPS += \
./drivers/media/video/cx88/cx88-alsa.d \
./drivers/media/video/cx88/cx88-blackbird.d \
./drivers/media/video/cx88/cx88-cards.d \
./drivers/media/video/cx88/cx88-core.d \
./drivers/media/video/cx88/cx88-dsp.d \
./drivers/media/video/cx88/cx88-dvb.d \
./drivers/media/video/cx88/cx88-i2c.d \
./drivers/media/video/cx88/cx88-input.d \
./drivers/media/video/cx88/cx88-mpeg.d \
./drivers/media/video/cx88/cx88-tvaudio.d \
./drivers/media/video/cx88/cx88-vbi.d \
./drivers/media/video/cx88/cx88-video.d \
./drivers/media/video/cx88/cx88-vp3054-i2c.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/cx88/%.o: ../drivers/media/video/cx88/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


