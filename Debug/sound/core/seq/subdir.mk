################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/core/seq/seq.c \
../sound/core/seq/seq_clientmgr.c \
../sound/core/seq/seq_compat.c \
../sound/core/seq/seq_device.c \
../sound/core/seq/seq_dummy.c \
../sound/core/seq/seq_fifo.c \
../sound/core/seq/seq_info.c \
../sound/core/seq/seq_lock.c \
../sound/core/seq/seq_memory.c \
../sound/core/seq/seq_midi.c \
../sound/core/seq/seq_midi_emul.c \
../sound/core/seq/seq_midi_event.c \
../sound/core/seq/seq_ports.c \
../sound/core/seq/seq_prioq.c \
../sound/core/seq/seq_queue.c \
../sound/core/seq/seq_system.c \
../sound/core/seq/seq_timer.c \
../sound/core/seq/seq_virmidi.c 

OBJS += \
./sound/core/seq/seq.o \
./sound/core/seq/seq_clientmgr.o \
./sound/core/seq/seq_compat.o \
./sound/core/seq/seq_device.o \
./sound/core/seq/seq_dummy.o \
./sound/core/seq/seq_fifo.o \
./sound/core/seq/seq_info.o \
./sound/core/seq/seq_lock.o \
./sound/core/seq/seq_memory.o \
./sound/core/seq/seq_midi.o \
./sound/core/seq/seq_midi_emul.o \
./sound/core/seq/seq_midi_event.o \
./sound/core/seq/seq_ports.o \
./sound/core/seq/seq_prioq.o \
./sound/core/seq/seq_queue.o \
./sound/core/seq/seq_system.o \
./sound/core/seq/seq_timer.o \
./sound/core/seq/seq_virmidi.o 

C_DEPS += \
./sound/core/seq/seq.d \
./sound/core/seq/seq_clientmgr.d \
./sound/core/seq/seq_compat.d \
./sound/core/seq/seq_device.d \
./sound/core/seq/seq_dummy.d \
./sound/core/seq/seq_fifo.d \
./sound/core/seq/seq_info.d \
./sound/core/seq/seq_lock.d \
./sound/core/seq/seq_memory.d \
./sound/core/seq/seq_midi.d \
./sound/core/seq/seq_midi_emul.d \
./sound/core/seq/seq_midi_event.d \
./sound/core/seq/seq_ports.d \
./sound/core/seq/seq_prioq.d \
./sound/core/seq/seq_queue.d \
./sound/core/seq/seq_system.d \
./sound/core/seq/seq_timer.d \
./sound/core/seq/seq_virmidi.d 


# Each subdirectory must supply rules for building sources it contributes
sound/core/seq/%.o: ../sound/core/seq/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


