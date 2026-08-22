################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tools/firewire/decode-fcp.c \
../tools/firewire/nosy-dump.c 

OBJS += \
./tools/firewire/decode-fcp.o \
./tools/firewire/nosy-dump.o 

C_DEPS += \
./tools/firewire/decode-fcp.d \
./tools/firewire/nosy-dump.d 


# Each subdirectory must supply rules for building sources it contributes
tools/firewire/%.o: ../tools/firewire/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


