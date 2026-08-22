################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/zoran/videocodec.c \
../drivers/media/video/zoran/zoran_card.c \
../drivers/media/video/zoran/zoran_device.c \
../drivers/media/video/zoran/zoran_driver.c \
../drivers/media/video/zoran/zoran_procfs.c \
../drivers/media/video/zoran/zr36016.c \
../drivers/media/video/zoran/zr36050.c \
../drivers/media/video/zoran/zr36060.c 

OBJS += \
./drivers/media/video/zoran/videocodec.o \
./drivers/media/video/zoran/zoran_card.o \
./drivers/media/video/zoran/zoran_device.o \
./drivers/media/video/zoran/zoran_driver.o \
./drivers/media/video/zoran/zoran_procfs.o \
./drivers/media/video/zoran/zr36016.o \
./drivers/media/video/zoran/zr36050.o \
./drivers/media/video/zoran/zr36060.o 

C_DEPS += \
./drivers/media/video/zoran/videocodec.d \
./drivers/media/video/zoran/zoran_card.d \
./drivers/media/video/zoran/zoran_device.d \
./drivers/media/video/zoran/zoran_driver.d \
./drivers/media/video/zoran/zoran_procfs.d \
./drivers/media/video/zoran/zr36016.d \
./drivers/media/video/zoran/zr36050.d \
./drivers/media/video/zoran/zr36060.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/zoran/%.o: ../drivers/media/video/zoran/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


