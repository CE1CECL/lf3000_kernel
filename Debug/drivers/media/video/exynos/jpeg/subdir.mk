################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/exynos/jpeg/jpeg_dec.c \
../drivers/media/video/exynos/jpeg/jpeg_dev.c \
../drivers/media/video/exynos/jpeg/jpeg_enc.c \
../drivers/media/video/exynos/jpeg/jpeg_mem.c \
../drivers/media/video/exynos/jpeg/jpeg_regs.c 

OBJS += \
./drivers/media/video/exynos/jpeg/jpeg_dec.o \
./drivers/media/video/exynos/jpeg/jpeg_dev.o \
./drivers/media/video/exynos/jpeg/jpeg_enc.o \
./drivers/media/video/exynos/jpeg/jpeg_mem.o \
./drivers/media/video/exynos/jpeg/jpeg_regs.o 

C_DEPS += \
./drivers/media/video/exynos/jpeg/jpeg_dec.d \
./drivers/media/video/exynos/jpeg/jpeg_dev.d \
./drivers/media/video/exynos/jpeg/jpeg_enc.d \
./drivers/media/video/exynos/jpeg/jpeg_mem.d \
./drivers/media/video/exynos/jpeg/jpeg_regs.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/exynos/jpeg/%.o: ../drivers/media/video/exynos/jpeg/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


