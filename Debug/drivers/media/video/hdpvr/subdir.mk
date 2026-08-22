################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/hdpvr/hdpvr-control.c \
../drivers/media/video/hdpvr/hdpvr-core.c \
../drivers/media/video/hdpvr/hdpvr-i2c.c \
../drivers/media/video/hdpvr/hdpvr-video.c 

OBJS += \
./drivers/media/video/hdpvr/hdpvr-control.o \
./drivers/media/video/hdpvr/hdpvr-core.o \
./drivers/media/video/hdpvr/hdpvr-i2c.o \
./drivers/media/video/hdpvr/hdpvr-video.o 

C_DEPS += \
./drivers/media/video/hdpvr/hdpvr-control.d \
./drivers/media/video/hdpvr/hdpvr-core.d \
./drivers/media/video/hdpvr/hdpvr-i2c.d \
./drivers/media/video/hdpvr/hdpvr-video.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/hdpvr/%.o: ../drivers/media/video/hdpvr/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


