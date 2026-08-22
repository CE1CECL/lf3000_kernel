################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/iommu/amd_iommu.c \
../drivers/iommu/amd_iommu_init.c \
../drivers/iommu/amd_iommu_v2.c \
../drivers/iommu/dmar.c \
../drivers/iommu/exynos-iommu.c \
../drivers/iommu/exynos-iovmm.c \
../drivers/iommu/intel-iommu.c \
../drivers/iommu/intr_remapping.c \
../drivers/iommu/iommu.c \
../drivers/iommu/iova.c \
../drivers/iommu/msm_iommu.c \
../drivers/iommu/msm_iommu_dev.c \
../drivers/iommu/omap-iommu-debug.c \
../drivers/iommu/omap-iommu.c \
../drivers/iommu/omap-iovmm.c \
../drivers/iommu/tegra-gart.c \
../drivers/iommu/tegra-smmu.c 

OBJS += \
./drivers/iommu/amd_iommu.o \
./drivers/iommu/amd_iommu_init.o \
./drivers/iommu/amd_iommu_v2.o \
./drivers/iommu/dmar.o \
./drivers/iommu/exynos-iommu.o \
./drivers/iommu/exynos-iovmm.o \
./drivers/iommu/intel-iommu.o \
./drivers/iommu/intr_remapping.o \
./drivers/iommu/iommu.o \
./drivers/iommu/iova.o \
./drivers/iommu/msm_iommu.o \
./drivers/iommu/msm_iommu_dev.o \
./drivers/iommu/omap-iommu-debug.o \
./drivers/iommu/omap-iommu.o \
./drivers/iommu/omap-iovmm.o \
./drivers/iommu/tegra-gart.o \
./drivers/iommu/tegra-smmu.o 

C_DEPS += \
./drivers/iommu/amd_iommu.d \
./drivers/iommu/amd_iommu_init.d \
./drivers/iommu/amd_iommu_v2.d \
./drivers/iommu/dmar.d \
./drivers/iommu/exynos-iommu.d \
./drivers/iommu/exynos-iovmm.d \
./drivers/iommu/intel-iommu.d \
./drivers/iommu/intr_remapping.d \
./drivers/iommu/iommu.d \
./drivers/iommu/iova.d \
./drivers/iommu/msm_iommu.d \
./drivers/iommu/msm_iommu_dev.d \
./drivers/iommu/omap-iommu-debug.d \
./drivers/iommu/omap-iommu.d \
./drivers/iommu/omap-iovmm.d \
./drivers/iommu/tegra-gart.d \
./drivers/iommu/tegra-smmu.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/iommu/%.o: ../drivers/iommu/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


