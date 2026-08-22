################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/exynos/gsc/coef.c \
../drivers/media/video/exynos/gsc/gsc-capture.c \
../drivers/media/video/exynos/gsc/gsc-core.c \
../drivers/media/video/exynos/gsc/gsc-m2m.c \
../drivers/media/video/exynos/gsc/gsc-output.c \
../drivers/media/video/exynos/gsc/gsc-regs.c \
../drivers/media/video/exynos/gsc/gsc-vb2.c 

OBJS += \
./drivers/media/video/exynos/gsc/coef.o \
./drivers/media/video/exynos/gsc/gsc-capture.o \
./drivers/media/video/exynos/gsc/gsc-core.o \
./drivers/media/video/exynos/gsc/gsc-m2m.o \
./drivers/media/video/exynos/gsc/gsc-output.o \
./drivers/media/video/exynos/gsc/gsc-regs.o \
./drivers/media/video/exynos/gsc/gsc-vb2.o 

C_DEPS += \
./drivers/media/video/exynos/gsc/coef.d \
./drivers/media/video/exynos/gsc/gsc-capture.d \
./drivers/media/video/exynos/gsc/gsc-core.d \
./drivers/media/video/exynos/gsc/gsc-m2m.d \
./drivers/media/video/exynos/gsc/gsc-output.d \
./drivers/media/video/exynos/gsc/gsc-regs.d \
./drivers/media/video/exynos/gsc/gsc-vb2.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/exynos/gsc/%.o: ../drivers/media/video/exynos/gsc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


