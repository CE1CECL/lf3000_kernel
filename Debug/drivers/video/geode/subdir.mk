################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/video/geode/display_gx.c \
../drivers/video/geode/display_gx1.c \
../drivers/video/geode/gx1fb_core.c \
../drivers/video/geode/gxfb_core.c \
../drivers/video/geode/lxfb_core.c \
../drivers/video/geode/lxfb_ops.c \
../drivers/video/geode/suspend_gx.c \
../drivers/video/geode/video_cs5530.c \
../drivers/video/geode/video_gx.c 

OBJS += \
./drivers/video/geode/display_gx.o \
./drivers/video/geode/display_gx1.o \
./drivers/video/geode/gx1fb_core.o \
./drivers/video/geode/gxfb_core.o \
./drivers/video/geode/lxfb_core.o \
./drivers/video/geode/lxfb_ops.o \
./drivers/video/geode/suspend_gx.o \
./drivers/video/geode/video_cs5530.o \
./drivers/video/geode/video_gx.o 

C_DEPS += \
./drivers/video/geode/display_gx.d \
./drivers/video/geode/display_gx1.d \
./drivers/video/geode/gx1fb_core.d \
./drivers/video/geode/gxfb_core.d \
./drivers/video/geode/lxfb_core.d \
./drivers/video/geode/lxfb_ops.d \
./drivers/video/geode/suspend_gx.d \
./drivers/video/geode/video_cs5530.d \
./drivers/video/geode/video_gx.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/video/geode/%.o: ../drivers/video/geode/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


