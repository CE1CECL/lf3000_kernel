################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/soc/omap/am3517evm.c \
../sound/soc/omap/ams-delta.c \
../sound/soc/omap/igep0020.c \
../sound/soc/omap/mcbsp.c \
../sound/soc/omap/n810.c \
../sound/soc/omap/omap-abe-twl6040.c \
../sound/soc/omap/omap-dmic.c \
../sound/soc/omap/omap-hdmi.c \
../sound/soc/omap/omap-mcbsp.c \
../sound/soc/omap/omap-mcpdm.c \
../sound/soc/omap/omap-pcm.c \
../sound/soc/omap/omap3beagle.c \
../sound/soc/omap/omap3evm.c \
../sound/soc/omap/omap3pandora.c \
../sound/soc/omap/omap4-hdmi-card.c \
../sound/soc/omap/osk5912.c \
../sound/soc/omap/overo.c \
../sound/soc/omap/rx51.c \
../sound/soc/omap/sdp3430.c \
../sound/soc/omap/zoom2.c 

OBJS += \
./sound/soc/omap/am3517evm.o \
./sound/soc/omap/ams-delta.o \
./sound/soc/omap/igep0020.o \
./sound/soc/omap/mcbsp.o \
./sound/soc/omap/n810.o \
./sound/soc/omap/omap-abe-twl6040.o \
./sound/soc/omap/omap-dmic.o \
./sound/soc/omap/omap-hdmi.o \
./sound/soc/omap/omap-mcbsp.o \
./sound/soc/omap/omap-mcpdm.o \
./sound/soc/omap/omap-pcm.o \
./sound/soc/omap/omap3beagle.o \
./sound/soc/omap/omap3evm.o \
./sound/soc/omap/omap3pandora.o \
./sound/soc/omap/omap4-hdmi-card.o \
./sound/soc/omap/osk5912.o \
./sound/soc/omap/overo.o \
./sound/soc/omap/rx51.o \
./sound/soc/omap/sdp3430.o \
./sound/soc/omap/zoom2.o 

C_DEPS += \
./sound/soc/omap/am3517evm.d \
./sound/soc/omap/ams-delta.d \
./sound/soc/omap/igep0020.d \
./sound/soc/omap/mcbsp.d \
./sound/soc/omap/n810.d \
./sound/soc/omap/omap-abe-twl6040.d \
./sound/soc/omap/omap-dmic.d \
./sound/soc/omap/omap-hdmi.d \
./sound/soc/omap/omap-mcbsp.d \
./sound/soc/omap/omap-mcpdm.d \
./sound/soc/omap/omap-pcm.d \
./sound/soc/omap/omap3beagle.d \
./sound/soc/omap/omap3evm.d \
./sound/soc/omap/omap3pandora.d \
./sound/soc/omap/omap4-hdmi-card.d \
./sound/soc/omap/osk5912.d \
./sound/soc/omap/overo.d \
./sound/soc/omap/rx51.d \
./sound/soc/omap/sdp3430.d \
./sound/soc/omap/zoom2.d 


# Each subdirectory must supply rules for building sources it contributes
sound/soc/omap/%.o: ../sound/soc/omap/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


