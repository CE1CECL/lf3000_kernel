################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/usbvision/usbvision-cards.c \
../drivers/media/video/usbvision/usbvision-core.c \
../drivers/media/video/usbvision/usbvision-i2c.c \
../drivers/media/video/usbvision/usbvision-video.c 

OBJS += \
./drivers/media/video/usbvision/usbvision-cards.o \
./drivers/media/video/usbvision/usbvision-core.o \
./drivers/media/video/usbvision/usbvision-i2c.o \
./drivers/media/video/usbvision/usbvision-video.o 

C_DEPS += \
./drivers/media/video/usbvision/usbvision-cards.d \
./drivers/media/video/usbvision/usbvision-core.d \
./drivers/media/video/usbvision/usbvision-i2c.d \
./drivers/media/video/usbvision/usbvision-video.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/usbvision/%.o: ../drivers/media/video/usbvision/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


