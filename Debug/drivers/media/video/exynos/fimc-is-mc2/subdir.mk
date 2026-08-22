################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/exynos/fimc-is-mc2/fimc-is-core.c \
../drivers/media/video/exynos/fimc-is-mc2/fimc-is-device-flite.c \
../drivers/media/video/exynos/fimc-is-mc2/fimc-is-device-ischain.c \
../drivers/media/video/exynos/fimc-is-mc2/fimc-is-device-sensor.c \
../drivers/media/video/exynos/fimc-is-mc2/fimc-is-framemgr.c \
../drivers/media/video/exynos/fimc-is-mc2/fimc-is-interface.c \
../drivers/media/video/exynos/fimc-is-mc2/fimc-is-mem.c \
../drivers/media/video/exynos/fimc-is-mc2/fimc-is-spi.c \
../drivers/media/video/exynos/fimc-is-mc2/fimc-is-time.c \
../drivers/media/video/exynos/fimc-is-mc2/fimc-is-vb2.c \
../drivers/media/video/exynos/fimc-is-mc2/fimc-is-video-isp.c \
../drivers/media/video/exynos/fimc-is-mc2/fimc-is-video-scc.c \
../drivers/media/video/exynos/fimc-is-mc2/fimc-is-video-scp.c \
../drivers/media/video/exynos/fimc-is-mc2/fimc-is-video-sensor.c \
../drivers/media/video/exynos/fimc-is-mc2/fimc-is-video.c 

OBJS += \
./drivers/media/video/exynos/fimc-is-mc2/fimc-is-core.o \
./drivers/media/video/exynos/fimc-is-mc2/fimc-is-device-flite.o \
./drivers/media/video/exynos/fimc-is-mc2/fimc-is-device-ischain.o \
./drivers/media/video/exynos/fimc-is-mc2/fimc-is-device-sensor.o \
./drivers/media/video/exynos/fimc-is-mc2/fimc-is-framemgr.o \
./drivers/media/video/exynos/fimc-is-mc2/fimc-is-interface.o \
./drivers/media/video/exynos/fimc-is-mc2/fimc-is-mem.o \
./drivers/media/video/exynos/fimc-is-mc2/fimc-is-spi.o \
./drivers/media/video/exynos/fimc-is-mc2/fimc-is-time.o \
./drivers/media/video/exynos/fimc-is-mc2/fimc-is-vb2.o \
./drivers/media/video/exynos/fimc-is-mc2/fimc-is-video-isp.o \
./drivers/media/video/exynos/fimc-is-mc2/fimc-is-video-scc.o \
./drivers/media/video/exynos/fimc-is-mc2/fimc-is-video-scp.o \
./drivers/media/video/exynos/fimc-is-mc2/fimc-is-video-sensor.o \
./drivers/media/video/exynos/fimc-is-mc2/fimc-is-video.o 

C_DEPS += \
./drivers/media/video/exynos/fimc-is-mc2/fimc-is-core.d \
./drivers/media/video/exynos/fimc-is-mc2/fimc-is-device-flite.d \
./drivers/media/video/exynos/fimc-is-mc2/fimc-is-device-ischain.d \
./drivers/media/video/exynos/fimc-is-mc2/fimc-is-device-sensor.d \
./drivers/media/video/exynos/fimc-is-mc2/fimc-is-framemgr.d \
./drivers/media/video/exynos/fimc-is-mc2/fimc-is-interface.d \
./drivers/media/video/exynos/fimc-is-mc2/fimc-is-mem.d \
./drivers/media/video/exynos/fimc-is-mc2/fimc-is-spi.d \
./drivers/media/video/exynos/fimc-is-mc2/fimc-is-time.d \
./drivers/media/video/exynos/fimc-is-mc2/fimc-is-vb2.d \
./drivers/media/video/exynos/fimc-is-mc2/fimc-is-video-isp.d \
./drivers/media/video/exynos/fimc-is-mc2/fimc-is-video-scc.d \
./drivers/media/video/exynos/fimc-is-mc2/fimc-is-video-scp.d \
./drivers/media/video/exynos/fimc-is-mc2/fimc-is-video-sensor.d \
./drivers/media/video/exynos/fimc-is-mc2/fimc-is-video.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/exynos/fimc-is-mc2/%.o: ../drivers/media/video/exynos/fimc-is-mc2/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


