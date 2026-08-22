################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tools/vm/page-types.c \
../tools/vm/slabinfo.c 

OBJS += \
./tools/vm/page-types.o \
./tools/vm/slabinfo.o 

C_DEPS += \
./tools/vm/page-types.d \
./tools/vm/slabinfo.d 


# Each subdirectory must supply rules for building sources it contributes
tools/vm/%.o: ../tools/vm/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


