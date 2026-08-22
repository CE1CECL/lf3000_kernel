################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/pvrusb2/pvrusb2-audio.c \
../drivers/media/video/pvrusb2/pvrusb2-context.c \
../drivers/media/video/pvrusb2/pvrusb2-cs53l32a.c \
../drivers/media/video/pvrusb2/pvrusb2-ctrl.c \
../drivers/media/video/pvrusb2/pvrusb2-cx2584x-v4l.c \
../drivers/media/video/pvrusb2/pvrusb2-debugifc.c \
../drivers/media/video/pvrusb2/pvrusb2-devattr.c \
../drivers/media/video/pvrusb2/pvrusb2-dvb.c \
../drivers/media/video/pvrusb2/pvrusb2-eeprom.c \
../drivers/media/video/pvrusb2/pvrusb2-encoder.c \
../drivers/media/video/pvrusb2/pvrusb2-hdw.c \
../drivers/media/video/pvrusb2/pvrusb2-i2c-core.c \
../drivers/media/video/pvrusb2/pvrusb2-io.c \
../drivers/media/video/pvrusb2/pvrusb2-ioread.c \
../drivers/media/video/pvrusb2/pvrusb2-main.c \
../drivers/media/video/pvrusb2/pvrusb2-std.c \
../drivers/media/video/pvrusb2/pvrusb2-sysfs.c \
../drivers/media/video/pvrusb2/pvrusb2-v4l2.c \
../drivers/media/video/pvrusb2/pvrusb2-video-v4l.c \
../drivers/media/video/pvrusb2/pvrusb2-wm8775.c 

OBJS += \
./drivers/media/video/pvrusb2/pvrusb2-audio.o \
./drivers/media/video/pvrusb2/pvrusb2-context.o \
./drivers/media/video/pvrusb2/pvrusb2-cs53l32a.o \
./drivers/media/video/pvrusb2/pvrusb2-ctrl.o \
./drivers/media/video/pvrusb2/pvrusb2-cx2584x-v4l.o \
./drivers/media/video/pvrusb2/pvrusb2-debugifc.o \
./drivers/media/video/pvrusb2/pvrusb2-devattr.o \
./drivers/media/video/pvrusb2/pvrusb2-dvb.o \
./drivers/media/video/pvrusb2/pvrusb2-eeprom.o \
./drivers/media/video/pvrusb2/pvrusb2-encoder.o \
./drivers/media/video/pvrusb2/pvrusb2-hdw.o \
./drivers/media/video/pvrusb2/pvrusb2-i2c-core.o \
./drivers/media/video/pvrusb2/pvrusb2-io.o \
./drivers/media/video/pvrusb2/pvrusb2-ioread.o \
./drivers/media/video/pvrusb2/pvrusb2-main.o \
./drivers/media/video/pvrusb2/pvrusb2-std.o \
./drivers/media/video/pvrusb2/pvrusb2-sysfs.o \
./drivers/media/video/pvrusb2/pvrusb2-v4l2.o \
./drivers/media/video/pvrusb2/pvrusb2-video-v4l.o \
./drivers/media/video/pvrusb2/pvrusb2-wm8775.o 

C_DEPS += \
./drivers/media/video/pvrusb2/pvrusb2-audio.d \
./drivers/media/video/pvrusb2/pvrusb2-context.d \
./drivers/media/video/pvrusb2/pvrusb2-cs53l32a.d \
./drivers/media/video/pvrusb2/pvrusb2-ctrl.d \
./drivers/media/video/pvrusb2/pvrusb2-cx2584x-v4l.d \
./drivers/media/video/pvrusb2/pvrusb2-debugifc.d \
./drivers/media/video/pvrusb2/pvrusb2-devattr.d \
./drivers/media/video/pvrusb2/pvrusb2-dvb.d \
./drivers/media/video/pvrusb2/pvrusb2-eeprom.d \
./drivers/media/video/pvrusb2/pvrusb2-encoder.d \
./drivers/media/video/pvrusb2/pvrusb2-hdw.d \
./drivers/media/video/pvrusb2/pvrusb2-i2c-core.d \
./drivers/media/video/pvrusb2/pvrusb2-io.d \
./drivers/media/video/pvrusb2/pvrusb2-ioread.d \
./drivers/media/video/pvrusb2/pvrusb2-main.d \
./drivers/media/video/pvrusb2/pvrusb2-std.d \
./drivers/media/video/pvrusb2/pvrusb2-sysfs.d \
./drivers/media/video/pvrusb2/pvrusb2-v4l2.d \
./drivers/media/video/pvrusb2/pvrusb2-video-v4l.d \
./drivers/media/video/pvrusb2/pvrusb2-wm8775.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/pvrusb2/%.o: ../drivers/media/video/pvrusb2/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


