################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/oss/ad1848.c \
../sound/oss/aedsp16.c \
../sound/oss/audio.c \
../sound/oss/bin2hex.c \
../sound/oss/dev_table.c \
../sound/oss/dmabuf.c \
../sound/oss/hex2hex.c \
../sound/oss/kahlua.c \
../sound/oss/midi_synth.c \
../sound/oss/midibuf.c \
../sound/oss/mpu401.c \
../sound/oss/msnd.c \
../sound/oss/msnd_classic.c \
../sound/oss/msnd_pinnacle.c \
../sound/oss/opl3.c \
../sound/oss/pas2_card.c \
../sound/oss/pas2_midi.c \
../sound/oss/pas2_mixer.c \
../sound/oss/pas2_pcm.c \
../sound/oss/pss.c \
../sound/oss/sb_audio.c \
../sound/oss/sb_card.c \
../sound/oss/sb_common.c \
../sound/oss/sb_ess.c \
../sound/oss/sb_midi.c \
../sound/oss/sb_mixer.c \
../sound/oss/sequencer.c \
../sound/oss/sound_timer.c \
../sound/oss/soundcard.c \
../sound/oss/swarm_cs4297a.c \
../sound/oss/sys_timer.c \
../sound/oss/trix.c \
../sound/oss/uart401.c \
../sound/oss/uart6850.c \
../sound/oss/v_midi.c \
../sound/oss/vidc.c \
../sound/oss/vwsnd.c \
../sound/oss/waveartist.c 

S_UPPER_SRCS += \
../sound/oss/vidc_fill.S 

OBJS += \
./sound/oss/ad1848.o \
./sound/oss/aedsp16.o \
./sound/oss/audio.o \
./sound/oss/bin2hex.o \
./sound/oss/dev_table.o \
./sound/oss/dmabuf.o \
./sound/oss/hex2hex.o \
./sound/oss/kahlua.o \
./sound/oss/midi_synth.o \
./sound/oss/midibuf.o \
./sound/oss/mpu401.o \
./sound/oss/msnd.o \
./sound/oss/msnd_classic.o \
./sound/oss/msnd_pinnacle.o \
./sound/oss/opl3.o \
./sound/oss/pas2_card.o \
./sound/oss/pas2_midi.o \
./sound/oss/pas2_mixer.o \
./sound/oss/pas2_pcm.o \
./sound/oss/pss.o \
./sound/oss/sb_audio.o \
./sound/oss/sb_card.o \
./sound/oss/sb_common.o \
./sound/oss/sb_ess.o \
./sound/oss/sb_midi.o \
./sound/oss/sb_mixer.o \
./sound/oss/sequencer.o \
./sound/oss/sound_timer.o \
./sound/oss/soundcard.o \
./sound/oss/swarm_cs4297a.o \
./sound/oss/sys_timer.o \
./sound/oss/trix.o \
./sound/oss/uart401.o \
./sound/oss/uart6850.o \
./sound/oss/v_midi.o \
./sound/oss/vidc.o \
./sound/oss/vidc_fill.o \
./sound/oss/vwsnd.o \
./sound/oss/waveartist.o 

C_DEPS += \
./sound/oss/ad1848.d \
./sound/oss/aedsp16.d \
./sound/oss/audio.d \
./sound/oss/bin2hex.d \
./sound/oss/dev_table.d \
./sound/oss/dmabuf.d \
./sound/oss/hex2hex.d \
./sound/oss/kahlua.d \
./sound/oss/midi_synth.d \
./sound/oss/midibuf.d \
./sound/oss/mpu401.d \
./sound/oss/msnd.d \
./sound/oss/msnd_classic.d \
./sound/oss/msnd_pinnacle.d \
./sound/oss/opl3.d \
./sound/oss/pas2_card.d \
./sound/oss/pas2_midi.d \
./sound/oss/pas2_mixer.d \
./sound/oss/pas2_pcm.d \
./sound/oss/pss.d \
./sound/oss/sb_audio.d \
./sound/oss/sb_card.d \
./sound/oss/sb_common.d \
./sound/oss/sb_ess.d \
./sound/oss/sb_midi.d \
./sound/oss/sb_mixer.d \
./sound/oss/sequencer.d \
./sound/oss/sound_timer.d \
./sound/oss/soundcard.d \
./sound/oss/swarm_cs4297a.d \
./sound/oss/sys_timer.d \
./sound/oss/trix.d \
./sound/oss/uart401.d \
./sound/oss/uart6850.d \
./sound/oss/v_midi.d \
./sound/oss/vidc.d \
./sound/oss/vwsnd.d \
./sound/oss/waveartist.d 

S_UPPER_DEPS += \
./sound/oss/vidc_fill.d 


# Each subdirectory must supply rules for building sources it contributes
sound/oss/%.o: ../sound/oss/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

sound/oss/%.o: ../sound/oss/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC Assembler'
	arm-elf-gcc -x assembler-with-cpp -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


