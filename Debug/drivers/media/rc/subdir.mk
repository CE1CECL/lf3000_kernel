################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/media/rc/built-in.o 

C_SRCS += \
../drivers/media/rc/ati_remote.c \
../drivers/media/rc/ene_ir.c \
../drivers/media/rc/fintek-cir.c \
../drivers/media/rc/gpio-ir-recv.c \
../drivers/media/rc/imon.c \
../drivers/media/rc/ir-jvc-decoder.c \
../drivers/media/rc/ir-lirc-codec.c \
../drivers/media/rc/ir-mce_kbd-decoder.c \
../drivers/media/rc/ir-nec-decoder.c \
../drivers/media/rc/ir-raw.c \
../drivers/media/rc/ir-rc5-decoder.c \
../drivers/media/rc/ir-rc5-sz-decoder.c \
../drivers/media/rc/ir-rc6-decoder.c \
../drivers/media/rc/ir-sanyo-decoder.c \
../drivers/media/rc/ir-sony-decoder.c \
../drivers/media/rc/ite-cir.c \
../drivers/media/rc/lirc_dev.c \
../drivers/media/rc/mceusb.c \
../drivers/media/rc/nuvoton-cir.c \
../drivers/media/rc/rc-loopback.c \
../drivers/media/rc/rc-main.c \
../drivers/media/rc/redrat3.c \
../drivers/media/rc/streamzap.c \
../drivers/media/rc/winbond-cir.c 

OBJS += \
./drivers/media/rc/ati_remote.o \
./drivers/media/rc/ene_ir.o \
./drivers/media/rc/fintek-cir.o \
./drivers/media/rc/gpio-ir-recv.o \
./drivers/media/rc/imon.o \
./drivers/media/rc/ir-jvc-decoder.o \
./drivers/media/rc/ir-lirc-codec.o \
./drivers/media/rc/ir-mce_kbd-decoder.o \
./drivers/media/rc/ir-nec-decoder.o \
./drivers/media/rc/ir-raw.o \
./drivers/media/rc/ir-rc5-decoder.o \
./drivers/media/rc/ir-rc5-sz-decoder.o \
./drivers/media/rc/ir-rc6-decoder.o \
./drivers/media/rc/ir-sanyo-decoder.o \
./drivers/media/rc/ir-sony-decoder.o \
./drivers/media/rc/ite-cir.o \
./drivers/media/rc/lirc_dev.o \
./drivers/media/rc/mceusb.o \
./drivers/media/rc/nuvoton-cir.o \
./drivers/media/rc/rc-loopback.o \
./drivers/media/rc/rc-main.o \
./drivers/media/rc/redrat3.o \
./drivers/media/rc/streamzap.o \
./drivers/media/rc/winbond-cir.o 

C_DEPS += \
./drivers/media/rc/ati_remote.d \
./drivers/media/rc/ene_ir.d \
./drivers/media/rc/fintek-cir.d \
./drivers/media/rc/gpio-ir-recv.d \
./drivers/media/rc/imon.d \
./drivers/media/rc/ir-jvc-decoder.d \
./drivers/media/rc/ir-lirc-codec.d \
./drivers/media/rc/ir-mce_kbd-decoder.d \
./drivers/media/rc/ir-nec-decoder.d \
./drivers/media/rc/ir-raw.d \
./drivers/media/rc/ir-rc5-decoder.d \
./drivers/media/rc/ir-rc5-sz-decoder.d \
./drivers/media/rc/ir-rc6-decoder.d \
./drivers/media/rc/ir-sanyo-decoder.d \
./drivers/media/rc/ir-sony-decoder.d \
./drivers/media/rc/ite-cir.d \
./drivers/media/rc/lirc_dev.d \
./drivers/media/rc/mceusb.d \
./drivers/media/rc/nuvoton-cir.d \
./drivers/media/rc/rc-loopback.d \
./drivers/media/rc/rc-main.d \
./drivers/media/rc/redrat3.d \
./drivers/media/rc/streamzap.d \
./drivers/media/rc/winbond-cir.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/rc/%.o: ../drivers/media/rc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


