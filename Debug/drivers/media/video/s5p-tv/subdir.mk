################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/s5p-tv/hdmi_drv.c \
../drivers/media/video/s5p-tv/hdmiphy_drv.c \
../drivers/media/video/s5p-tv/mixer_drv.c \
../drivers/media/video/s5p-tv/mixer_grp_layer.c \
../drivers/media/video/s5p-tv/mixer_reg.c \
../drivers/media/video/s5p-tv/mixer_video.c \
../drivers/media/video/s5p-tv/mixer_vp_layer.c \
../drivers/media/video/s5p-tv/sdo_drv.c \
../drivers/media/video/s5p-tv/sii9234_drv.c 

OBJS += \
./drivers/media/video/s5p-tv/hdmi_drv.o \
./drivers/media/video/s5p-tv/hdmiphy_drv.o \
./drivers/media/video/s5p-tv/mixer_drv.o \
./drivers/media/video/s5p-tv/mixer_grp_layer.o \
./drivers/media/video/s5p-tv/mixer_reg.o \
./drivers/media/video/s5p-tv/mixer_video.o \
./drivers/media/video/s5p-tv/mixer_vp_layer.o \
./drivers/media/video/s5p-tv/sdo_drv.o \
./drivers/media/video/s5p-tv/sii9234_drv.o 

C_DEPS += \
./drivers/media/video/s5p-tv/hdmi_drv.d \
./drivers/media/video/s5p-tv/hdmiphy_drv.d \
./drivers/media/video/s5p-tv/mixer_drv.d \
./drivers/media/video/s5p-tv/mixer_grp_layer.d \
./drivers/media/video/s5p-tv/mixer_reg.d \
./drivers/media/video/s5p-tv/mixer_video.d \
./drivers/media/video/s5p-tv/mixer_vp_layer.d \
./drivers/media/video/s5p-tv/sdo_drv.d \
./drivers/media/video/s5p-tv/sii9234_drv.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/s5p-tv/%.o: ../drivers/media/video/s5p-tv/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


