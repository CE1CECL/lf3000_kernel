################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/gpu/drm/mga/mga_dma.c \
../drivers/gpu/drm/mga/mga_drv.c \
../drivers/gpu/drm/mga/mga_ioc32.c \
../drivers/gpu/drm/mga/mga_irq.c \
../drivers/gpu/drm/mga/mga_state.c \
../drivers/gpu/drm/mga/mga_warp.c 

OBJS += \
./drivers/gpu/drm/mga/mga_dma.o \
./drivers/gpu/drm/mga/mga_drv.o \
./drivers/gpu/drm/mga/mga_ioc32.o \
./drivers/gpu/drm/mga/mga_irq.o \
./drivers/gpu/drm/mga/mga_state.o \
./drivers/gpu/drm/mga/mga_warp.o 

C_DEPS += \
./drivers/gpu/drm/mga/mga_dma.d \
./drivers/gpu/drm/mga/mga_drv.d \
./drivers/gpu/drm/mga/mga_ioc32.d \
./drivers/gpu/drm/mga/mga_irq.d \
./drivers/gpu/drm/mga/mga_state.d \
./drivers/gpu/drm/mga/mga_warp.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/gpu/drm/mga/%.o: ../drivers/gpu/drm/mga/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


