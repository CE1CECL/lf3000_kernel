################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Documentation/cgroups/cgroup_event_listener.c 

OBJS += \
./Documentation/cgroups/cgroup_event_listener.o 

C_DEPS += \
./Documentation/cgroups/cgroup_event_listener.d 


# Each subdirectory must supply rules for building sources it contributes
Documentation/cgroups/%.o: ../Documentation/cgroups/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


