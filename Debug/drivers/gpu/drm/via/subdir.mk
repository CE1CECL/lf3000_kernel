################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/gpu/drm/via/via_dma.c \
../drivers/gpu/drm/via/via_dmablit.c \
../drivers/gpu/drm/via/via_drv.c \
../drivers/gpu/drm/via/via_irq.c \
../drivers/gpu/drm/via/via_map.c \
../drivers/gpu/drm/via/via_mm.c \
../drivers/gpu/drm/via/via_verifier.c \
../drivers/gpu/drm/via/via_video.c 

OBJS += \
./drivers/gpu/drm/via/via_dma.o \
./drivers/gpu/drm/via/via_dmablit.o \
./drivers/gpu/drm/via/via_drv.o \
./drivers/gpu/drm/via/via_irq.o \
./drivers/gpu/drm/via/via_map.o \
./drivers/gpu/drm/via/via_mm.o \
./drivers/gpu/drm/via/via_verifier.o \
./drivers/gpu/drm/via/via_video.o 

C_DEPS += \
./drivers/gpu/drm/via/via_dma.d \
./drivers/gpu/drm/via/via_dmablit.d \
./drivers/gpu/drm/via/via_drv.d \
./drivers/gpu/drm/via/via_irq.d \
./drivers/gpu/drm/via/via_map.d \
./drivers/gpu/drm/via/via_mm.d \
./drivers/gpu/drm/via/via_verifier.d \
./drivers/gpu/drm/via/via_video.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/gpu/drm/via/%.o: ../drivers/gpu/drm/via/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


