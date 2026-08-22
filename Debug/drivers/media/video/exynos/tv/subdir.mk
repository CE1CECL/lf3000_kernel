################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/exynos/tv/hdcp_drv.c \
../drivers/media/video/exynos/tv/hdmi_cec.c \
../drivers/media/video/exynos/tv/hdmi_cec_ctrl.c \
../drivers/media/video/exynos/tv/hdmi_drv.c \
../drivers/media/video/exynos/tv/hdmi_edid.c \
../drivers/media/video/exynos/tv/hdmi_reg_4210.c \
../drivers/media/video/exynos/tv/hdmi_reg_5250.c \
../drivers/media/video/exynos/tv/hdmiphy_conf_4210.c \
../drivers/media/video/exynos/tv/hdmiphy_conf_5250.c \
../drivers/media/video/exynos/tv/hdmiphy_drv.c \
../drivers/media/video/exynos/tv/mixer_drv.c \
../drivers/media/video/exynos/tv/mixer_grp_layer.c \
../drivers/media/video/exynos/tv/mixer_reg.c \
../drivers/media/video/exynos/tv/mixer_vb2.c \
../drivers/media/video/exynos/tv/mixer_video.c \
../drivers/media/video/exynos/tv/mixer_video_layer.c \
../drivers/media/video/exynos/tv/mixer_vp_layer.c \
../drivers/media/video/exynos/tv/sdo_drv.c 

OBJS += \
./drivers/media/video/exynos/tv/hdcp_drv.o \
./drivers/media/video/exynos/tv/hdmi_cec.o \
./drivers/media/video/exynos/tv/hdmi_cec_ctrl.o \
./drivers/media/video/exynos/tv/hdmi_drv.o \
./drivers/media/video/exynos/tv/hdmi_edid.o \
./drivers/media/video/exynos/tv/hdmi_reg_4210.o \
./drivers/media/video/exynos/tv/hdmi_reg_5250.o \
./drivers/media/video/exynos/tv/hdmiphy_conf_4210.o \
./drivers/media/video/exynos/tv/hdmiphy_conf_5250.o \
./drivers/media/video/exynos/tv/hdmiphy_drv.o \
./drivers/media/video/exynos/tv/mixer_drv.o \
./drivers/media/video/exynos/tv/mixer_grp_layer.o \
./drivers/media/video/exynos/tv/mixer_reg.o \
./drivers/media/video/exynos/tv/mixer_vb2.o \
./drivers/media/video/exynos/tv/mixer_video.o \
./drivers/media/video/exynos/tv/mixer_video_layer.o \
./drivers/media/video/exynos/tv/mixer_vp_layer.o \
./drivers/media/video/exynos/tv/sdo_drv.o 

C_DEPS += \
./drivers/media/video/exynos/tv/hdcp_drv.d \
./drivers/media/video/exynos/tv/hdmi_cec.d \
./drivers/media/video/exynos/tv/hdmi_cec_ctrl.d \
./drivers/media/video/exynos/tv/hdmi_drv.d \
./drivers/media/video/exynos/tv/hdmi_edid.d \
./drivers/media/video/exynos/tv/hdmi_reg_4210.d \
./drivers/media/video/exynos/tv/hdmi_reg_5250.d \
./drivers/media/video/exynos/tv/hdmiphy_conf_4210.d \
./drivers/media/video/exynos/tv/hdmiphy_conf_5250.d \
./drivers/media/video/exynos/tv/hdmiphy_drv.d \
./drivers/media/video/exynos/tv/mixer_drv.d \
./drivers/media/video/exynos/tv/mixer_grp_layer.d \
./drivers/media/video/exynos/tv/mixer_reg.d \
./drivers/media/video/exynos/tv/mixer_vb2.d \
./drivers/media/video/exynos/tv/mixer_video.d \
./drivers/media/video/exynos/tv/mixer_video_layer.d \
./drivers/media/video/exynos/tv/mixer_vp_layer.d \
./drivers/media/video/exynos/tv/sdo_drv.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/exynos/tv/%.o: ../drivers/media/video/exynos/tv/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


