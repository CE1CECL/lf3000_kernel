################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/hid/hid-a4tech.c \
../drivers/hid/hid-apple.c \
../drivers/hid/hid-axff.c \
../drivers/hid/hid-belkin.c \
../drivers/hid/hid-cherry.c \
../drivers/hid/hid-chicony.c \
../drivers/hid/hid-core.c \
../drivers/hid/hid-cypress.c \
../drivers/hid/hid-debug.c \
../drivers/hid/hid-dr.c \
../drivers/hid/hid-elecom.c \
../drivers/hid/hid-emsff.c \
../drivers/hid/hid-ezkey.c \
../drivers/hid/hid-gaff.c \
../drivers/hid/hid-gyration.c \
../drivers/hid/hid-holtekff.c \
../drivers/hid/hid-hyperv.c \
../drivers/hid/hid-input.c \
../drivers/hid/hid-kensington.c \
../drivers/hid/hid-keytouch.c \
../drivers/hid/hid-kye.c \
../drivers/hid/hid-lcpower.c \
../drivers/hid/hid-lg.c \
../drivers/hid/hid-lg2ff.c \
../drivers/hid/hid-lg3ff.c \
../drivers/hid/hid-lg4ff.c \
../drivers/hid/hid-lgff.c \
../drivers/hid/hid-logitech-dj.c \
../drivers/hid/hid-magicmouse.c \
../drivers/hid/hid-microsoft.c \
../drivers/hid/hid-monterey.c \
../drivers/hid/hid-multitouch.c \
../drivers/hid/hid-ntrig.c \
../drivers/hid/hid-ortek.c \
../drivers/hid/hid-petalynx.c \
../drivers/hid/hid-picolcd.c \
../drivers/hid/hid-pl.c \
../drivers/hid/hid-primax.c \
../drivers/hid/hid-prodikeys.c \
../drivers/hid/hid-roccat-arvo.c \
../drivers/hid/hid-roccat-common.c \
../drivers/hid/hid-roccat-isku.c \
../drivers/hid/hid-roccat-kone.c \
../drivers/hid/hid-roccat-koneplus.c \
../drivers/hid/hid-roccat-kovaplus.c \
../drivers/hid/hid-roccat-pyra.c \
../drivers/hid/hid-roccat.c \
../drivers/hid/hid-saitek.c \
../drivers/hid/hid-samsung.c \
../drivers/hid/hid-sjoy.c \
../drivers/hid/hid-sony.c \
../drivers/hid/hid-speedlink.c \
../drivers/hid/hid-sunplus.c \
../drivers/hid/hid-tivo.c \
../drivers/hid/hid-tmff.c \
../drivers/hid/hid-topseed.c \
../drivers/hid/hid-twinhan.c \
../drivers/hid/hid-uclogic.c \
../drivers/hid/hid-wacom.c \
../drivers/hid/hid-waltop.c \
../drivers/hid/hid-wiimote-core.c \
../drivers/hid/hid-wiimote-debug.c \
../drivers/hid/hid-wiimote-ext.c \
../drivers/hid/hid-zpff.c \
../drivers/hid/hid-zydacron.c \
../drivers/hid/hidraw.c \
../drivers/hid/uhid.c 

OBJS += \
./drivers/hid/hid-a4tech.o \
./drivers/hid/hid-apple.o \
./drivers/hid/hid-axff.o \
./drivers/hid/hid-belkin.o \
./drivers/hid/hid-cherry.o \
./drivers/hid/hid-chicony.o \
./drivers/hid/hid-core.o \
./drivers/hid/hid-cypress.o \
./drivers/hid/hid-debug.o \
./drivers/hid/hid-dr.o \
./drivers/hid/hid-elecom.o \
./drivers/hid/hid-emsff.o \
./drivers/hid/hid-ezkey.o \
./drivers/hid/hid-gaff.o \
./drivers/hid/hid-gyration.o \
./drivers/hid/hid-holtekff.o \
./drivers/hid/hid-hyperv.o \
./drivers/hid/hid-input.o \
./drivers/hid/hid-kensington.o \
./drivers/hid/hid-keytouch.o \
./drivers/hid/hid-kye.o \
./drivers/hid/hid-lcpower.o \
./drivers/hid/hid-lg.o \
./drivers/hid/hid-lg2ff.o \
./drivers/hid/hid-lg3ff.o \
./drivers/hid/hid-lg4ff.o \
./drivers/hid/hid-lgff.o \
./drivers/hid/hid-logitech-dj.o \
./drivers/hid/hid-magicmouse.o \
./drivers/hid/hid-microsoft.o \
./drivers/hid/hid-monterey.o \
./drivers/hid/hid-multitouch.o \
./drivers/hid/hid-ntrig.o \
./drivers/hid/hid-ortek.o \
./drivers/hid/hid-petalynx.o \
./drivers/hid/hid-picolcd.o \
./drivers/hid/hid-pl.o \
./drivers/hid/hid-primax.o \
./drivers/hid/hid-prodikeys.o \
./drivers/hid/hid-roccat-arvo.o \
./drivers/hid/hid-roccat-common.o \
./drivers/hid/hid-roccat-isku.o \
./drivers/hid/hid-roccat-kone.o \
./drivers/hid/hid-roccat-koneplus.o \
./drivers/hid/hid-roccat-kovaplus.o \
./drivers/hid/hid-roccat-pyra.o \
./drivers/hid/hid-roccat.o \
./drivers/hid/hid-saitek.o \
./drivers/hid/hid-samsung.o \
./drivers/hid/hid-sjoy.o \
./drivers/hid/hid-sony.o \
./drivers/hid/hid-speedlink.o \
./drivers/hid/hid-sunplus.o \
./drivers/hid/hid-tivo.o \
./drivers/hid/hid-tmff.o \
./drivers/hid/hid-topseed.o \
./drivers/hid/hid-twinhan.o \
./drivers/hid/hid-uclogic.o \
./drivers/hid/hid-wacom.o \
./drivers/hid/hid-waltop.o \
./drivers/hid/hid-wiimote-core.o \
./drivers/hid/hid-wiimote-debug.o \
./drivers/hid/hid-wiimote-ext.o \
./drivers/hid/hid-zpff.o \
./drivers/hid/hid-zydacron.o \
./drivers/hid/hidraw.o \
./drivers/hid/uhid.o 

