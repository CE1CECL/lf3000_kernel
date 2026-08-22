################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/drivers/aloop.c \
../sound/drivers/dummy.c \
../sound/drivers/ml403-ac97cr.c \
../sound/drivers/mtpav.c \
../sound/drivers/mts64.c \
../sound/drivers/pcm-indirect2.c \
../sound/drivers/portman2x4.c \
../sound/drivers/serial-u16550.c \
../sound/drivers/virmidi.c 

OBJS += \
./sound/drivers/aloop.o \
./sound/drivers/dummy.o \
./sound/drivers/ml403-ac97cr.o \
./sound/drivers/mtpav.o \
./sound/drivers/mts64.o \
./sound/drivers/pcm-indirect2.o \
./sound/drivers/portman2x4.o \
./sound/drivers/serial-u16550.o \
./sound/drivers/virmidi.o 

C_DEPS += \
./sound/drivers/aloop.d \
./sound/drivers/dummy.d \
./sound/drivers/ml403-ac97cr.d \
./sound/drivers/mtpav.d \
./sound/drivers/mts64.d \
./sound/drivers/pcm-indirect2.d \
./sound/drivers/portman2x4.d \
./sound/drivers/serial-u16550.d \
./sound/drivers/virmidi.d 


# Each subdirectory must supply rules for building sources it contributes
sound/drivers/%.o: ../sound/drivers/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


