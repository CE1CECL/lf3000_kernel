################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/gpu/arm/t6xx/kbase/src/linux/config/tpip/mali_kbase_config_exynos5.c 

OBJS += \
./drivers/gpu/arm/t6xx/kbase/src/linux/config/tpip/mali_kbase_config_exynos5.o 

C_DEPS += \
./drivers/gpu/arm/t6xx/kbase/src/linux/config/tpip/mali_kbase_config_exynos5.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/gpu/arm/t6xx/kbase/src/linux/config/tpip/%.o: ../drivers/gpu/arm/t6xx/kbase/src/linux/config/tpip/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


