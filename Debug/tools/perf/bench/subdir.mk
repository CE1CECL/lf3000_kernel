################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tools/perf/bench/mem-memcpy.c \
../tools/perf/bench/mem-memset.c \
../tools/perf/bench/sched-messaging.c \
../tools/perf/bench/sched-pipe.c 

S_UPPER_SRCS += \
../tools/perf/bench/mem-memcpy-x86-64-asm.S \
../tools/perf/bench/mem-memset-x86-64-asm.S 

OBJS += \
./tools/perf/bench/mem-memcpy-x86-64-asm.o \
./tools/perf/bench/mem-memcpy.o \
./tools/perf/bench/mem-memset-x86-64-asm.o \
./tools/perf/bench/mem-memset.o \
./tools/perf/bench/sched-messaging.o \
./tools/perf/bench/sched-pipe.o 

C_DEPS += \
./tools/perf/bench/mem-memcpy.d \
./tools/perf/bench/mem-memset.d \
./tools/perf/bench/sched-messaging.d \
./tools/perf/bench/sched-pipe.d 

S_UPPER_DEPS += \
./tools/perf/bench/mem-memcpy-x86-64-asm.d \
./tools/perf/bench/mem-memset-x86-64-asm.d 


# Each subdirectory must supply rules for building sources it contributes
tools/perf/bench/%.o: ../tools/perf/bench/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC Assembler'
	arm-elf-gcc -x assembler-with-cpp -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

tools/perf/bench/%.o: ../tools/perf/bench/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


