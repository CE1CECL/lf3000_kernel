################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/hwspinlock/hwspinlock_core.c \
../drivers/hwspinlock/omap_hwspinlock.c \
../drivers/hwspinlock/u8500_hsem.c 

OBJS += \
./drivers/hwspinlock/hwspinlock_core.o \
./drivers/hwspinlock/omap_hwspinlock.o \
./drivers/hwspinlock/u8500_hsem.o 

C_DEPS += \
./drivers/hwspinlock/hwspinlock_core.d \
./drivers/hwspinlock/omap_hwspinlock.d \
./drivers/hwspinlock/u8500_hsem.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/hwspinlock/%.o: ../drivers/hwspinlock/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


