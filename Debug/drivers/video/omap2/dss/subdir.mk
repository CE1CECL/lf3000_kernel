################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/video/omap2/dss/apply.c \
../drivers/video/omap2/dss/core.c \
../drivers/video/omap2/dss/dispc.c \
../drivers/video/omap2/dss/dispc_coefs.c \
../drivers/video/omap2/dss/display.c \
../drivers/video/omap2/dss/dpi.c \
../drivers/video/omap2/dss/dsi.c \
../drivers/video/omap2/dss/dss.c \
../drivers/video/omap2/dss/dss_features.c \
../drivers/video/omap2/dss/hdmi.c \
../drivers/video/omap2/dss/hdmi_panel.c \
../drivers/video/omap2/dss/manager.c \
../drivers/video/omap2/dss/overlay.c \
../drivers/video/omap2/dss/rfbi.c \
../drivers/video/omap2/dss/sdi.c \
../drivers/video/omap2/dss/ti_hdmi_4xxx_ip.c \
../drivers/video/omap2/dss/venc.c 

OBJS += \
./drivers/video/omap2/dss/apply.o \
./drivers/video/omap2/dss/core.o \
./drivers/video/omap2/dss/dispc.o \
./drivers/video/omap2/dss/dispc_coefs.o \
./drivers/video/omap2/dss/display.o \
./drivers/video/omap2/dss/dpi.o \
./drivers/video/omap2/dss/dsi.o \
./drivers/video/omap2/dss/dss.o \
./drivers/video/omap2/dss/dss_features.o \
./drivers/video/omap2/dss/hdmi.o \
./drivers/video/omap2/dss/hdmi_panel.o \
./drivers/video/omap2/dss/manager.o \
./drivers/video/omap2/dss/overlay.o \
./drivers/video/omap2/dss/rfbi.o \
./drivers/video/omap2/dss/sdi.o \
./drivers/video/omap2/dss/ti_hdmi_4xxx_ip.o \
./drivers/video/omap2/dss/venc.o 

C_DEPS += \
./drivers/video/omap2/dss/apply.d \
./drivers/video/omap2/dss/core.d \
./drivers/video/omap2/dss/dispc.d \
./drivers/video/omap2/dss/dispc_coefs.d \
./drivers/video/omap2/dss/display.d \
./drivers/video/omap2/dss/dpi.d \
./drivers/video/omap2/dss/dsi.d \
./drivers/video/omap2/dss/dss.d \
./drivers/video/omap2/dss/dss_features.d \
./drivers/video/omap2/dss/hdmi.d \
./drivers/video/omap2/dss/hdmi_panel.d \
./drivers/video/omap2/dss/manager.d \
./drivers/video/omap2/dss/overlay.d \
./drivers/video/omap2/dss/rfbi.d \
./drivers/video/omap2/dss/sdi.d \
./drivers/video/omap2/dss/ti_hdmi_4xxx_ip.d \
./drivers/video/omap2/dss/venc.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/video/omap2/dss/%.o: ../drivers/video/omap2/dss/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


