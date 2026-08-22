################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/core/compress_offload.c \
../sound/core/control.c \
../sound/core/control_compat.c \
../sound/core/ctljack.c \
../sound/core/device.c \
../sound/core/hrtimer.c \
../sound/core/hwdep.c \
../sound/core/hwdep_compat.c \
../sound/core/info.c \
../sound/core/info_oss.c \
../sound/core/init.c \
../sound/core/isadma.c \
../sound/core/jack.c \
../sound/core/memalloc.c \
../sound/core/memory.c \
../sound/core/misc.c \
../sound/core/pcm.c \
../sound/core/pcm_compat.c \
../sound/core/pcm_lib.c \
../sound/core/pcm_memory.c \
../sound/core/pcm_misc.c \
../sound/core/pcm_native.c \
../sound/core/pcm_timer.c \
../sound/core/rawmidi.c \
../sound/core/rawmidi_compat.c \
../sound/core/rtctimer.c \
../sound/core/sgbuf.c \
../sound/core/sound.c \
../sound/core/sound_oss.c \
../sound/core/timer.c \
../sound/core/timer_compat.c \
../sound/core/vmaster.c 

OBJS += \
./sound/core/compress_offload.o \
./sound/core/control.o \
./sound/core/control_compat.o \
./sound/core/ctljack.o \
./sound/core/device.o \
./sound/core/hrtimer.o \
./sound/core/hwdep.o \
./sound/core/hwdep_compat.o \
./sound/core/info.o \
./sound/core/info_oss.o \
./sound/core/init.o \
./sound/core/isadma.o \
./sound/core/jack.o \
./sound/core/memalloc.o \
./sound/core/memory.o \
./sound/core/misc.o \
./sound/core/pcm.o \
./sound/core/pcm_compat.o \
./sound/core/pcm_lib.o \
./sound/core/pcm_memory.o \
./sound/core/pcm_misc.o \
./sound/core/pcm_native.o \
./sound/core/pcm_timer.o \
./sound/core/rawmidi.o \
./sound/core/rawmidi_compat.o \
./sound/core/rtctimer.o \
./sound/core/sgbuf.o \
./sound/core/sound.o \
./sound/core/sound_oss.o \
./sound/core/timer.o \
./sound/core/timer_compat.o \
./sound/core/vmaster.o 

C_DEPS += \
./sound/core/compress_offload.d \
./sound/core/control.d \
./sound/core/control_compat.d \
./sound/core/ctljack.d \
./sound/core/device.d \
./sound/core/hrtimer.d \
./sound/core/hwdep.d \
./sound/core/hwdep_compat.d \
./sound/core/info.d \
./sound/core/info_oss.d \
./sound/core/init.d \
./sound/core/isadma.d \
./sound/core/jack.d \
./sound/core/memalloc.d \
./sound/core/memory.d \
./sound/core/misc.d \
./sound/core/pcm.d \
./sound/core/pcm_compat.d \
./sound/core/pcm_lib.d \
./sound/core/pcm_memory.d \
./sound/core/pcm_misc.d \
./sound/core/pcm_native.d \
./sound/core/pcm_timer.d \
./sound/core/rawmidi.d \
./sound/core/rawmidi_compat.d \
./sound/core/rtctimer.d \
./sound/core/sgbuf.d \
./sound/core/sound.d \
./sound/core/sound_oss.d \
./sound/core/timer.d \
./sound/core/timer_compat.d \
./sound/core/vmaster.d 


# Each subdirectory must supply rules for building sources it contributes
sound/core/%.o: ../sound/core/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


