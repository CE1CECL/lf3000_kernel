################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/gpu/arm/t6xx/kbase/src/linux/config/mali_kbase_config_vexpress.c \
../drivers/gpu/arm/t6xx/kbase/src/linux/config/mali_kbase_cpu_vexpress.c 

OBJS += \
./drivers/gpu/arm/t6xx/kbase/src/linux/config/mali_kbase_config_vexpress.o \
./drivers/gpu/arm/t6xx/kbase/src/linux/config/mali_kbase_cpu_vexpress.o 

C_DEPS += \
./drivers/gpu/arm/t6xx/kbase/src/linux/config/mali_kbase_config_vexpress.d \
./drivers/gpu/arm/t6xx/kbase/src/linux/config/mali_kbase_cpu_vexpress.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/gpu/arm/t6xx/kbase/src/linux/config/%.o: ../drivers/gpu/arm/t6xx/kbase/src/linux/config/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


