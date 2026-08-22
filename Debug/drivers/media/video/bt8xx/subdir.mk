################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/bt8xx/bttv-audio-hook.c \
../drivers/media/video/bt8xx/bttv-cards.c \
../drivers/media/video/bt8xx/bttv-driver.c \
../drivers/media/video/bt8xx/bttv-gpio.c \
../drivers/media/video/bt8xx/bttv-i2c.c \
../drivers/media/video/bt8xx/bttv-if.c \
../drivers/media/video/bt8xx/bttv-input.c \
../drivers/media/video/bt8xx/bttv-risc.c \
../drivers/media/video/bt8xx/bttv-vbi.c 

OBJS += \
./drivers/media/video/bt8xx/bttv-audio-hook.o \
./drivers/media/video/bt8xx/bttv-cards.o \
./drivers/media/video/bt8xx/bttv-driver.o \
./drivers/media/video/bt8xx/bttv-gpio.o \
./drivers/media/video/bt8xx/bttv-i2c.o \
./drivers/media/video/bt8xx/bttv-if.o \
./drivers/media/video/bt8xx/bttv-input.o \
./drivers/media/video/bt8xx/bttv-risc.o \
./drivers/media/video/bt8xx/bttv-vbi.o 

C_DEPS += \
./drivers/media/video/bt8xx/bttv-audio-hook.d \
./drivers/media/video/bt8xx/bttv-cards.d \
./drivers/media/video/bt8xx/bttv-driver.d \
./drivers/media/video/bt8xx/bttv-gpio.d \
./drivers/media/video/bt8xx/bttv-i2c.d \
./drivers/media/video/bt8xx/bttv-if.d \
./drivers/media/video/bt8xx/bttv-input.d \
./drivers/media/video/bt8xx/bttv-risc.d \
./drivers/media/video/bt8xx/bttv-vbi.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/bt8xx/%.o: ../drivers/media/video/bt8xx/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


