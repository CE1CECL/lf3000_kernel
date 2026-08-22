################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tools/power/cpupower/utils/idle_monitor/amd_fam14h_idle.c \
../tools/power/cpupower/utils/idle_monitor/cpuidle_sysfs.c \
../tools/power/cpupower/utils/idle_monitor/cpupower-monitor.c \
../tools/power/cpupower/utils/idle_monitor/mperf_monitor.c \
../tools/power/cpupower/utils/idle_monitor/nhm_idle.c \
../tools/power/cpupower/utils/idle_monitor/snb_idle.c 

OBJS += \
./tools/power/cpupower/utils/idle_monitor/amd_fam14h_idle.o \
./tools/power/cpupower/utils/idle_monitor/cpuidle_sysfs.o \
./tools/power/cpupower/utils/idle_monitor/cpupower-monitor.o \
./tools/power/cpupower/utils/idle_monitor/mperf_monitor.o \
./tools/power/cpupower/utils/idle_monitor/nhm_idle.o \
./tools/power/cpupower/utils/idle_monitor/snb_idle.o 

C_DEPS += \
./tools/power/cpupower/utils/idle_monitor/amd_fam14h_idle.d \
./tools/power/cpupower/utils/idle_monitor/cpuidle_sysfs.d \
./tools/power/cpupower/utils/idle_monitor/cpupower-monitor.d \
./tools/power/cpupower/utils/idle_monitor/mperf_monitor.d \
./tools/power/cpupower/utils/idle_monitor/nhm_idle.d \
./tools/power/cpupower/utils/idle_monitor/snb_idle.d 


# Each subdirectory must supply rules for building sources it contributes
tools/power/cpupower/utils/idle_monitor/%.o: ../tools/power/cpupower/utils/idle_monitor/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


