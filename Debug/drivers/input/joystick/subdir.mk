################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/input/joystick/a3d.c \
../drivers/input/joystick/adi.c \
../drivers/input/joystick/amijoy.c \
../drivers/input/joystick/analog.c \
../drivers/input/joystick/as5011.c \
../drivers/input/joystick/cobra.c \
../drivers/input/joystick/db9.c \
../drivers/input/joystick/gamecon.c \
../drivers/input/joystick/gf2k.c \
../drivers/input/joystick/grip.c \
../drivers/input/joystick/grip_mp.c \
../drivers/input/joystick/guillemot.c \
../drivers/input/joystick/interact.c \
../drivers/input/joystick/joydump.c \
../drivers/input/joystick/magellan.c \
../drivers/input/joystick/maplecontrol.c \
../drivers/input/joystick/sidewinder.c \
../drivers/input/joystick/spaceball.c \
../drivers/input/joystick/spaceorb.c \
../drivers/input/joystick/stinger.c \
../drivers/input/joystick/tmdc.c \
../drivers/input/joystick/turbografx.c \
../drivers/input/joystick/twidjoy.c \
../drivers/input/joystick/walkera0701.c \
../drivers/input/joystick/warrior.c \
../drivers/input/joystick/xpad.c \
../drivers/input/joystick/zhenhua.c 

OBJS += \
./drivers/input/joystick/a3d.o \
./drivers/input/joystick/adi.o \
./drivers/input/joystick/amijoy.o \
./drivers/input/joystick/analog.o \
./drivers/input/joystick/as5011.o \
./drivers/input/joystick/cobra.o \
./drivers/input/joystick/db9.o \
./drivers/input/joystick/gamecon.o \
./drivers/input/joystick/gf2k.o \
./drivers/input/joystick/grip.o \
./drivers/input/joystick/grip_mp.o \
./drivers/input/joystick/guillemot.o \
./drivers/input/joystick/interact.o \
./drivers/input/joystick/joydump.o \
./drivers/input/joystick/magellan.o \
./drivers/input/joystick/maplecontrol.o \
./drivers/input/joystick/sidewinder.o \
./drivers/input/joystick/spaceball.o \
./drivers/input/joystick/spaceorb.o \
./drivers/input/joystick/stinger.o \
./drivers/input/joystick/tmdc.o \
./drivers/input/joystick/turbografx.o \
./drivers/input/joystick/twidjoy.o \
./drivers/input/joystick/walkera0701.o \
./drivers/input/joystick/warrior.o \
./drivers/input/joystick/xpad.o \
./drivers/input/joystick/zhenhua.o 

C_DEPS += \
./drivers/input/joystick/a3d.d \
./drivers/input/joystick/adi.d \
./drivers/input/joystick/amijoy.d \
./drivers/input/joystick/analog.d \
./drivers/input/joystick/as5011.d \
./drivers/input/joystick/cobra.d \
./drivers/input/joystick/db9.d \
./drivers/input/joystick/gamecon.d \
./drivers/input/joystick/gf2k.d \
./drivers/input/joystick/grip.d \
./drivers/input/joystick/grip_mp.d \
./drivers/input/joystick/guillemot.d \
./drivers/input/joystick/interact.d \
./drivers/input/joystick/joydump.d \
./drivers/input/joystick/magellan.d \
./drivers/input/joystick/maplecontrol.d \
./drivers/input/joystick/sidewinder.d \
./drivers/input/joystick/spaceball.d \
./drivers/input/joystick/spaceorb.d \
./drivers/input/joystick/stinger.d \
./drivers/input/joystick/tmdc.d \
./drivers/input/joystick/turbografx.d \
./drivers/input/joystick/twidjoy.d \
./drivers/input/joystick/walkera0701.d \
./drivers/input/joystick/warrior.d \
./drivers/input/joystick/xpad.d \
./drivers/input/joystick/zhenhua.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/input/joystick/%.o: ../drivers/input/joystick/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


