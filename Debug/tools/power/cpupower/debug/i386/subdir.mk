################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tools/power/cpupower/debug/i386/centrino-decode.c \
../tools/power/cpupower/debug/i386/dump_psb.c \
../tools/power/cpupower/debug/i386/intel_gsic.c \
../tools/power/cpupower/debug/i386/powernow-k8-decode.c 

OBJS += \
./tools/power/cpupower/debug/i386/centrino-decode.o \
./tools/power/cpupower/debug/i386/dump_psb.o \
./tools/power/cpupower/debug/i386/intel_gsic.o \
./tools/power/cpupower/debug/i386/powernow-k8-decode.o 

C_DEPS += \
./tools/power/cpupower/debug/i386/centrino-decode.d \
./tools/power/cpupower/debug/i386/dump_psb.d \
./tools/power/cpupower/debug/i386/intel_gsic.d \
./tools/power/cpupower/debug/i386/powernow-k8-decode.d 


# Each subdirectory must supply rules for building sources it contributes
tools/power/cpupower/debug/i386/%.o: ../tools/power/cpupower/debug/i386/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


