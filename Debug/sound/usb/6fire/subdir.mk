################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/usb/6fire/chip.c \
../sound/usb/6fire/comm.c \
../sound/usb/6fire/control.c \
../sound/usb/6fire/firmware.c \
../sound/usb/6fire/midi.c \
../sound/usb/6fire/pcm.c 

OBJS += \
./sound/usb/6fire/chip.o \
./sound/usb/6fire/comm.o \
./sound/usb/6fire/control.o \
./sound/usb/6fire/firmware.o \
./sound/usb/6fire/midi.o \
./sound/usb/6fire/pcm.o 

C_DEPS += \
./sound/usb/6fire/chip.d \
./sound/usb/6fire/comm.d \
./sound/usb/6fire/control.d \
./sound/usb/6fire/firmware.d \
./sound/usb/6fire/midi.d \
./sound/usb/6fire/pcm.d 


# Each subdirectory must supply rules for building sources it contributes
sound/usb/6fire/%.o: ../sound/usb/6fire/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


