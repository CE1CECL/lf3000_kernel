################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/tm6000/tm6000-alsa.c \
../drivers/media/video/tm6000/tm6000-cards.c \
../drivers/media/video/tm6000/tm6000-core.c \
../drivers/media/video/tm6000/tm6000-dvb.c \
../drivers/media/video/tm6000/tm6000-i2c.c \
../drivers/media/video/tm6000/tm6000-input.c \
../drivers/media/video/tm6000/tm6000-stds.c \
../drivers/media/video/tm6000/tm6000-video.c 

OBJS += \
./drivers/media/video/tm6000/tm6000-alsa.o \
./drivers/media/video/tm6000/tm6000-cards.o \
./drivers/media/video/tm6000/tm6000-core.o \
./drivers/media/video/tm6000/tm6000-dvb.o \
./drivers/media/video/tm6000/tm6000-i2c.o \
./drivers/media/video/tm6000/tm6000-input.o \
./drivers/media/video/tm6000/tm6000-stds.o \
./drivers/media/video/tm6000/tm6000-video.o 

C_DEPS += \
./drivers/media/video/tm6000/tm6000-alsa.d \
./drivers/media/video/tm6000/tm6000-cards.d \
./drivers/media/video/tm6000/tm6000-core.d \
./drivers/media/video/tm6000/tm6000-dvb.d \
./drivers/media/video/tm6000/tm6000-i2c.d \
./drivers/media/video/tm6000/tm6000-input.d \
./drivers/media/video/tm6000/tm6000-stds.d \
./drivers/media/video/tm6000/tm6000-video.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/tm6000/%.o: ../drivers/media/video/tm6000/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


