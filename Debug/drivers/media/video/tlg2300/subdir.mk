################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/tlg2300/pd-alsa.c \
../drivers/media/video/tlg2300/pd-dvb.c \
../drivers/media/video/tlg2300/pd-main.c \
../drivers/media/video/tlg2300/pd-radio.c \
../drivers/media/video/tlg2300/pd-video.c 

OBJS += \
./drivers/media/video/tlg2300/pd-alsa.o \
./drivers/media/video/tlg2300/pd-dvb.o \
./drivers/media/video/tlg2300/pd-main.o \
./drivers/media/video/tlg2300/pd-radio.o \
./drivers/media/video/tlg2300/pd-video.o 

C_DEPS += \
./drivers/media/video/tlg2300/pd-alsa.d \
./drivers/media/video/tlg2300/pd-dvb.d \
./drivers/media/video/tlg2300/pd-main.d \
./drivers/media/video/tlg2300/pd-radio.d \
./drivers/media/video/tlg2300/pd-video.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/tlg2300/%.o: ../drivers/media/video/tlg2300/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


