################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/gpu/drm/r128/r128_cce.c \
../drivers/gpu/drm/r128/r128_drv.c \
../drivers/gpu/drm/r128/r128_ioc32.c \
../drivers/gpu/drm/r128/r128_irq.c \
../drivers/gpu/drm/r128/r128_state.c 

OBJS += \
./drivers/gpu/drm/r128/r128_cce.o \
./drivers/gpu/drm/r128/r128_drv.o \
./drivers/gpu/drm/r128/r128_ioc32.o \
./drivers/gpu/drm/r128/r128_irq.o \
./drivers/gpu/drm/r128/r128_state.o 

C_DEPS += \
./drivers/gpu/drm/r128/r128_cce.d \
./drivers/gpu/drm/r128/r128_drv.d \
./drivers/gpu/drm/r128/r128_ioc32.d \
./drivers/gpu/drm/r128/r128_irq.d \
./drivers/gpu/drm/r128/r128_state.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/gpu/drm/r128/%.o: ../drivers/gpu/drm/r128/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


