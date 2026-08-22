################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/gpu/drm/savage/savage_bci.c \
../drivers/gpu/drm/savage/savage_drv.c \
../drivers/gpu/drm/savage/savage_state.c 

OBJS += \
./drivers/gpu/drm/savage/savage_bci.o \
./drivers/gpu/drm/savage/savage_drv.o \
./drivers/gpu/drm/savage/savage_state.o 

C_DEPS += \
./drivers/gpu/drm/savage/savage_bci.d \
./drivers/gpu/drm/savage/savage_drv.d \
./drivers/gpu/drm/savage/savage_state.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/gpu/drm/savage/%.o: ../drivers/gpu/drm/savage/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


