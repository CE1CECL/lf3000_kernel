################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/input/joystick/iforce/iforce-ff.c \
../drivers/input/joystick/iforce/iforce-main.c \
../drivers/input/joystick/iforce/iforce-packets.c \
../drivers/input/joystick/iforce/iforce-serio.c \
../drivers/input/joystick/iforce/iforce-usb.c 

OBJS += \
./drivers/input/joystick/iforce/iforce-ff.o \
./drivers/input/joystick/iforce/iforce-main.o \
./drivers/input/joystick/iforce/iforce-packets.o \
./drivers/input/joystick/iforce/iforce-serio.o \
./drivers/input/joystick/iforce/iforce-usb.o 

C_DEPS += \
./drivers/input/joystick/iforce/iforce-ff.d \
./drivers/input/joystick/iforce/iforce-main.d \
./drivers/input/joystick/iforce/iforce-packets.d \
./drivers/input/joystick/iforce/iforce-serio.d \
./drivers/input/joystick/iforce/iforce-usb.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/input/joystick/iforce/%.o: ../drivers/input/joystick/iforce/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


