################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/gpu/drm/udl/udl_connector.c \
../drivers/gpu/drm/udl/udl_drv.c \
../drivers/gpu/drm/udl/udl_encoder.c \
../drivers/gpu/drm/udl/udl_fb.c \
../drivers/gpu/drm/udl/udl_gem.c \
../drivers/gpu/drm/udl/udl_main.c \
../drivers/gpu/drm/udl/udl_modeset.c \
../drivers/gpu/drm/udl/udl_transfer.c 

OBJS += \
./drivers/gpu/drm/udl/udl_connector.o \
./drivers/gpu/drm/udl/udl_drv.o \
./drivers/gpu/drm/udl/udl_encoder.o \
./drivers/gpu/drm/udl/udl_fb.o \
./drivers/gpu/drm/udl/udl_gem.o \
./drivers/gpu/drm/udl/udl_main.o \
./drivers/gpu/drm/udl/udl_modeset.o \
./drivers/gpu/drm/udl/udl_transfer.o 

C_DEPS += \
./drivers/gpu/drm/udl/udl_connector.d \
./drivers/gpu/drm/udl/udl_drv.d \
./drivers/gpu/drm/udl/udl_encoder.d \
./drivers/gpu/drm/udl/udl_fb.d \
./drivers/gpu/drm/udl/udl_gem.d \
./drivers/gpu/drm/udl/udl_main.d \
./drivers/gpu/drm/udl/udl_modeset.d \
./drivers/gpu/drm/udl/udl_transfer.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/gpu/drm/udl/%.o: ../drivers/gpu/drm/udl/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


