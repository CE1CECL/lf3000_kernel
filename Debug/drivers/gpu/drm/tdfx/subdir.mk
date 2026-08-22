################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/gpu/drm/tdfx/tdfx_drv.c 

OBJS += \
./drivers/gpu/drm/tdfx/tdfx_drv.o 

C_DEPS += \
./drivers/gpu/drm/tdfx/tdfx_drv.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/gpu/drm/tdfx/%.o: ../drivers/gpu/drm/tdfx/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


