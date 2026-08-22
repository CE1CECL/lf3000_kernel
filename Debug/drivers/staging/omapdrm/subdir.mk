################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/omapdrm/omap_connector.c \
../drivers/staging/omapdrm/omap_crtc.c \
../drivers/staging/omapdrm/omap_debugfs.c \
../drivers/staging/omapdrm/omap_dmm_tiler.c \
../drivers/staging/omapdrm/omap_drv.c \
../drivers/staging/omapdrm/omap_encoder.c \
../drivers/staging/omapdrm/omap_fb.c \
../drivers/staging/omapdrm/omap_fbdev.c \
../drivers/staging/omapdrm/omap_gem.c \
../drivers/staging/omapdrm/omap_gem_helpers.c \
../drivers/staging/omapdrm/omap_plane.c \
../drivers/staging/omapdrm/tcm-sita.c 

OBJS += \
./drivers/staging/omapdrm/omap_connector.o \
./drivers/staging/omapdrm/omap_crtc.o \
./drivers/staging/omapdrm/omap_debugfs.o \
./drivers/staging/omapdrm/omap_dmm_tiler.o \
./drivers/staging/omapdrm/omap_drv.o \
./drivers/staging/omapdrm/omap_encoder.o \
./drivers/staging/omapdrm/omap_fb.o \
./drivers/staging/omapdrm/omap_fbdev.o \
./drivers/staging/omapdrm/omap_gem.o \
./drivers/staging/omapdrm/omap_gem_helpers.o \
./drivers/staging/omapdrm/omap_plane.o \
./drivers/staging/omapdrm/tcm-sita.o 

C_DEPS += \
./drivers/staging/omapdrm/omap_connector.d \
./drivers/staging/omapdrm/omap_crtc.d \
./drivers/staging/omapdrm/omap_debugfs.d \
./drivers/staging/omapdrm/omap_dmm_tiler.d \
./drivers/staging/omapdrm/omap_drv.d \
./drivers/staging/omapdrm/omap_encoder.d \
./drivers/staging/omapdrm/omap_fb.d \
./drivers/staging/omapdrm/omap_fbdev.d \
./drivers/staging/omapdrm/omap_gem.d \
./drivers/staging/omapdrm/omap_gem_helpers.d \
./drivers/staging/omapdrm/omap_plane.d \
./drivers/staging/omapdrm/tcm-sita.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/omapdrm/%.o: ../drivers/staging/omapdrm/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


