################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/gpu/drm/exynos/exynos_ddc.c \
../drivers/gpu/drm/exynos/exynos_drm_buf.c \
../drivers/gpu/drm/exynos/exynos_drm_connector.c \
../drivers/gpu/drm/exynos/exynos_drm_core.c \
../drivers/gpu/drm/exynos/exynos_drm_crtc.c \
../drivers/gpu/drm/exynos/exynos_drm_drv.c \
../drivers/gpu/drm/exynos/exynos_drm_encoder.c \
../drivers/gpu/drm/exynos/exynos_drm_fb.c \
../drivers/gpu/drm/exynos/exynos_drm_fbdev.c \
../drivers/gpu/drm/exynos/exynos_drm_fimd.c \
../drivers/gpu/drm/exynos/exynos_drm_gem.c \
../drivers/gpu/drm/exynos/exynos_drm_hdmi.c \
../drivers/gpu/drm/exynos/exynos_drm_plane.c \
../drivers/gpu/drm/exynos/exynos_drm_vidi.c \
../drivers/gpu/drm/exynos/exynos_hdmi.c \
../drivers/gpu/drm/exynos/exynos_hdmiphy.c \
../drivers/gpu/drm/exynos/exynos_mixer.c 

OBJS += \
./drivers/gpu/drm/exynos/exynos_ddc.o \
./drivers/gpu/drm/exynos/exynos_drm_buf.o \
./drivers/gpu/drm/exynos/exynos_drm_connector.o \
./drivers/gpu/drm/exynos/exynos_drm_core.o \
./drivers/gpu/drm/exynos/exynos_drm_crtc.o \
./drivers/gpu/drm/exynos/exynos_drm_drv.o \
./drivers/gpu/drm/exynos/exynos_drm_encoder.o \
./drivers/gpu/drm/exynos/exynos_drm_fb.o \
./drivers/gpu/drm/exynos/exynos_drm_fbdev.o \
./drivers/gpu/drm/exynos/exynos_drm_fimd.o \
./drivers/gpu/drm/exynos/exynos_drm_gem.o \
./drivers/gpu/drm/exynos/exynos_drm_hdmi.o \
./drivers/gpu/drm/exynos/exynos_drm_plane.o \
./drivers/gpu/drm/exynos/exynos_drm_vidi.o \
./drivers/gpu/drm/exynos/exynos_hdmi.o \
./drivers/gpu/drm/exynos/exynos_hdmiphy.o \
./drivers/gpu/drm/exynos/exynos_mixer.o 

C_DEPS += \
./drivers/gpu/drm/exynos/exynos_ddc.d \
./drivers/gpu/drm/exynos/exynos_drm_buf.d \
./drivers/gpu/drm/exynos/exynos_drm_connector.d \
./drivers/gpu/drm/exynos/exynos_drm_core.d \
./drivers/gpu/drm/exynos/exynos_drm_crtc.d \
./drivers/gpu/drm/exynos/exynos_drm_drv.d \
./drivers/gpu/drm/exynos/exynos_drm_encoder.d \
./drivers/gpu/drm/exynos/exynos_drm_fb.d \
./drivers/gpu/drm/exynos/exynos_drm_fbdev.d \
./drivers/gpu/drm/exynos/exynos_drm_fimd.d \
./drivers/gpu/drm/exynos/exynos_drm_gem.d \
./drivers/gpu/drm/exynos/exynos_drm_hdmi.d \
./drivers/gpu/drm/exynos/exynos_drm_plane.d \
./drivers/gpu/drm/exynos/exynos_drm_vidi.d \
./drivers/gpu/drm/exynos/exynos_hdmi.d \
./drivers/gpu/drm/exynos/exynos_hdmiphy.d \
./drivers/gpu/drm/exynos/exynos_mixer.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/gpu/drm/exynos/%.o: ../drivers/gpu/drm/exynos/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


