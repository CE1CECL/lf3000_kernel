################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/thermal/spear_thermal.c \
../drivers/thermal/thermal_sys.c 

OBJS += \
./drivers/thermal/spear_thermal.o \
./drivers/thermal/thermal_sys.o 

C_DEPS += \
./drivers/thermal/spear_thermal.d \
./drivers/thermal/thermal_sys.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/thermal/%.o: ../drivers/thermal/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


