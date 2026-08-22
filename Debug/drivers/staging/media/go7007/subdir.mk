################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/media/go7007/go7007-driver.c \
../drivers/staging/media/go7007/go7007-fw.c \
../drivers/staging/media/go7007/go7007-i2c.c \
../drivers/staging/media/go7007/go7007-usb.c \
../drivers/staging/media/go7007/go7007-v4l2.c \
../drivers/staging/media/go7007/s2250-board.c \
../drivers/staging/media/go7007/s2250-loader.c \
../drivers/staging/media/go7007/saa7134-go7007.c \
../drivers/staging/media/go7007/snd-go7007.c \
../drivers/staging/media/go7007/wis-ov7640.c \
../drivers/staging/media/go7007/wis-saa7113.c \
../drivers/staging/media/go7007/wis-saa7115.c \
../drivers/staging/media/go7007/wis-sony-tuner.c \
../drivers/staging/media/go7007/wis-tw2804.c \
../drivers/staging/media/go7007/wis-tw9903.c \
../drivers/staging/media/go7007/wis-uda1342.c 

OBJS += \
./drivers/staging/media/go7007/go7007-driver.o \
./drivers/staging/media/go7007/go7007-fw.o \
./drivers/staging/media/go7007/go7007-i2c.o \
./drivers/staging/media/go7007/go7007-usb.o \
./drivers/staging/media/go7007/go7007-v4l2.o \
./drivers/staging/media/go7007/s2250-board.o \
./drivers/staging/media/go7007/s2250-loader.o \
./drivers/staging/media/go7007/saa7134-go7007.o \
./drivers/staging/media/go7007/snd-go7007.o \
./drivers/staging/media/go7007/wis-ov7640.o \
./drivers/staging/media/go7007/wis-saa7113.o \
./drivers/staging/media/go7007/wis-saa7115.o \
./drivers/staging/media/go7007/wis-sony-tuner.o \
./drivers/staging/media/go7007/wis-tw2804.o \
./drivers/staging/media/go7007/wis-tw9903.o \
./drivers/staging/media/go7007/wis-uda1342.o 

C_DEPS += \
./drivers/staging/media/go7007/go7007-driver.d \
./drivers/staging/media/go7007/go7007-fw.d \
./drivers/staging/media/go7007/go7007-i2c.d \
./drivers/staging/media/go7007/go7007-usb.d \
./drivers/staging/media/go7007/go7007-v4l2.d \
./drivers/staging/media/go7007/s2250-board.d \
./drivers/staging/media/go7007/s2250-loader.d \
./drivers/staging/media/go7007/saa7134-go7007.d \
./drivers/staging/media/go7007/snd-go7007.d \
./drivers/staging/media/go7007/wis-ov7640.d \
./drivers/staging/media/go7007/wis-saa7113.d \
./drivers/staging/media/go7007/wis-saa7115.d \
./drivers/staging/media/go7007/wis-sony-tuner.d \
./drivers/staging/media/go7007/wis-tw2804.d \
./drivers/staging/media/go7007/wis-tw9903.d \
./drivers/staging/media/go7007/wis-uda1342.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/media/go7007/%.o: ../drivers/staging/media/go7007/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


