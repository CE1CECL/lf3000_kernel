################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tools/power/cpupower/utils/helpers/amd.c \
../tools/power/cpupower/utils/helpers/bitmask.c \
../tools/power/cpupower/utils/helpers/cpuid.c \
../tools/power/cpupower/utils/helpers/misc.c \
../tools/power/cpupower/utils/helpers/msr.c \
../tools/power/cpupower/utils/helpers/pci.c \
../tools/power/cpupower/utils/helpers/sysfs.c \
../tools/power/cpupower/utils/helpers/topology.c 

OBJS += \
./tools/power/cpupower/utils/helpers/amd.o \
./tools/power/cpupower/utils/helpers/bitmask.o \
./tools/power/cpupower/utils/helpers/cpuid.o \
./tools/power/cpupower/utils/helpers/misc.o \
./tools/power/cpupower/utils/helpers/msr.o \
./tools/power/cpupower/utils/helpers/pci.o \
./tools/power/cpupower/utils/helpers/sysfs.o \
./tools/power/cpupower/utils/helpers/topology.o 

C_DEPS += \
./tools/power/cpupower/utils/helpers/amd.d \
./tools/power/cpupower/utils/helpers/bitmask.d \
./tools/power/cpupower/utils/helpers/cpuid.d \
./tools/power/cpupower/utils/helpers/misc.d \
./tools/power/cpupower/utils/helpers/msr.d \
./tools/power/cpupower/utils/helpers/pci.d \
./tools/power/cpupower/utils/helpers/sysfs.d \
./tools/power/cpupower/utils/helpers/topology.d 


# Each subdirectory must supply rules for building sources it contributes
tools/power/cpupower/utils/helpers/%.o: ../tools/power/cpupower/utils/helpers/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


