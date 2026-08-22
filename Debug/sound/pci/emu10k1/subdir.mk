################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/pci/emu10k1/emu10k1.c \
../sound/pci/emu10k1/emu10k1_callback.c \
../sound/pci/emu10k1/emu10k1_main.c \
../sound/pci/emu10k1/emu10k1_patch.c \
../sound/pci/emu10k1/emu10k1_synth.c \
../sound/pci/emu10k1/emu10k1x.c \
../sound/pci/emu10k1/emufx.c \
../sound/pci/emu10k1/emumixer.c \
../sound/pci/emu10k1/emumpu401.c \
../sound/pci/emu10k1/emupcm.c \
../sound/pci/emu10k1/emuproc.c \
../sound/pci/emu10k1/io.c \
../sound/pci/emu10k1/irq.c \
../sound/pci/emu10k1/memory.c \
../sound/pci/emu10k1/p16v.c \
../sound/pci/emu10k1/timer.c \
../sound/pci/emu10k1/voice.c 

OBJS += \
./sound/pci/emu10k1/emu10k1.o \
./sound/pci/emu10k1/emu10k1_callback.o \
./sound/pci/emu10k1/emu10k1_main.o \
./sound/pci/emu10k1/emu10k1_patch.o \
./sound/pci/emu10k1/emu10k1_synth.o \
./sound/pci/emu10k1/emu10k1x.o \
./sound/pci/emu10k1/emufx.o \
./sound/pci/emu10k1/emumixer.o \
./sound/pci/emu10k1/emumpu401.o \
./sound/pci/emu10k1/emupcm.o \
./sound/pci/emu10k1/emuproc.o \
./sound/pci/emu10k1/io.o \
./sound/pci/emu10k1/irq.o \
./sound/pci/emu10k1/memory.o \
./sound/pci/emu10k1/p16v.o \
./sound/pci/emu10k1/timer.o \
./sound/pci/emu10k1/voice.o 

C_DEPS += \
./sound/pci/emu10k1/emu10k1.d \
./sound/pci/emu10k1/emu10k1_callback.d \
./sound/pci/emu10k1/emu10k1_main.d \
./sound/pci/emu10k1/emu10k1_patch.d \
./sound/pci/emu10k1/emu10k1_synth.d \
./sound/pci/emu10k1/emu10k1x.d \
./sound/pci/emu10k1/emufx.d \
./sound/pci/emu10k1/emumixer.d \
./sound/pci/emu10k1/emumpu401.d \
./sound/pci/emu10k1/emupcm.d \
./sound/pci/emu10k1/emuproc.d \
./sound/pci/emu10k1/io.d \
./sound/pci/emu10k1/irq.d \
./sound/pci/emu10k1/memory.d \
./sound/pci/emu10k1/p16v.d \
./sound/pci/emu10k1/timer.d \
./sound/pci/emu10k1/voice.d 


# Each subdirectory must supply rules for building sources it contributes
sound/pci/emu10k1/%.o: ../sound/pci/emu10k1/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


