################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/saa7134/saa6752hs.c \
../drivers/media/video/saa7134/saa7134-alsa.c \
../drivers/media/video/saa7134/saa7134-cards.c \
../drivers/media/video/saa7134/saa7134-core.c \
../drivers/media/video/saa7134/saa7134-dvb.c \
../drivers/media/video/saa7134/saa7134-empress.c \
../drivers/media/video/saa7134/saa7134-i2c.c \
../drivers/media/video/saa7134/saa7134-input.c \
../drivers/media/video/saa7134/saa7134-ts.c \
../drivers/media/video/saa7134/saa7134-tvaudio.c \
../drivers/media/video/saa7134/saa7134-vbi.c \
../drivers/media/video/saa7134/saa7134-video.c 

OBJS += \
./drivers/media/video/saa7134/saa6752hs.o \
./drivers/media/video/saa7134/saa7134-alsa.o \
./drivers/media/video/saa7134/saa7134-cards.o \
./drivers/media/video/saa7134/saa7134-core.o \
./drivers/media/video/saa7134/saa7134-dvb.o \
./drivers/media/video/saa7134/saa7134-empress.o \
./drivers/media/video/saa7134/saa7134-i2c.o \
./drivers/media/video/saa7134/saa7134-input.o \
./drivers/media/video/saa7134/saa7134-ts.o \
./drivers/media/video/saa7134/saa7134-tvaudio.o \
./drivers/media/video/saa7134/saa7134-vbi.o \
./drivers/media/video/saa7134/saa7134-video.o 

C_DEPS += \
./drivers/media/video/saa7134/saa6752hs.d \
./drivers/media/video/saa7134/saa7134-alsa.d \
./drivers/media/video/saa7134/saa7134-cards.d \
./drivers/media/video/saa7134/saa7134-core.d \
./drivers/media/video/saa7134/saa7134-dvb.d \
./drivers/media/video/saa7134/saa7134-empress.d \
./drivers/media/video/saa7134/saa7134-i2c.d \
./drivers/media/video/saa7134/saa7134-input.d \
./drivers/media/video/saa7134/saa7134-ts.d \
./drivers/media/video/saa7134/saa7134-tvaudio.d \
./drivers/media/video/saa7134/saa7134-vbi.d \
./drivers/media/video/saa7134/saa7134-video.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/saa7134/%.o: ../drivers/media/video/saa7134/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


