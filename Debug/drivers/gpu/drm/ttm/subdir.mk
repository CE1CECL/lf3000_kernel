################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/gpu/drm/ttm/ttm_agp_backend.c \
../drivers/gpu/drm/ttm/ttm_bo.c \
../drivers/gpu/drm/ttm/ttm_bo_manager.c \
../drivers/gpu/drm/ttm/ttm_bo_util.c \
../drivers/gpu/drm/ttm/ttm_bo_vm.c \
../drivers/gpu/drm/ttm/ttm_execbuf_util.c \
../drivers/gpu/drm/ttm/ttm_lock.c \
../drivers/gpu/drm/ttm/ttm_memory.c \
../drivers/gpu/drm/ttm/ttm_module.c \
../drivers/gpu/drm/ttm/ttm_object.c \
../drivers/gpu/drm/ttm/ttm_page_alloc.c \
../drivers/gpu/drm/ttm/ttm_page_alloc_dma.c \
../drivers/gpu/drm/ttm/ttm_tt.c 

OBJS += \
./drivers/gpu/drm/ttm/ttm_agp_backend.o \
./drivers/gpu/drm/ttm/ttm_bo.o \
./drivers/gpu/drm/ttm/ttm_bo_manager.o \
./drivers/gpu/drm/ttm/ttm_bo_util.o \
./drivers/gpu/drm/ttm/ttm_bo_vm.o \
./drivers/gpu/drm/ttm/ttm_execbuf_util.o \
./drivers/gpu/drm/ttm/ttm_lock.o \
./drivers/gpu/drm/ttm/ttm_memory.o \
./drivers/gpu/drm/ttm/ttm_module.o \
./drivers/gpu/drm/ttm/ttm_object.o \
./drivers/gpu/drm/ttm/ttm_page_alloc.o \
./drivers/gpu/drm/ttm/ttm_page_alloc_dma.o \
./drivers/gpu/drm/ttm/ttm_tt.o 

C_DEPS += \
./drivers/gpu/drm/ttm/ttm_agp_backend.d \
./drivers/gpu/drm/ttm/ttm_bo.d \
./drivers/gpu/drm/ttm/ttm_bo_manager.d \
./drivers/gpu/drm/ttm/ttm_bo_util.d \
./drivers/gpu/drm/ttm/ttm_bo_vm.d \
./drivers/gpu/drm/ttm/ttm_execbuf_util.d \
./drivers/gpu/drm/ttm/ttm_lock.d \
./drivers/gpu/drm/ttm/ttm_memory.d \
./drivers/gpu/drm/ttm/ttm_module.d \
./drivers/gpu/drm/ttm/ttm_object.d \
./drivers/gpu/drm/ttm/ttm_page_alloc.d \
./drivers/gpu/drm/ttm/ttm_page_alloc_dma.d \
./drivers/gpu/drm/ttm/ttm_tt.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/gpu/drm/ttm/%.o: ../drivers/gpu/drm/ttm/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


