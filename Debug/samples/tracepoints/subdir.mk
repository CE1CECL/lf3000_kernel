################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../samples/tracepoints/tracepoint-probe-sample.c \
../samples/tracepoints/tracepoint-probe-sample2.c \
../samples/tracepoints/tracepoint-sample.c 

OBJS += \
./samples/tracepoints/tracepoint-probe-sample.o \
./samples/tracepoints/tracepoint-probe-sample2.o \
./samples/tracepoints/tracepoint-sample.o 

C_DEPS += \
./samples/tracepoints/tracepoint-probe-sample.d \
./samples/tracepoints/tracepoint-probe-sample2.d \
./samples/tracepoints/tracepoint-sample.d 


# Each subdirectory must supply rules for building sources it contributes
samples/tracepoints/%.o: ../samples/tracepoints/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


