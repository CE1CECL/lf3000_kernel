################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tools/perf/util/gtk/browser.c 

OBJS += \
./tools/perf/util/gtk/browser.o 

C_DEPS += \
./tools/perf/util/gtk/browser.d 


# Each subdirectory must supply rules for building sources it contributes
tools/perf/util/gtk/%.o: ../tools/perf/util/gtk/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


