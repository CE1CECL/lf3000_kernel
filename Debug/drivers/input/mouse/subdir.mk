################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/input/mouse/alps.c \
../drivers/input/mouse/amimouse.c \
../drivers/input/mouse/appletouch.c \
../drivers/input/mouse/atarimouse.c \
../drivers/input/mouse/bcm5974.c \
../drivers/input/mouse/elantech.c \
../drivers/input/mouse/gpio_mouse.c \
../drivers/input/mouse/hgpk.c \
../drivers/input/mouse/inport.c \
../drivers/input/mouse/lifebook.c \
../drivers/input/mouse/logibm.c \
../drivers/input/mouse/logips2pp.c \
../drivers/input/mouse/maplemouse.c \
../drivers/input/mouse/pc110pad.c \
../drivers/input/mouse/psmouse-base.c \
../drivers/input/mouse/pxa930_trkball.c \
../drivers/input/mouse/rpcmouse.c \
../drivers/input/mouse/sentelic.c \
../drivers/input/mouse/sermouse.c \
../drivers/input/mouse/synaptics.c \
../drivers/input/mouse/synaptics_i2c.c \
../drivers/input/mouse/synaptics_usb.c \
../drivers/input/mouse/touchkit_ps2.c \
../drivers/input/mouse/trackpoint.c \
../drivers/input/mouse/vsxxxaa.c 

OBJS += \
./drivers/input/mouse/alps.o \
./drivers/input/mouse/amimouse.o \
./drivers/input/mouse/appletouch.o \
./drivers/input/mouse/atarimouse.o \
./drivers/input/mouse/bcm5974.o \
./drivers/input/mouse/elantech.o \
./drivers/input/mouse/gpio_mouse.o \
./drivers/input/mouse/hgpk.o \
./drivers/input/mouse/inport.o \
./drivers/input/mouse/lifebook.o \
./drivers/input/mouse/logibm.o \
./drivers/input/mouse/logips2pp.o \
./drivers/input/mouse/maplemouse.o \
./drivers/input/mouse/pc110pad.o \
./drivers/input/mouse/psmouse-base.o \
./drivers/input/mouse/pxa930_trkball.o \
./drivers/input/mouse/rpcmouse.o \
./drivers/input/mouse/sentelic.o \
./drivers/input/mouse/sermouse.o \
./drivers/input/mouse/synaptics.o \
./drivers/input/mouse/synaptics_i2c.o \
./drivers/input/mouse/synaptics_usb.o \
./drivers/input/mouse/touchkit_ps2.o \
./drivers/input/mouse/trackpoint.o \
./drivers/input/mouse/vsxxxaa.o 

C_DEPS += \
./drivers/input/mouse/alps.d \
./drivers/input/mouse/amimouse.d \
./drivers/input/mouse/appletouch.d \
./drivers/input/mouse/atarimouse.d \
./drivers/input/mouse/bcm5974.d \
./drivers/input/mouse/elantech.d \
./drivers/input/mouse/gpio_mouse.d \
./drivers/input/mouse/hgpk.d \
./drivers/input/mouse/inport.d \
./drivers/input/mouse/lifebook.d \
./drivers/input/mouse/logibm.d \
./drivers/input/mouse/logips2pp.d \
./drivers/input/mouse/maplemouse.d \
./drivers/input/mouse/pc110pad.d \
./drivers/input/mouse/psmouse-base.d \
./drivers/input/mouse/pxa930_trkball.d \
./drivers/input/mouse/rpcmouse.d \
./drivers/input/mouse/sentelic.d \
./drivers/input/mouse/sermouse.d \
./drivers/input/mouse/synaptics.d \
./drivers/input/mouse/synaptics_i2c.d \
./drivers/input/mouse/synaptics_usb.d \
./drivers/input/mouse/touchkit_ps2.d \
./drivers/input/mouse/trackpoint.d \
./drivers/input/mouse/vsxxxaa.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/input/mouse/%.o: ../drivers/input/mouse/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


