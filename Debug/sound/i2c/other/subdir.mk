################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/i2c/other/ak4113.c \
../sound/i2c/other/ak4114.c \
../sound/i2c/other/ak4117.c \
../sound/i2c/other/ak4xxx-adda.c \
../sound/i2c/other/pt2258.c \
../sound/i2c/other/tea575x-tuner.c 

OBJS += \
./sound/i2c/other/ak4113.o \
./sound/i2c/other/ak4114.o \
./sound/i2c/other/ak4117.o \
./sound/i2c/other/ak4xxx-adda.o \
./sound/i2c/other/pt2258.o \
./sound/i2c/other/tea575x-tuner.o 

C_DEPS += \
./sound/i2c/other/ak4113.d \
./sound/i2c/other/ak4114.d \
./sound/i2c/other/ak4117.d \
./sound/i2c/other/ak4xxx-adda.d \
./sound/i2c/other/pt2258.d \
./sound/i2c/other/tea575x-tuner.d 


# Each subdirectory must supply rules for building sources it contributes
sound/i2c/other/%.o: ../sound/i2c/other/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


