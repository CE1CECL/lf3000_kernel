################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/dvb/ngene/ngene-cards.c \
../drivers/media/dvb/ngene/ngene-core.c \
../drivers/media/dvb/ngene/ngene-dvb.c \
../drivers/media/dvb/ngene/ngene-i2c.c 

OBJS += \
./drivers/media/dvb/ngene/ngene-cards.o \
./drivers/media/dvb/ngene/ngene-core.o \
./drivers/media/dvb/ngene/ngene-dvb.o \
./drivers/media/dvb/ngene/ngene-i2c.o 

C_DEPS += \
./drivers/media/dvb/ngene/ngene-cards.d \
./drivers/media/dvb/ngene/ngene-core.d \
./drivers/media/dvb/ngene/ngene-dvb.d \
./drivers/media/dvb/ngene/ngene-i2c.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/dvb/ngene/%.o: ../drivers/media/dvb/ngene/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


