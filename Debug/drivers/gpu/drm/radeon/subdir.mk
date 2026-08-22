################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/gpu/drm/radeon/atom.c \
../drivers/gpu/drm/radeon/atombios_crtc.c \
../drivers/gpu/drm/radeon/atombios_dp.c \
../drivers/gpu/drm/radeon/atombios_encoders.c \
../drivers/gpu/drm/radeon/atombios_i2c.c \
../drivers/gpu/drm/radeon/cayman_blit_shaders.c \
../drivers/gpu/drm/radeon/evergreen.c \
../drivers/gpu/drm/radeon/evergreen_blit_kms.c \
../drivers/gpu/drm/radeon/evergreen_blit_shaders.c \
../drivers/gpu/drm/radeon/evergreen_cs.c \
../drivers/gpu/drm/radeon/mkregtable.c \
../drivers/gpu/drm/radeon/ni.c \
../drivers/gpu/drm/radeon/r100.c \
../drivers/gpu/drm/radeon/r200.c \
../drivers/gpu/drm/radeon/r300.c \
../drivers/gpu/drm/radeon/r300_cmdbuf.c \
../drivers/gpu/drm/radeon/r420.c \
../drivers/gpu/drm/radeon/r520.c \
../drivers/gpu/drm/radeon/r600.c \
../drivers/gpu/drm/radeon/r600_audio.c \
../drivers/gpu/drm/radeon/r600_blit.c \
../drivers/gpu/drm/radeon/r600_blit_kms.c \
../drivers/gpu/drm/radeon/r600_blit_shaders.c \
../drivers/gpu/drm/radeon/r600_cp.c \
../drivers/gpu/drm/radeon/r600_cs.c \
../drivers/gpu/drm/radeon/r600_hdmi.c \
../drivers/gpu/drm/radeon/radeon_acpi.c \
../drivers/gpu/drm/radeon/radeon_agp.c \
../drivers/gpu/drm/radeon/radeon_asic.c \
../drivers/gpu/drm/radeon/radeon_atombios.c \
../drivers/gpu/drm/radeon/radeon_atpx_handler.c \
../drivers/gpu/drm/radeon/radeon_benchmark.c \
../drivers/gpu/drm/radeon/radeon_bios.c \
../drivers/gpu/drm/radeon/radeon_clocks.c \
../drivers/gpu/drm/radeon/radeon_combios.c \
../drivers/gpu/drm/radeon/radeon_connectors.c \
../drivers/gpu/drm/radeon/radeon_cp.c \
../drivers/gpu/drm/radeon/radeon_cs.c \
../drivers/gpu/drm/radeon/radeon_cursor.c \
../drivers/gpu/drm/radeon/radeon_device.c \
../drivers/gpu/drm/radeon/radeon_display.c \
../drivers/gpu/drm/radeon/radeon_drv.c \
../drivers/gpu/drm/radeon/radeon_encoders.c \
../drivers/gpu/drm/radeon/radeon_fb.c \
../drivers/gpu/drm/radeon/radeon_fence.c \
../drivers/gpu/drm/radeon/radeon_gart.c \
../drivers/gpu/drm/radeon/radeon_gem.c \
../drivers/gpu/drm/radeon/radeon_i2c.c \
../drivers/gpu/drm/radeon/radeon_ioc32.c \
../drivers/gpu/drm/radeon/radeon_irq.c \
../drivers/gpu/drm/radeon/radeon_irq_kms.c \
../drivers/gpu/drm/radeon/radeon_kms.c \
../drivers/gpu/drm/radeon/radeon_legacy_crtc.c \
../drivers/gpu/drm/radeon/radeon_legacy_encoders.c \
../drivers/gpu/drm/radeon/radeon_legacy_tv.c \
../drivers/gpu/drm/radeon/radeon_mem.c \
../drivers/gpu/drm/radeon/radeon_object.c \
../drivers/gpu/drm/radeon/radeon_pm.c \
../drivers/gpu/drm/radeon/radeon_ring.c \
../drivers/gpu/drm/radeon/radeon_sa.c \
../drivers/gpu/drm/radeon/radeon_semaphore.c \
../drivers/gpu/drm/radeon/radeon_state.c \
../drivers/gpu/drm/radeon/radeon_test.c \
../drivers/gpu/drm/radeon/radeon_trace_points.c \
../drivers/gpu/drm/radeon/radeon_ttm.c \
../drivers/gpu/drm/radeon/rs400.c \
../drivers/gpu/drm/radeon/rs600.c \
../drivers/gpu/drm/radeon/rs690.c \
../drivers/gpu/drm/radeon/rv515.c \
../drivers/gpu/drm/radeon/rv770.c \
../drivers/gpu/drm/radeon/si.c \
../drivers/gpu/drm/radeon/si_blit_shaders.c 

