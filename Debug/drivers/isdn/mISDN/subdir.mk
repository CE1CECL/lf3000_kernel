################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/isdn/mISDN/clock.c \
../drivers/isdn/mISDN/core.c \
../drivers/isdn/mISDN/dsp_audio.c \
../drivers/isdn/mISDN/dsp_blowfish.c \
../drivers/isdn/mISDN/dsp_cmx.c \
../drivers/isdn/mISDN/dsp_core.c \
../drivers/isdn/mISDN/dsp_dtmf.c \
../drivers/isdn/mISDN/dsp_hwec.c \
../drivers/isdn/mISDN/dsp_pipeline.c \
../drivers/isdn/mISDN/dsp_tones.c \
../drivers/isdn/mISDN/fsm.c \
../drivers/isdn/mISDN/hwchannel.c \
../drivers/isdn/mISDN/l1oip_codec.c \
../drivers/isdn/mISDN/l1oip_core.c \
../drivers/isdn/mISDN/layer1.c \
../drivers/isdn/mISDN/layer2.c \
../drivers/isdn/mISDN/socket.c \
../drivers/isdn/mISDN/stack.c \
../drivers/isdn/mISDN/tei.c \
../drivers/isdn/mISDN/timerdev.c 

OBJS += \
./drivers/isdn/mISDN/clock.o \
./drivers/isdn/mISDN/core.o \
./drivers/isdn/mISDN/dsp_audio.o \
./drivers/isdn/mISDN/dsp_blowfish.o \
./drivers/isdn/mISDN/dsp_cmx.o \
./drivers/isdn/mISDN/dsp_core.o \
./drivers/isdn/mISDN/dsp_dtmf.o \
./drivers/isdn/mISDN/dsp_hwec.o \
./drivers/isdn/mISDN/dsp_pipeline.o \
./drivers/isdn/mISDN/dsp_tones.o \
./drivers/isdn/mISDN/fsm.o \
./drivers/isdn/mISDN/hwchannel.o \
./drivers/isdn/mISDN/l1oip_codec.o \
./drivers/isdn/mISDN/l1oip_core.o \
./drivers/isdn/mISDN/layer1.o \
./drivers/isdn/mISDN/layer2.o \
./drivers/isdn/mISDN/socket.o \
./drivers/isdn/mISDN/stack.o \
./drivers/isdn/mISDN/tei.o \
./drivers/isdn/mISDN/timerdev.o 

C_DEPS += \
./drivers/isdn/mISDN/clock.d \
./drivers/isdn/mISDN/core.d \
./drivers/isdn/mISDN/dsp_audio.d \
./drivers/isdn/mISDN/dsp_blowfish.d \
./drivers/isdn/mISDN/dsp_cmx.d \
./drivers/isdn/mISDN/dsp_core.d \
./drivers/isdn/mISDN/dsp_dtmf.d \
./drivers/isdn/mISDN/dsp_hwec.d \
./drivers/isdn/mISDN/dsp_pipeline.d \
./drivers/isdn/mISDN/dsp_tones.d \
./drivers/isdn/mISDN/fsm.d \
./drivers/isdn/mISDN/hwchannel.d \
./drivers/isdn/mISDN/l1oip_codec.d \
./drivers/isdn/mISDN/l1oip_core.d \
./drivers/isdn/mISDN/layer1.d \
./drivers/isdn/mISDN/layer2.d \
./drivers/isdn/mISDN/socket.d \
./drivers/isdn/mISDN/stack.d \
./drivers/isdn/mISDN/tei.d \
./drivers/isdn/mISDN/timerdev.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/isdn/mISDN/%.o: ../drivers/isdn/mISDN/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


