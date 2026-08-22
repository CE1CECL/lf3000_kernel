################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/exynos/fimg2d/fimg2d4x_blt.c \
../drivers/media/video/exynos/fimg2d/fimg2d4x_hw.c \
../drivers/media/video/exynos/fimg2d/fimg2d_cache.c \
../drivers/media/video/exynos/fimg2d/fimg2d_clk.c \
../drivers/media/video/exynos/fimg2d/fimg2d_ctx.c \
../drivers/media/video/exynos/fimg2d/fimg2d_drv.c \
../drivers/media/video/exynos/fimg2d/fimg2d_helper.c 

OBJS += \
./drivers/media/video/exynos/fimg2d/fimg2d4x_blt.o \
./drivers/media/video/exynos/fimg2d/fimg2d4x_hw.o \
./drivers/media/video/exynos/fimg2d/fimg2d_cache.o \
./drivers/media/video/exynos/fimg2d/fimg2d_clk.o \
./drivers/media/video/exynos/fimg2d/fimg2d_ctx.o \
./drivers/media/video/exynos/fimg2d/fimg2d_drv.o \
./drivers/media/video/exynos/fimg2d/fimg2d_helper.o 

C_DEPS += \
./drivers/media/video/exynos/fimg2d/fimg2d4x_blt.d \
./drivers/media/video/exynos/fimg2d/fimg2d4x_hw.d \
./drivers/media/video/exynos/fimg2d/fimg2d_cache.d \
./drivers/media/video/exynos/fimg2d/fimg2d_clk.d \
./drivers/media/video/exynos/fimg2d/fimg2d_ctx.d \
./drivers/media/video/exynos/fimg2d/fimg2d_drv.d \
./drivers/media/video/exynos/fimg2d/fimg2d_helper.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/exynos/fimg2d/%.o: ../drivers/media/video/exynos/fimg2d/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


