################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../samples/trace_events/trace-events-sample.c 

OBJS += \
./samples/trace_events/trace-events-sample.o 

C_DEPS += \
./samples/trace_events/trace-events-sample.d 


# Each subdirectory must supply rules for building sources it contributes
samples/trace_events/%.o: ../samples/trace_events/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


