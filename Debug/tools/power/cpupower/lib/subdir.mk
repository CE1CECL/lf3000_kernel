################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tools/power/cpupower/lib/cpufreq.c \
../tools/power/cpupower/lib/sysfs.c 

OBJS += \
./tools/power/cpupower/lib/cpufreq.o \
./tools/power/cpupower/lib/sysfs.o 

C_DEPS += \
./tools/power/cpupower/lib/cpufreq.d \
./tools/power/cpupower/lib/sysfs.d 


# Each subdirectory must supply rules for building sources it contributes
tools/power/cpupower/lib/%.o: ../tools/power/cpupower/lib/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