OBJS += \
./drivers/gpu/drm/radeon/atom.o \
./drivers/gpu/drm/radeon/atombios_crtc.o \
./drivers/gpu/drm/radeon/atombios_dp.o \
./drivers/gpu/drm/radeon/atombios_encoders.o \
./drivers/gpu/drm/radeon/atombios_i2c.o \
./drivers/gpu/drm/radeon/cayman_blit_shaders.o \
./drivers/gpu/drm/radeon/evergreen.o \
./drivers/gpu/drm/radeon/evergreen_blit_kms.o \
./drivers/gpu/drm/radeon/evergreen_blit_shaders.o \
./drivers/gpu/drm/radeon/evergreen_cs.o \
./drivers/gpu/drm/radeon/mkregtable.o \
./drivers/gpu/drm/radeon/ni.o \
./drivers/gpu/drm/radeon/r100.o \
./drivers/gpu/drm/radeon/r200.o \
./drivers/gpu/drm/radeon/r300.o \
./drivers/gpu/drm/radeon/r300_cmdbuf.o \
./drivers/gpu/drm/radeon/r420.o \
./drivers/gpu/drm/radeon/r520.o \
./drivers/gpu/drm/radeon/r600.o \
./drivers/gpu/drm/radeon/r600_audio.o \
./drivers/gpu/drm/radeon/r600_blit.o \
./drivers/gpu/drm/radeon/r600_blit_kms.o \
./drivers/gpu/drm/radeon/r600_blit_shaders.o \
./drivers/gpu/drm/radeon/r600_cp.o \
./drivers/gpu/drm/radeon/r600_cs.o \
./drivers/gpu/drm/radeon/r600_hdmi.o \
./drivers/gpu/drm/radeon/radeon_acpi.o \
./drivers/gpu/drm/radeon/radeon_agp.o \
./drivers/gpu/drm/radeon/radeon_asic.o \
./drivers/gpu/drm/radeon/radeon_atombios.o \
./drivers/gpu/drm/radeon/radeon_atpx_handler.o \
./drivers/gpu/drm/radeon/radeon_benchmark.o \
./drivers/gpu/drm/radeon/radeon_bios.o \
./drivers/gpu/drm/radeon/radeon_clocks.o \
./drivers/gpu/drm/radeon/radeon_combios.o \
./drivers/gpu/drm/radeon/radeon_connectors.o \
./drivers/gpu/drm/radeon/radeon_cp.o \
./drivers/gpu/drm/radeon/radeon_cs.o \
./drivers/gpu/drm/radeon/radeon_cursor.o \
./drivers/gpu/drm/radeon/radeon_device.o \
./drivers/gpu/drm/radeon/radeon_display.o \
./drivers/gpu/drm/radeon/radeon_drv.o \
./drivers/gpu/drm/radeon/radeon_encoders.o \
./drivers/gpu/drm/radeon/radeon_fb.o \
./drivers/gpu/drm/radeon/radeon_fence.o \
./drivers/gpu/drm/radeon/radeon_gart.o \
./drivers/gpu/drm/radeon/radeon_gem.o \
./drivers/gpu/drm/radeon/radeon_i2c.o \
./drivers/gpu/drm/radeon/radeon_ioc32.o \
./drivers/gpu/drm/radeon/radeon_irq.o \
./drivers/gpu/drm/radeon/radeon_irq_kms.o \
./drivers/gpu/drm/radeon/radeon_kms.o \
./drivers/gpu/drm/radeon/radeon_legacy_crtc.o \
./drivers/gpu/drm/radeon/radeon_legacy_encoders.o \
./drivers/gpu/drm/radeon/radeon_legacy_tv.o \
./drivers/gpu/drm/radeon/radeon_mem.o \
./drivers/gpu/drm/radeon/radeon_object.o \
./drivers/gpu/drm/radeon/radeon_pm.o \
./drivers/gpu/drm/radeon/radeon_ring.o \
./drivers/gpu/drm/radeon/radeon_sa.o \
./drivers/gpu/drm/radeon/radeon_semaphore.o \
./drivers/gpu/drm/radeon/radeon_state.o \
./drivers/gpu/drm/radeon/radeon_test.o \
./drivers/gpu/drm/radeon/radeon_trace_points.o \
./drivers/gpu/drm/radeon/radeon_ttm.o \
./drivers/gpu/drm/radeon/rs400.o \
./drivers/gpu/drm/radeon/rs600.o \
./drivers/gpu/drm/radeon/rs690.o \
./drivers/gpu/drm/radeon/rv515.o \
./drivers/gpu/drm/radeon/rv770.o \
./drivers/gpu/drm/radeon/si.o \
./drivers/gpu/drm/radeon/si_blit_shaders.o 

