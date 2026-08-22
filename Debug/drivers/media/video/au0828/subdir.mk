################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/au0828/au0828-cards.c \
../drivers/media/video/au0828/au0828-core.c \
../drivers/media/video/au0828/au0828-dvb.c \
../drivers/media/video/au0828/au0828-i2c.c \
../drivers/media/video/au0828/au0828-vbi.c \
../drivers/media/video/au0828/au0828-video.c 

OBJS += \
./drivers/media/video/au0828/au0828-cards.o \
./drivers/media/video/au0828/au0828-core.o \
./drivers/media/video/au0828/au0828-dvb.o \
./drivers/media/video/au0828/au0828-i2c.o \
./drivers/media/video/au0828/au0828-vbi.o \
./drivers/media/video/au0828/au0828-video.o 

C_DEPS += \
./drivers/media/video/au0828/au0828-cards.d \
./drivers/media/video/au0828/au0828-core.d \
./drivers/media/video/au0828/au0828-dvb.d \
./drivers/media/video/au0828/au0828-i2c.d \
./drivers/media/video/au0828/au0828-vbi.d \
./drivers/media/video/au0828/au0828-video.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/au0828/%.o: ../drivers/media/video/au0828/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


