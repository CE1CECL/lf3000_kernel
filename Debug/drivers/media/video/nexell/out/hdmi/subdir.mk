################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/nexell/out/hdmi/hdmi-preset.c \
../drivers/media/video/nexell/out/hdmi/hdmi-priv.c \
../drivers/media/video/nexell/out/hdmi/nxp-edid.c \
../drivers/media/video/nexell/out/hdmi/nxp-hdcp.c \
../drivers/media/video/nexell/out/hdmi/nxp-hdmi.c \
../drivers/media/video/nexell/out/hdmi/nxp-hdmiphy.c 

OBJS += \
./drivers/media/video/nexell/out/hdmi/hdmi-preset.o \
./drivers/media/video/nexell/out/hdmi/hdmi-priv.o \
./drivers/media/video/nexell/out/hdmi/nxp-edid.o \
./drivers/media/video/nexell/out/hdmi/nxp-hdcp.o \
./drivers/media/video/nexell/out/hdmi/nxp-hdmi.o \
./drivers/media/video/nexell/out/hdmi/nxp-hdmiphy.o 

C_DEPS += \
./drivers/media/video/nexell/out/hdmi/hdmi-preset.d \
./drivers/media/video/nexell/out/hdmi/hdmi-priv.d \
./drivers/media/video/nexell/out/hdmi/nxp-edid.d \
./drivers/media/video/nexell/out/hdmi/nxp-hdcp.d \
./drivers/media/video/nexell/out/hdmi/nxp-hdmi.d \
./drivers/media/video/nexell/out/hdmi/nxp-hdmiphy.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/nexell/out/hdmi/%.o: ../drivers/media/video/nexell/out/hdmi/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


