################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/gpu/drm/i810/i810_dma.c \
../drivers/gpu/drm/i810/i810_drv.c 

OBJS += \
./drivers/gpu/drm/i810/i810_dma.o \
./drivers/gpu/drm/i810/i810_drv.o 

C_DEPS += \
./drivers/gpu/drm/i810/i810_dma.d \
./drivers/gpu/drm/i810/i810_drv.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/gpu/drm/i810/%.o: ../drivers/gpu/drm/i810/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


