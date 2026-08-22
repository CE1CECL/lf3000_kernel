################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tools/perf/util/ui/browsers/annotate.c \
../tools/perf/util/ui/browsers/hists.c \
../tools/perf/util/ui/browsers/map.c 

OBJS += \
./tools/perf/util/ui/browsers/annotate.o \
./tools/perf/util/ui/browsers/hists.o \
./tools/perf/util/ui/browsers/map.o 

C_DEPS += \
./tools/perf/util/ui/browsers/annotate.d \
./tools/perf/util/ui/browsers/hists.d \
./tools/perf/util/ui/browsers/map.d 


# Each subdirectory must supply rules for building sources it contributes
tools/perf/util/ui/browsers/%.o: ../tools/perf/util/ui/browsers/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


