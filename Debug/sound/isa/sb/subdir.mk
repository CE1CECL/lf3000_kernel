################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/isa/sb/emu8000.c \
../sound/isa/sb/emu8000_callback.c \
../sound/isa/sb/emu8000_patch.c \
../sound/isa/sb/emu8000_pcm.c \
../sound/isa/sb/emu8000_synth.c \
../sound/isa/sb/jazz16.c \
../sound/isa/sb/sb16.c \
../sound/isa/sb/sb16_csp.c \
../sound/isa/sb/sb16_main.c \
../sound/isa/sb/sb8.c \
../sound/isa/sb/sb8_main.c \
../sound/isa/sb/sb8_midi.c \
../sound/isa/sb/sb_common.c \
../sound/isa/sb/sb_mixer.c \
../sound/isa/sb/sbawe.c 

OBJS += \
./sound/isa/sb/emu8000.o \
./sound/isa/sb/emu8000_callback.o \
./sound/isa/sb/emu8000_patch.o \
./sound/isa/sb/emu8000_pcm.o \
./sound/isa/sb/emu8000_synth.o \
./sound/isa/sb/jazz16.o \
./sound/isa/sb/sb16.o \
./sound/isa/sb/sb16_csp.o \
./sound/isa/sb/sb16_main.o \
./sound/isa/sb/sb8.o \
./sound/isa/sb/sb8_main.o \
./sound/isa/sb/sb8_midi.o \
./sound/isa/sb/sb_common.o \
./sound/isa/sb/sb_mixer.o \
./sound/isa/sb/sbawe.o 

C_DEPS += \
./sound/isa/sb/emu8000.d \
./sound/isa/sb/emu8000_callback.d \
./sound/isa/sb/emu8000_patch.d \
./sound/isa/sb/emu8000_pcm.d \
./sound/isa/sb/emu8000_synth.d \
./sound/isa/sb/jazz16.d \
./sound/isa/sb/sb16.d \
./sound/isa/sb/sb16_csp.d \
./sound/isa/sb/sb16_main.d \
./sound/isa/sb/sb8.d \
./sound/isa/sb/sb8_main.d \
./sound/isa/sb/sb8_midi.d \
./sound/isa/sb/sb_common.d \
./sound/isa/sb/sb_mixer.d \
./sound/isa/sb/sbawe.d 


# Each subdirectory must supply rules for building sources it contributes
sound/isa/sb/%.o: ../sound/isa/sb/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


