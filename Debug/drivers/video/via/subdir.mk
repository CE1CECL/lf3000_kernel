################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/video/via/accel.c \
../drivers/video/via/dvi.c \
../drivers/video/via/global.c \
../drivers/video/via/hw.c \
../drivers/video/via/ioctl.c \
../drivers/video/via/lcd.c \
../drivers/video/via/tblDPASetting.c \
../drivers/video/via/via-core.c \
../drivers/video/via/via-gpio.c \
../drivers/video/via/via_aux.c \
../drivers/video/via/via_aux_ch7301.c \
../drivers/video/via/via_aux_edid.c \
../drivers/video/via/via_aux_sii164.c \
../drivers/video/via/via_aux_vt1621.c \
../drivers/video/via/via_aux_vt1622.c \
../drivers/video/via/via_aux_vt1625.c \
../drivers/video/via/via_aux_vt1631.c \
../drivers/video/via/via_aux_vt1632.c \
../drivers/video/via/via_aux_vt1636.c \
../drivers/video/via/via_clock.c \
../drivers/video/via/via_i2c.c \
../drivers/video/via/via_modesetting.c \
../drivers/video/via/via_utility.c \
../drivers/video/via/viafbdev.c \
../drivers/video/via/viamode.c \
../drivers/video/via/vt1636.c 

OBJS += \
./drivers/video/via/accel.o \
./drivers/video/via/dvi.o \
./drivers/video/via/global.o \
./drivers/video/via/hw.o \
./drivers/video/via/ioctl.o \
./drivers/video/via/lcd.o \
./drivers/video/via/tblDPASetting.o \
./drivers/video/via/via-core.o \
./drivers/video/via/via-gpio.o \
./drivers/video/via/via_aux.o \
./drivers/video/via/via_aux_ch7301.o \
./drivers/video/via/via_aux_edid.o \
./drivers/video/via/via_aux_sii164.o \
./drivers/video/via/via_aux_vt1621.o \
./drivers/video/via/via_aux_vt1622.o \
./drivers/video/via/via_aux_vt1625.o \
./drivers/video/via/via_aux_vt1631.o \
./drivers/video/via/via_aux_vt1632.o \
./drivers/video/via/via_aux_vt1636.o \
./drivers/video/via/via_clock.o \
./drivers/video/via/via_i2c.o \
./drivers/video/via/via_modesetting.o \
./drivers/video/via/via_utility.o \
./drivers/video/via/viafbdev.o \
./drivers/video/via/viamode.o \
./drivers/video/via/vt1636.o 

C_DEPS += \
./drivers/video/via/accel.d \
./drivers/video/via/dvi.d \
./drivers/video/via/global.d \
./drivers/video/via/hw.d \
./drivers/video/via/ioctl.d \
./drivers/video/via/lcd.d \
./drivers/video/via/tblDPASetting.d \
./drivers/video/via/via-core.d \
./drivers/video/via/via-gpio.d \
./drivers/video/via/via_aux.d \
./drivers/video/via/via_aux_ch7301.d \
./drivers/video/via/via_aux_edid.d \
./drivers/video/via/via_aux_sii164.d \
./drivers/video/via/via_aux_vt1621.d \
./drivers/video/via/via_aux_vt1622.d \
./drivers/video/via/via_aux_vt1625.d \
./drivers/video/via/via_aux_vt1631.d \
./drivers/video/via/via_aux_vt1632.d \
./drivers/video/via/via_aux_vt1636.d \
./drivers/video/via/via_clock.d \
./drivers/video/via/via_i2c.d \
./drivers/video/via/via_modesetting.d \
./drivers/video/via/via_utility.d \
./drivers/video/via/viafbdev.d \
./drivers/video/via/viamode.d \
./drivers/video/via/vt1636.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/video/via/%.o: ../drivers/video/via/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


