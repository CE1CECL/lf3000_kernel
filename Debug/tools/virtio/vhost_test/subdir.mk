################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tools/virtio/vhost_test/vhost_test.c 

OBJS += \
./tools/virtio/vhost_test/vhost_test.o 

C_DEPS += \
./tools/virtio/vhost_test/vhost_test.d 


# Each subdirectory must supply rules for building sources it contributes
tools/virtio/vhost_test/%.o: ../tools/virtio/vhost_test/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