C_DEPS += \
./drivers/gpu/drm/radeon/atom.d \
./drivers/gpu/drm/radeon/atombios_crtc.d \
./drivers/gpu/drm/radeon/atombios_dp.d \
./drivers/gpu/drm/radeon/atombios_encoders.d \
./drivers/gpu/drm/radeon/atombios_i2c.d \
./drivers/gpu/drm/radeon/cayman_blit_shaders.d \
./drivers/gpu/drm/radeon/evergreen.d \
./drivers/gpu/drm/radeon/evergreen_blit_kms.d \
./drivers/gpu/drm/radeon/evergreen_blit_shaders.d \
./drivers/gpu/drm/radeon/evergreen_cs.d \
./drivers/gpu/drm/radeon/mkregtable.d \
./drivers/gpu/drm/radeon/ni.d \
./drivers/gpu/drm/radeon/r100.d \
./drivers/gpu/drm/radeon/r200.d \
./drivers/gpu/drm/radeon/r300.d \
./drivers/gpu/drm/radeon/r300_cmdbuf.d \
./drivers/gpu/drm/radeon/r420.d \
./drivers/gpu/drm/radeon/r520.d \
./drivers/gpu/drm/radeon/r600.d \
./drivers/gpu/drm/radeon/r600_audio.d \
./drivers/gpu/drm/radeon/r600_blit.d \
./drivers/gpu/drm/radeon/r600_blit_kms.d \
./drivers/gpu/drm/radeon/r600_blit_shaders.d \
./drivers/gpu/drm/radeon/r600_cp.d \
./drivers/gpu/drm/radeon/r600_cs.d \
./drivers/gpu/drm/radeon/r600_hdmi.d \
./drivers/gpu/drm/radeon/radeon_acpi.d \
./drivers/gpu/drm/radeon/radeon_agp.d \
./drivers/gpu/drm/radeon/radeon_asic.d \
./drivers/gpu/drm/radeon/radeon_atombios.d \
./drivers/gpu/drm/radeon/radeon_atpx_handler.d \
./drivers/gpu/drm/radeon/radeon_benchmark.d \
./drivers/gpu/drm/radeon/radeon_bios.d \
./drivers/gpu/drm/radeon/radeon_clocks.d \
./drivers/gpu/drm/radeon/radeon_combios.d \
./drivers/gpu/drm/radeon/radeon_connectors.d \
./drivers/gpu/drm/radeon/radeon_cp.d \
./drivers/gpu/drm/radeon/radeon_cs.d \
./drivers/gpu/drm/radeon/radeon_cursor.d \
./drivers/gpu/drm/radeon/radeon_device.d \
./drivers/gpu/drm/radeon/radeon_display.d \
./drivers/gpu/drm/radeon/radeon_drv.d \
./drivers/gpu/drm/radeon/radeon_encoders.d \
./drivers/gpu/drm/radeon/radeon_fb.d \
./drivers/gpu/drm/radeon/radeon_fence.d \
./drivers/gpu/drm/radeon/radeon_gart.d \
./drivers/gpu/drm/radeon/radeon_gem.d \
./drivers/gpu/drm/radeon/radeon_i2c.d \
./drivers/gpu/drm/radeon/radeon_ioc32.d \
./drivers/gpu/drm/radeon/radeon_irq.d \
./drivers/gpu/drm/radeon/radeon_irq_kms.d \
./drivers/gpu/drm/radeon/radeon_kms.d \
./drivers/gpu/drm/radeon/radeon_legacy_crtc.d \
./drivers/gpu/drm/radeon/radeon_legacy_encoders.d \
./drivers/gpu/drm/radeon/radeon_legacy_tv.d \
./drivers/gpu/drm/radeon/radeon_mem.d \
./drivers/gpu/drm/radeon/radeon_object.d \
./drivers/gpu/drm/radeon/radeon_pm.d \
./drivers/gpu/drm/radeon/radeon_ring.d \
./drivers/gpu/drm/radeon/radeon_sa.d \
./drivers/gpu/drm/radeon/radeon_semaphore.d \
./drivers/gpu/drm/radeon/radeon_state.d \
./drivers/gpu/drm/radeon/radeon_test.d \
./drivers/gpu/drm/radeon/radeon_trace_points.d \
./drivers/gpu/drm/radeon/radeon_ttm.d \
./drivers/gpu/drm/radeon/rs400.d \
./drivers/gpu/drm/radeon/rs600.d \
./drivers/gpu/drm/radeon/rs690.d \
./drivers/gpu/drm/radeon/rv515.d \
./drivers/gpu/drm/radeon/rv770.d \
./drivers/gpu/drm/radeon/si.d \
./drivers/gpu/drm/radeon/si_blit_shaders.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/gpu/drm/radeon/%.o: ../drivers/gpu/drm/radeon/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


