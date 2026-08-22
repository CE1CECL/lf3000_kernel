################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../samples/kprobes/jprobe_example.c \
../samples/kprobes/kprobe_example.c \
../samples/kprobes/kretprobe_example.c 

OBJS += \
./samples/kprobes/jprobe_example.o \
./samples/kprobes/kprobe_example.o \
./samples/kprobes/kretprobe_example.o 

C_DEPS += \
./samples/kprobes/jprobe_example.d \
./samples/kprobes/kprobe_example.d \
./samples/kprobes/kretprobe_example.d 


# Each subdirectory must supply rules for building sources it contributes
samples/kprobes/%.o: ../samples/kprobes/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


