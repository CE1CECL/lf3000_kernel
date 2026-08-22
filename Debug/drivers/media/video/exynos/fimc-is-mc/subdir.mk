################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/exynos/fimc-is-mc/fimc-is-core.c \
../drivers/media/video/exynos/fimc-is-mc/fimc-is-helper.c \
../drivers/media/video/exynos/fimc-is-mc/fimc-is-misc.c \
../drivers/media/video/exynos/fimc-is-mc/fimc-is-vb2.c \
../drivers/media/video/exynos/fimc-is-mc/fimc-is-video.c 

OBJS += \
./drivers/media/video/exynos/fimc-is-mc/fimc-is-core.o \
./drivers/media/video/exynos/fimc-is-mc/fimc-is-helper.o \
./drivers/media/video/exynos/fimc-is-mc/fimc-is-misc.o \
./drivers/media/video/exynos/fimc-is-mc/fimc-is-vb2.o \
./drivers/media/video/exynos/fimc-is-mc/fimc-is-video.o 

C_DEPS += \
./drivers/media/video/exynos/fimc-is-mc/fimc-is-core.d \
./drivers/media/video/exynos/fimc-is-mc/fimc-is-helper.d \
./drivers/media/video/exynos/fimc-is-mc/fimc-is-misc.d \
./drivers/media/video/exynos/fimc-is-mc/fimc-is-vb2.d \
./drivers/media/video/exynos/fimc-is-mc/fimc-is-video.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/exynos/fimc-is-mc/%.o: ../drivers/media/video/exynos/fimc-is-mc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


