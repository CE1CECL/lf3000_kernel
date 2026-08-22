################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/gpu/drm/i2c/built-in.o 

C_SRCS += \
../drivers/gpu/drm/i2c/ch7006_drv.c \
../drivers/gpu/drm/i2c/ch7006_mode.c \
../drivers/gpu/drm/i2c/sil164_drv.c 

OBJS += \
./drivers/gpu/drm/i2c/ch7006_drv.o \
./drivers/gpu/drm/i2c/ch7006_mode.o \
./drivers/gpu/drm/i2c/sil164_drv.o 

C_DEPS += \
./drivers/gpu/drm/i2c/ch7006_drv.d \
./drivers/gpu/drm/i2c/ch7006_mode.d \
./drivers/gpu/drm/i2c/sil164_drv.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/gpu/drm/i2c/%.o: ../drivers/gpu/drm/i2c/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


