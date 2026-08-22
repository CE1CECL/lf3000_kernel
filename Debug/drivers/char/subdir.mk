################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/char/built-in.o \
../drivers/char/mem.o \
../drivers/char/misc.o \
../drivers/char/random.o 

C_SRCS += \
../drivers/char/apm-emulation.c \
../drivers/char/applicom.c \
../drivers/char/bfin-otp.c \
../drivers/char/bsr.c \
../drivers/char/dcc_tty.c \
../drivers/char/ds1302.c \
../drivers/char/ds1620.c \
../drivers/char/dsp56k.c \
../drivers/char/dtlk.c \
../drivers/char/efirtc.c \
../drivers/char/generic_nvram.c \
../drivers/char/genrtc.c \
../drivers/char/hangcheck-timer.c \
../drivers/char/hpet.c \
../drivers/char/i8k.c \
../drivers/char/lp.c \
../drivers/char/mbcs.c \
../drivers/char/mem.c \
../drivers/char/misc.c \
../drivers/char/mmtimer.c \
../drivers/char/msm_smd_pkt.c \
../drivers/char/mspec.c \
../drivers/char/nsc_gpio.c \
../drivers/char/nvram.c \
../drivers/char/nwbutton.c \
../drivers/char/nwflash.c \
../drivers/char/pc8736x_gpio.c \
../drivers/char/ppdev.c \
../drivers/char/ps3flash.c \
../drivers/char/ramoops.c \
../drivers/char/random.c \
../drivers/char/raw.c \
../drivers/char/rtc.c \
../drivers/char/scx200_gpio.c \
../drivers/char/snsc.c \
../drivers/char/snsc_event.c \
../drivers/char/sonypi.c \
../drivers/char/tb0219.c \
../drivers/char/tile-srom.c \
../drivers/char/tlclk.c \
../drivers/char/toshiba.c \
../drivers/char/ttyprintk.c \
../drivers/char/uv_mmtimer.c \
../drivers/char/virtio_console.c 

OBJS += \
./drivers/char/apm-emulation.o \
./drivers/char/applicom.o \
./drivers/char/bfin-otp.o \
./drivers/char/bsr.o \
./drivers/char/dcc_tty.o \
./drivers/char/ds1302.o \
./drivers/char/ds1620.o \
./drivers/char/dsp56k.o \
./drivers/char/dtlk.o \
./drivers/char/efirtc.o \
./drivers/char/generic_nvram.o \
./drivers/char/genrtc.o \
./drivers/char/hangcheck-timer.o \
./drivers/char/hpet.o \
./drivers/char/i8k.o \
./drivers/char/lp.o \
./drivers/char/mbcs.o \
./drivers/char/mem.o \
./drivers/char/misc.o \
./drivers/char/mmtimer.o \
./drivers/char/msm_smd_pkt.o \
./drivers/char/mspec.o \
./drivers/char/nsc_gpio.o \
./drivers/char/nvram.o \
./drivers/char/nwbutton.o \
./drivers/char/nwflash.o \
./drivers/char/pc8736x_gpio.o \
./drivers/char/ppdev.o \
./drivers/char/ps3flash.o \
./drivers/char/ramoops.o \
./drivers/char/random.o \
./drivers/char/raw.o \
./drivers/char/rtc.o \
./drivers/char/scx200_gpio.o \
./drivers/char/snsc.o \
./drivers/char/snsc_event.o \
./drivers/char/sonypi.o \
./drivers/char/tb0219.o \
./drivers/char/tile-srom.o \
./drivers/char/tlclk.o \
./drivers/char/toshiba.o \
./drivers/char/ttyprintk.o \
./drivers/char/uv_mmtimer.o \
./drivers/char/virtio_console.o 

C_DEPS += \
./drivers/char/apm-emulation.d \
./drivers/char/applicom.d \
./drivers/char/bfin-otp.d \
./drivers/char/bsr.d \
./drivers/char/dcc_tty.d \
./drivers/char/ds1302.d \
./drivers/char/ds1620.d \
./drivers/char/dsp56k.d \
./drivers/char/dtlk.d \
./drivers/char/efirtc.d \
./drivers/char/generic_nvram.d \
./drivers/char/genrtc.d \
./drivers/char/hangcheck-timer.d \
./drivers/char/hpet.d \
./drivers/char/i8k.d \
./drivers/char/lp.d \
./drivers/char/mbcs.d \
./drivers/char/mem.d \
./drivers/char/misc.d \
./drivers/char/mmtimer.d \
./drivers/char/msm_smd_pkt.d \
./drivers/char/mspec.d \
./drivers/char/nsc_gpio.d \
./drivers/char/nvram.d \
./drivers/char/nwbutton.d \
./drivers/char/nwflash.d \
./drivers/char/pc8736x_gpio.d \
./drivers/char/ppdev.d \
./drivers/char/ps3flash.d \
./drivers/char/ramoops.d \
./drivers/char/random.d \
./drivers/char/raw.d \
./drivers/char/rtc.d \
./drivers/char/scx200_gpio.d \
./drivers/char/snsc.d \
./drivers/char/snsc_event.d \
./drivers/char/sonypi.d \
./drivers/char/tb0219.d \
./drivers/char/tile-srom.d \
./drivers/char/tlclk.d \
./drivers/char/toshiba.d \
./drivers/char/ttyprintk.d \
./drivers/char/uv_mmtimer.d \
./drivers/char/virtio_console.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/char/%.o: ../drivers/char/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


