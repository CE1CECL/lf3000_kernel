################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/video/exynos/exynos_dp_core.c \
../drivers/video/exynos/exynos_dp_reg.c \
../drivers/video/exynos/exynos_mipi_dsi.c \
../drivers/video/exynos/exynos_mipi_dsi_common.c \
../drivers/video/exynos/exynos_mipi_dsi_lowlevel.c \
../drivers/video/exynos/s6e8ax0.c 

OBJS += \
./drivers/video/exynos/exynos_dp_core.o \
./drivers/video/exynos/exynos_dp_reg.o \
./drivers/video/exynos/exynos_mipi_dsi.o \
./drivers/video/exynos/exynos_mipi_dsi_common.o \
./drivers/video/exynos/exynos_mipi_dsi_lowlevel.o \
./drivers/video/exynos/s6e8ax0.o 

C_DEPS += \
./drivers/video/exynos/exynos_dp_core.d \
./drivers/video/exynos/exynos_dp_reg.d \
./drivers/video/exynos/exynos_mipi_dsi.d \
./drivers/video/exynos/exynos_mipi_dsi_common.d \
./drivers/video/exynos/exynos_mipi_dsi_lowlevel.d \
./drivers/video/exynos/s6e8ax0.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/video/exynos/%.o: ../drivers/video/exynos/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


