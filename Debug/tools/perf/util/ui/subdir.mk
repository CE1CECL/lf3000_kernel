################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tools/perf/util/ui/browser.c \
../tools/perf/util/ui/helpline.c \
../tools/perf/util/ui/progress.c \
../tools/perf/util/ui/setup.c \
../tools/perf/util/ui/util.c 

OBJS += \
./tools/perf/util/ui/browser.o \
./tools/perf/util/ui/helpline.o \
./tools/perf/util/ui/progress.o \
./tools/perf/util/ui/setup.o \
./tools/perf/util/ui/util.o 

C_DEPS += \
./tools/perf/util/ui/browser.d \
./tools/perf/util/ui/helpline.d \
./tools/perf/util/ui/progress.d \
./tools/perf/util/ui/setup.d \
./tools/perf/util/ui/util.d 


# Each subdirectory must supply rules for building sources it contributes
tools/perf/util/ui/%.o: ../tools/perf/util/ui/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


