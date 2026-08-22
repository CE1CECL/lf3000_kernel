################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tools/perf/scripts/perl/Perf-Trace-Util/Context.c 

OBJS += \
./tools/perf/scripts/perl/Perf-Trace-Util/Context.o 

C_DEPS += \
./tools/perf/scripts/perl/Perf-Trace-Util/Context.d 


# Each subdirectory must supply rules for building sources it contributes
tools/perf/scripts/perl/Perf-Trace-Util/%.o: ../tools/perf/scripts/perl/Perf-Trace-Util/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


