################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/sbus/char/bbc_envctrl.c \
../drivers/sbus/char/bbc_i2c.c \
../drivers/sbus/char/display7seg.c \
../drivers/sbus/char/envctrl.c \
../drivers/sbus/char/flash.c \
../drivers/sbus/char/jsflash.c \
../drivers/sbus/char/openprom.c \
../drivers/sbus/char/uctrl.c 

OBJS += \
./drivers/sbus/char/bbc_envctrl.o \
./drivers/sbus/char/bbc_i2c.o \
./drivers/sbus/char/display7seg.o \
./drivers/sbus/char/envctrl.o \
./drivers/sbus/char/flash.o \
./drivers/sbus/char/jsflash.o \
./drivers/sbus/char/openprom.o \
./drivers/sbus/char/uctrl.o 

C_DEPS += \
./drivers/sbus/char/bbc_envctrl.d \
./drivers/sbus/char/bbc_i2c.d \
./drivers/sbus/char/display7seg.d \
./drivers/sbus/char/envctrl.d \
./drivers/sbus/char/flash.d \
./drivers/sbus/char/jsflash.d \
./drivers/sbus/char/openprom.d \
./drivers/sbus/char/uctrl.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/sbus/char/%.o: ../drivers/sbus/char/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


