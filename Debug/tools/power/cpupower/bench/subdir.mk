################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tools/power/cpupower/bench/benchmark.c \
../tools/power/cpupower/bench/main.c \
../tools/power/cpupower/bench/parse.c \
../tools/power/cpupower/bench/system.c 

OBJS += \
./tools/power/cpupower/bench/benchmark.o \
./tools/power/cpupower/bench/main.o \
./tools/power/cpupower/bench/parse.o \
./tools/power/cpupower/bench/system.o 

C_DEPS += \
./tools/power/cpupower/bench/benchmark.d \
./tools/power/cpupower/bench/main.d \
./tools/power/cpupower/bench/parse.d \
./tools/power/cpupower/bench/system.d 


# Each subdirectory must supply rules for building sources it contributes
tools/power/cpupower/bench/%.o: ../tools/power/cpupower/bench/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


