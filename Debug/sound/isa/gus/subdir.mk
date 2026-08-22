################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/isa/gus/gus_dma.c \
../sound/isa/gus/gus_dram.c \
../sound/isa/gus/gus_instr.c \
../sound/isa/gus/gus_io.c \
../sound/isa/gus/gus_irq.c \
../sound/isa/gus/gus_main.c \
../sound/isa/gus/gus_mem.c \
../sound/isa/gus/gus_mem_proc.c \
../sound/isa/gus/gus_mixer.c \
../sound/isa/gus/gus_pcm.c \
../sound/isa/gus/gus_reset.c \
../sound/isa/gus/gus_timer.c \
../sound/isa/gus/gus_uart.c \
../sound/isa/gus/gus_volume.c \
../sound/isa/gus/gusclassic.c \
../sound/isa/gus/gusextreme.c \
../sound/isa/gus/gusmax.c \
../sound/isa/gus/interwave-stb.c \
../sound/isa/gus/interwave.c 

OBJS += \
./sound/isa/gus/gus_dma.o \
./sound/isa/gus/gus_dram.o \
./sound/isa/gus/gus_instr.o \
./sound/isa/gus/gus_io.o \
./sound/isa/gus/gus_irq.o \
./sound/isa/gus/gus_main.o \
./sound/isa/gus/gus_mem.o \
./sound/isa/gus/gus_mem_proc.o \
./sound/isa/gus/gus_mixer.o \
./sound/isa/gus/gus_pcm.o \
./sound/isa/gus/gus_reset.o \
./sound/isa/gus/gus_timer.o \
./sound/isa/gus/gus_uart.o \
./sound/isa/gus/gus_volume.o \
./sound/isa/gus/gusclassic.o \
./sound/isa/gus/gusextreme.o \
./sound/isa/gus/gusmax.o \
./sound/isa/gus/interwave-stb.o \
./sound/isa/gus/interwave.o 

C_DEPS += \
./sound/isa/gus/gus_dma.d \
./sound/isa/gus/gus_dram.d \
./sound/isa/gus/gus_instr.d \
./sound/isa/gus/gus_io.d \
./sound/isa/gus/gus_irq.d \
./sound/isa/gus/gus_main.d \
./sound/isa/gus/gus_mem.d \
./sound/isa/gus/gus_mem_proc.d \
./sound/isa/gus/gus_mixer.d \
./sound/isa/gus/gus_pcm.d \
./sound/isa/gus/gus_reset.d \
./sound/isa/gus/gus_timer.d \
./sound/isa/gus/gus_uart.d \
./sound/isa/gus/gus_volume.d \
./sound/isa/gus/gusclassic.d \
./sound/isa/gus/gusextreme.d \
./sound/isa/gus/gusmax.d \
./sound/isa/gus/interwave-stb.d \
./sound/isa/gus/interwave.d 


# Each subdirectory must supply rules for building sources it contributes
sound/isa/gus/%.o: ../sound/isa/gus/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