C_DEPS += \
./drivers/hid/hid-a4tech.d \
./drivers/hid/hid-apple.d \
./drivers/hid/hid-axff.d \
./drivers/hid/hid-belkin.d \
./drivers/hid/hid-cherry.d \
./drivers/hid/hid-chicony.d \
./drivers/hid/hid-core.d \
./drivers/hid/hid-cypress.d \
./drivers/hid/hid-debug.d \
./drivers/hid/hid-dr.d \
./drivers/hid/hid-elecom.d \
./drivers/hid/hid-emsff.d \
./drivers/hid/hid-ezkey.d \
./drivers/hid/hid-gaff.d \
./drivers/hid/hid-gyration.d \
./drivers/hid/hid-holtekff.d \
./drivers/hid/hid-hyperv.d \
./drivers/hid/hid-input.d \
./drivers/hid/hid-kensington.d \
./drivers/hid/hid-keytouch.d \
./drivers/hid/hid-kye.d \
./drivers/hid/hid-lcpower.d \
./drivers/hid/hid-lg.d \
./drivers/hid/hid-lg2ff.d \
./drivers/hid/hid-lg3ff.d \
./drivers/hid/hid-lg4ff.d \
./drivers/hid/hid-lgff.d \
./drivers/hid/hid-logitech-dj.d \
./drivers/hid/hid-magicmouse.d \
./drivers/hid/hid-microsoft.d \
./drivers/hid/hid-monterey.d \
./drivers/hid/hid-multitouch.d \
./drivers/hid/hid-ntrig.d \
./drivers/hid/hid-ortek.d \
./drivers/hid/hid-petalynx.d \
./drivers/hid/hid-picolcd.d \
./drivers/hid/hid-pl.d \
./drivers/hid/hid-primax.d \
./drivers/hid/hid-prodikeys.d \
./drivers/hid/hid-roccat-arvo.d \
./drivers/hid/hid-roccat-common.d \
./drivers/hid/hid-roccat-isku.d \
./drivers/hid/hid-roccat-kone.d \
./drivers/hid/hid-roccat-koneplus.d \
./drivers/hid/hid-roccat-kovaplus.d \
./drivers/hid/hid-roccat-pyra.d \
./drivers/hid/hid-roccat.d \
./drivers/hid/hid-saitek.d \
./drivers/hid/hid-samsung.d \
./drivers/hid/hid-sjoy.d \
./drivers/hid/hid-sony.d \
./drivers/hid/hid-speedlink.d \
./drivers/hid/hid-sunplus.d \
./drivers/hid/hid-tivo.d \
./drivers/hid/hid-tmff.d \
./drivers/hid/hid-topseed.d \
./drivers/hid/hid-twinhan.d \
./drivers/hid/hid-uclogic.d \
./drivers/hid/hid-wacom.d \
./drivers/hid/hid-waltop.d \
./drivers/hid/hid-wiimote-core.d \
./drivers/hid/hid-wiimote-debug.d \
./drivers/hid/hid-wiimote-ext.d \
./drivers/hid/hid-zpff.d \
./drivers/hid/hid-zydacron.d \
./drivers/hid/hidraw.d \
./drivers/hid/uhid.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/hid/%.o: ../drivers/hid/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


