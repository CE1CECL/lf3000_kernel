################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tools/power/cpupower/utils/cpufreq-info.c \
../tools/power/cpupower/utils/cpufreq-set.c \
../tools/power/cpupower/utils/cpuidle-info.c \
../tools/power/cpupower/utils/cpupower-info.c \
../tools/power/cpupower/utils/cpupower-set.c \
../tools/power/cpupower/utils/cpupower.c 

OBJS += \
./tools/power/cpupower/utils/cpufreq-info.o \
./tools/power/cpupower/utils/cpufreq-set.o \
./tools/power/cpupower/utils/cpuidle-info.o \
./tools/power/cpupower/utils/cpupower-info.o \
./tools/power/cpupower/utils/cpupower-set.o \
./tools/power/cpupower/utils/cpupower.o 

C_DEPS += \
./tools/power/cpupower/utils/cpufreq-info.d \
./tools/power/cpupower/utils/cpufreq-set.d \
./tools/power/cpupower/utils/cpuidle-info.d \
./tools/power/cpupower/utils/cpupower-info.d \
./tools/power/cpupower/utils/cpupower-set.d \
./tools/power/cpupower/utils/cpupower.d 


# Each subdirectory must supply rules for building sources it contributes
tools/power/cpupower/utils/%.o: ../tools/power/cpupower/utils/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


