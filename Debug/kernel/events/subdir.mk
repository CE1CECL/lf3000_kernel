################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../kernel/events/callchain.c \
../kernel/events/core.c \
../kernel/events/hw_breakpoint.c \
../kernel/events/ring_buffer.c 

OBJS += \
./kernel/events/callchain.o \
./kernel/events/core.o \
./kernel/events/hw_breakpoint.o \
./kernel/events/ring_buffer.o 

C_DEPS += \
./kernel/events/callchain.d \
./kernel/events/core.d \
./kernel/events/hw_breakpoint.d \
./kernel/events/ring_buffer.d 


# Each subdirectory must supply rules for building sources it contributes
kernel/events/%.o: ../kernel/events/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


