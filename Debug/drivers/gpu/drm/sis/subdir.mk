################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/gpu/drm/sis/sis_drv.c \
../drivers/gpu/drm/sis/sis_mm.c 

OBJS += \
./drivers/gpu/drm/sis/sis_drv.o \
./drivers/gpu/drm/sis/sis_mm.o 

C_DEPS += \
./drivers/gpu/drm/sis/sis_drv.d \
./drivers/gpu/drm/sis/sis_mm.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/gpu/drm/sis/%.o: ../drivers/gpu/drm/sis/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


