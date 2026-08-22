################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/gpu/arm/t6xx/kbase/src/linux/mali_kbase_config_linux.c \
../drivers/gpu/arm/t6xx/kbase/src/linux/mali_kbase_core_linux.c \
../drivers/gpu/arm/t6xx/kbase/src/linux/mali_kbase_mem_linux.c \
../drivers/gpu/arm/t6xx/kbase/src/linux/mali_kbase_sync.c \
../drivers/gpu/arm/t6xx/kbase/src/linux/mali_kbase_sync_user.c \
../drivers/gpu/arm/t6xx/kbase/src/linux/mali_kbase_ukk_os.c 

OBJS += \
./drivers/gpu/arm/t6xx/kbase/src/linux/mali_kbase_config_linux.o \
./drivers/gpu/arm/t6xx/kbase/src/linux/mali_kbase_core_linux.o \
./drivers/gpu/arm/t6xx/kbase/src/linux/mali_kbase_mem_linux.o \
./drivers/gpu/arm/t6xx/kbase/src/linux/mali_kbase_sync.o \
./drivers/gpu/arm/t6xx/kbase/src/linux/mali_kbase_sync_user.o \
./drivers/gpu/arm/t6xx/kbase/src/linux/mali_kbase_ukk_os.o 

C_DEPS += \
./drivers/gpu/arm/t6xx/kbase/src/linux/mali_kbase_config_linux.d \
./drivers/gpu/arm/t6xx/kbase/src/linux/mali_kbase_core_linux.d \
./drivers/gpu/arm/t6xx/kbase/src/linux/mali_kbase_mem_linux.d \
./drivers/gpu/arm/t6xx/kbase/src/linux/mali_kbase_sync.d \
./drivers/gpu/arm/t6xx/kbase/src/linux/mali_kbase_sync_user.d \
./drivers/gpu/arm/t6xx/kbase/src/linux/mali_kbase_ukk_os.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/gpu/arm/t6xx/kbase/src/linux/%.o: ../drivers/gpu/arm/t6xx/kbase/src/linux/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


