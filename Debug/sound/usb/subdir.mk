################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/usb/card.c \
../sound/usb/clock.c \
../sound/usb/endpoint.c \
../sound/usb/format.c \
../sound/usb/helper.c \
../sound/usb/midi.c \
../sound/usb/mixer.c \
../sound/usb/mixer_maps.c \
../sound/usb/mixer_quirks.c \
../sound/usb/pcm.c \
../sound/usb/proc.c \
../sound/usb/quirks.c \
../sound/usb/stream.c 

OBJS += \
./sound/usb/card.o \
./sound/usb/clock.o \
./sound/usb/endpoint.o \
./sound/usb/format.o \
./sound/usb/helper.o \
./sound/usb/midi.o \
./sound/usb/mixer.o \
./sound/usb/mixer_maps.o \
./sound/usb/mixer_quirks.o \
./sound/usb/pcm.o \
./sound/usb/proc.o \
./sound/usb/quirks.o \
./sound/usb/stream.o 

C_DEPS += \
./sound/usb/card.d \
./sound/usb/clock.d \
./sound/usb/endpoint.d \
./sound/usb/format.d \
./sound/usb/helper.d \
./sound/usb/midi.d \
./sound/usb/mixer.d \
./sound/usb/mixer_maps.d \
./sound/usb/mixer_quirks.d \
./sound/usb/pcm.d \
./sound/usb/proc.d \
./sound/usb/quirks.d \
./sound/usb/stream.d 


# Each subdirectory must supply rules for building sources it contributes
sound/usb/%.o: ../sound/usb/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


