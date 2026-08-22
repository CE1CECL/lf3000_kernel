################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/isa/msnd/msnd.c \
../sound/isa/msnd/msnd_classic.c \
../sound/isa/msnd/msnd_midi.c \
../sound/isa/msnd/msnd_pinnacle.c \
../sound/isa/msnd/msnd_pinnacle_mixer.c 

OBJS += \
./sound/isa/msnd/msnd.o \
./sound/isa/msnd/msnd_classic.o \
./sound/isa/msnd/msnd_midi.o \
./sound/isa/msnd/msnd_pinnacle.o \
./sound/isa/msnd/msnd_pinnacle_mixer.o 

C_DEPS += \
./sound/isa/msnd/msnd.d \
./sound/isa/msnd/msnd_classic.d \
./sound/isa/msnd/msnd_midi.d \
./sound/isa/msnd/msnd_pinnacle.d \
./sound/isa/msnd/msnd_pinnacle_mixer.d 


# Each subdirectory must supply rules for building sources it contributes
sound/isa/msnd/%.o: ../sound/isa/msnd/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


