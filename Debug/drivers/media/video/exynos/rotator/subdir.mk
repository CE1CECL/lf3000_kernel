################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/exynos/rotator/rotator-core.c \
../drivers/media/video/exynos/rotator/rotator-regs.c \
../drivers/media/video/exynos/rotator/rotator-vb2.c 

OBJS += \
./drivers/media/video/exynos/rotator/rotator-core.o \
./drivers/media/video/exynos/rotator/rotator-regs.o \
./drivers/media/video/exynos/rotator/rotator-vb2.o 

C_DEPS += \
./drivers/media/video/exynos/rotator/rotator-core.d \
./drivers/media/video/exynos/rotator/rotator-regs.d \
./drivers/media/video/exynos/rotator/rotator-vb2.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/exynos/rotator/%.o: ../drivers/media/video/exynos/rotator/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


