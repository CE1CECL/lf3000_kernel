################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tools/perf/util/scripting-engines/trace-event-perl.c \
../tools/perf/util/scripting-engines/trace-event-python.c 

OBJS += \
./tools/perf/util/scripting-engines/trace-event-perl.o \
./tools/perf/util/scripting-engines/trace-event-python.o 

C_DEPS += \
./tools/perf/util/scripting-engines/trace-event-perl.d \
./tools/perf/util/scripting-engines/trace-event-python.d 


# Each subdirectory must supply rules for building sources it contributes
tools/perf/util/scripting-engines/%.o: ../tools/perf/util/scripting-engines/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


