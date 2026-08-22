################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/input/built-in.o \
../drivers/input/evdev.o \
../drivers/input/ff-core.o \
../drivers/input/input-compat.o \
../drivers/input/input-core.o \
../drivers/input/input-mt.o \
../drivers/input/input-polldev.o \
../drivers/input/input.o 

C_SRCS += \
../drivers/input/apm-power.c \
../drivers/input/evbug.c \
../drivers/input/evdev.c \
../drivers/input/ff-core.c \
../drivers/input/ff-memless.c \
../drivers/input/input-compat.c \
../drivers/input/input-mt.c \
../drivers/input/input-polldev.c \
../drivers/input/input.c \
../drivers/input/joydev.c \
../drivers/input/keyreset.c \
../drivers/input/mousedev.c \
../drivers/input/of_keymap.c \
../drivers/input/sparse-keymap.c 

OBJS += \
./drivers/input/apm-power.o \
./drivers/input/evbug.o \
./drivers/input/evdev.o \
./drivers/input/ff-core.o \
./drivers/input/ff-memless.o \
./drivers/input/input-compat.o \
./drivers/input/input-mt.o \
./drivers/input/input-polldev.o \
./drivers/input/input.o \
./drivers/input/joydev.o \
./drivers/input/keyreset.o \
./drivers/input/mousedev.o \
./drivers/input/of_keymap.o \
./drivers/input/sparse-keymap.o 

C_DEPS += \
./drivers/input/apm-power.d \
./drivers/input/evbug.d \
./drivers/input/evdev.d \
./drivers/input/ff-core.d \
./drivers/input/ff-memless.d \
./drivers/input/input-compat.d \
./drivers/input/input-mt.d \
./drivers/input/input-polldev.d \
./drivers/input/input.d \
./drivers/input/joydev.d \
./drivers/input/keyreset.d \
./drivers/input/mousedev.d \
./drivers/input/of_keymap.d \
./drivers/input/sparse-keymap.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/input/%.o: ../drivers/input/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


