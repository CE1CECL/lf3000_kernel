################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/gpu/arm/t6xx/kbase/osk/src/linux/mali_osk_debug.c \
../drivers/gpu/arm/t6xx/kbase/osk/src/linux/mali_osk_timers.c 

OBJS += \
./drivers/gpu/arm/t6xx/kbase/osk/src/linux/mali_osk_debug.o \
./drivers/gpu/arm/t6xx/kbase/osk/src/linux/mali_osk_timers.o 

C_DEPS += \
./drivers/gpu/arm/t6xx/kbase/osk/src/linux/mali_osk_debug.d \
./drivers/gpu/arm/t6xx/kbase/osk/src/linux/mali_osk_timers.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/gpu/arm/t6xx/kbase/osk/src/linux/%.o: ../drivers/gpu/arm/t6xx/kbase/osk/src/linux/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


