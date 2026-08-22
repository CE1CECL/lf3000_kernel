################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tools/perf/arch/sh/util/dwarf-regs.c 

OBJS += \
./tools/perf/arch/sh/util/dwarf-regs.o 

C_DEPS += \
./tools/perf/arch/sh/util/dwarf-regs.d 


# Each subdirectory must supply rules for building sources it contributes
tools/perf/arch/sh/util/%.o: ../tools/perf/arch/sh/util/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


