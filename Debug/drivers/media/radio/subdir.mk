################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/radio/dsbr100.c \
../drivers/media/radio/radio-aimslab.c \
../drivers/media/radio/radio-aztech.c \
../drivers/media/radio/radio-cadet.c \
../drivers/media/radio/radio-gemtek.c \
../drivers/media/radio/radio-isa.c \
../drivers/media/radio/radio-keene.c \
../drivers/media/radio/radio-maxiradio.c \
../drivers/media/radio/radio-miropcm20.c \
../drivers/media/radio/radio-mr800.c \
../drivers/media/radio/radio-rtrack2.c \
../drivers/media/radio/radio-sf16fmi.c \
../drivers/media/radio/radio-sf16fmr2.c \
../drivers/media/radio/radio-si4713.c \
../drivers/media/radio/radio-tea5764.c \
../drivers/media/radio/radio-terratec.c \
../drivers/media/radio/radio-timb.c \
../drivers/media/radio/radio-trust.c \
../drivers/media/radio/radio-typhoon.c \
../drivers/media/radio/radio-wl1273.c \
../drivers/media/radio/radio-zoltrix.c \
../drivers/media/radio/saa7706h.c \
../drivers/media/radio/si4713-i2c.c \
../drivers/media/radio/tef6862.c 

OBJS += \
./drivers/media/radio/dsbr100.o \
./drivers/media/radio/radio-aimslab.o \
./drivers/media/radio/radio-aztech.o \
./drivers/media/radio/radio-cadet.o \
./drivers/media/radio/radio-gemtek.o \
./drivers/media/radio/radio-isa.o \
./drivers/media/radio/radio-keene.o \
./drivers/media/radio/radio-maxiradio.o \
./drivers/media/radio/radio-miropcm20.o \
./drivers/media/radio/radio-mr800.o \
./drivers/media/radio/radio-rtrack2.o \
./drivers/media/radio/radio-sf16fmi.o \
./drivers/media/radio/radio-sf16fmr2.o \
./drivers/media/radio/radio-si4713.o \
./drivers/media/radio/radio-tea5764.o \
./drivers/media/radio/radio-terratec.o \
./drivers/media/radio/radio-timb.o \
./drivers/media/radio/radio-trust.o \
./drivers/media/radio/radio-typhoon.o \
./drivers/media/radio/radio-wl1273.o \
./drivers/media/radio/radio-zoltrix.o \
./drivers/media/radio/saa7706h.o \
./drivers/media/radio/si4713-i2c.o \
./drivers/media/radio/tef6862.o 

C_DEPS += \
./drivers/media/radio/dsbr100.d \
./drivers/media/radio/radio-aimslab.d \
./drivers/media/radio/radio-aztech.d \
./drivers/media/radio/radio-cadet.d \
./drivers/media/radio/radio-gemtek.d \
./drivers/media/radio/radio-isa.d \
./drivers/media/radio/radio-keene.d \
./drivers/media/radio/radio-maxiradio.d \
./drivers/media/radio/radio-miropcm20.d \
./drivers/media/radio/radio-mr800.d \
./drivers/media/radio/radio-rtrack2.d \
./drivers/media/radio/radio-sf16fmi.d \
./drivers/media/radio/radio-sf16fmr2.d \
./drivers/media/radio/radio-si4713.d \
./drivers/media/radio/radio-tea5764.d \
./drivers/media/radio/radio-terratec.d \
./drivers/media/radio/radio-timb.d \
./drivers/media/radio/radio-trust.d \
./drivers/media/radio/radio-typhoon.d \
./drivers/media/radio/radio-wl1273.d \
./drivers/media/radio/radio-zoltrix.d \
./drivers/media/radio/saa7706h.d \
./drivers/media/radio/si4713-i2c.d \
./drivers/media/radio/tef6862.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/radio/%.o: ../drivers/media/radio/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


