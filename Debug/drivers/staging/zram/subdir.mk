################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/zram/zram_drv.c \
../drivers/staging/zram/zram_sysfs.c 

OBJS += \
./drivers/staging/zram/zram_drv.o \
./drivers/staging/zram/zram_sysfs.o 

C_DEPS += \
./drivers/staging/zram/zram_drv.d \
./drivers/staging/zram/zram_sysfs.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/zram/%.o: ../drivers/staging/zram/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


