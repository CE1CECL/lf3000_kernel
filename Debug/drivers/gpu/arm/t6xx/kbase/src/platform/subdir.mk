################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/gpu/arm/t6xx/kbase/src/platform/mali_kbase_dvfs.c \
../drivers/gpu/arm/t6xx/kbase/src/platform/mali_kbase_platform.c 

OBJS += \
./drivers/gpu/arm/t6xx/kbase/src/platform/mali_kbase_dvfs.o \
./drivers/gpu/arm/t6xx/kbase/src/platform/mali_kbase_platform.o 

C_DEPS += \
./drivers/gpu/arm/t6xx/kbase/src/platform/mali_kbase_dvfs.d \
./drivers/gpu/arm/t6xx/kbase/src/platform/mali_kbase_platform.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/gpu/arm/t6xx/kbase/src/platform/%.o: ../drivers/gpu/arm/t6xx/kbase/src/platform/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


