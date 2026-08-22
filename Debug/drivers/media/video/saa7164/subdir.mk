################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/saa7164/saa7164-api.c \
../drivers/media/video/saa7164/saa7164-buffer.c \
../drivers/media/video/saa7164/saa7164-bus.c \
../drivers/media/video/saa7164/saa7164-cards.c \
../drivers/media/video/saa7164/saa7164-cmd.c \
../drivers/media/video/saa7164/saa7164-core.c \
../drivers/media/video/saa7164/saa7164-dvb.c \
../drivers/media/video/saa7164/saa7164-encoder.c \
../drivers/media/video/saa7164/saa7164-fw.c \
../drivers/media/video/saa7164/saa7164-i2c.c \
../drivers/media/video/saa7164/saa7164-vbi.c 

OBJS += \
./drivers/media/video/saa7164/saa7164-api.o \
./drivers/media/video/saa7164/saa7164-buffer.o \
./drivers/media/video/saa7164/saa7164-bus.o \
./drivers/media/video/saa7164/saa7164-cards.o \
./drivers/media/video/saa7164/saa7164-cmd.o \
./drivers/media/video/saa7164/saa7164-core.o \
./drivers/media/video/saa7164/saa7164-dvb.o \
./drivers/media/video/saa7164/saa7164-encoder.o \
./drivers/media/video/saa7164/saa7164-fw.o \
./drivers/media/video/saa7164/saa7164-i2c.o \
./drivers/media/video/saa7164/saa7164-vbi.o 

C_DEPS += \
./drivers/media/video/saa7164/saa7164-api.d \
./drivers/media/video/saa7164/saa7164-buffer.d \
./drivers/media/video/saa7164/saa7164-bus.d \
./drivers/media/video/saa7164/saa7164-cards.d \
./drivers/media/video/saa7164/saa7164-cmd.d \
./drivers/media/video/saa7164/saa7164-core.d \
./drivers/media/video/saa7164/saa7164-dvb.d \
./drivers/media/video/saa7164/saa7164-encoder.d \
./drivers/media/video/saa7164/saa7164-fw.d \
./drivers/media/video/saa7164/saa7164-i2c.d \
./drivers/media/video/saa7164/saa7164-vbi.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/saa7164/%.o: ../drivers/media/video/saa7164/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


