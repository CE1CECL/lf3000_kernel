################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../samples/rpmsg/rpmsg_client_sample.c 

OBJS += \
./samples/rpmsg/rpmsg_client_sample.o 

C_DEPS += \
./samples/rpmsg/rpmsg_client_sample.d 


# Each subdirectory must supply rules for building sources it contributes
samples/rpmsg/%.o: ../samples/rpmsg/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


