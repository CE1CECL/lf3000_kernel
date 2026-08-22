################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/soc/ep93xx/edb93xx.c \
../sound/soc/ep93xx/ep93xx-ac97.c \
../sound/soc/ep93xx/ep93xx-i2s.c \
../sound/soc/ep93xx/ep93xx-pcm.c \
../sound/soc/ep93xx/simone.c \
../sound/soc/ep93xx/snappercl15.c 

OBJS += \
./sound/soc/ep93xx/edb93xx.o \
./sound/soc/ep93xx/ep93xx-ac97.o \
./sound/soc/ep93xx/ep93xx-i2s.o \
./sound/soc/ep93xx/ep93xx-pcm.o \
./sound/soc/ep93xx/simone.o \
./sound/soc/ep93xx/snappercl15.o 

C_DEPS += \
./sound/soc/ep93xx/edb93xx.d \
./sound/soc/ep93xx/ep93xx-ac97.d \
./sound/soc/ep93xx/ep93xx-i2s.d \
./sound/soc/ep93xx/ep93xx-pcm.d \
./sound/soc/ep93xx/simone.d \
./sound/soc/ep93xx/snappercl15.d 


# Each subdirectory must supply rules for building sources it contributes
sound/soc/ep93xx/%.o: ../sound/soc/ep93xx/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


