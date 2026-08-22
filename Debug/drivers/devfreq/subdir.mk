################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/devfreq/devfreq.c \
../drivers/devfreq/exynos4_bus.c \
../drivers/devfreq/exynos5_bus_int.c \
../drivers/devfreq/exynos5_bus_mif.c \
../drivers/devfreq/exynos5_ppmu.c \
../drivers/devfreq/exynos_ppmu.c \
../drivers/devfreq/governor_performance.c \
../drivers/devfreq/governor_pm_qos.c \
../drivers/devfreq/governor_powersave.c \
../drivers/devfreq/governor_simpleondemand.c \
../drivers/devfreq/governor_userspace.c 

OBJS += \
./drivers/devfreq/devfreq.o \
./drivers/devfreq/exynos4_bus.o \
./drivers/devfreq/exynos5_bus_int.o \
./drivers/devfreq/exynos5_bus_mif.o \
./drivers/devfreq/exynos5_ppmu.o \
./drivers/devfreq/exynos_ppmu.o \
./drivers/devfreq/governor_performance.o \
./drivers/devfreq/governor_pm_qos.o \
./drivers/devfreq/governor_powersave.o \
./drivers/devfreq/governor_simpleondemand.o \
./drivers/devfreq/governor_userspace.o 

C_DEPS += \
./drivers/devfreq/devfreq.d \
./drivers/devfreq/exynos4_bus.d \
./drivers/devfreq/exynos5_bus_int.d \
./drivers/devfreq/exynos5_bus_mif.d \
./drivers/devfreq/exynos5_ppmu.d \
./drivers/devfreq/exynos_ppmu.d \
./drivers/devfreq/governor_performance.d \
./drivers/devfreq/governor_pm_qos.d \
./drivers/devfreq/governor_powersave.d \
./drivers/devfreq/governor_simpleondemand.d \
./drivers/devfreq/governor_userspace.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/devfreq/%.o: ../drivers/devfreq/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


