################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Documentation/connector/cn_test.c \
../Documentation/connector/ucon.c 

OBJS += \
./Documentation/connector/cn_test.o \
./Documentation/connector/ucon.o 

C_DEPS += \
./Documentation/connector/cn_test.d \
./Documentation/connector/ucon.d 


# Each subdirectory must supply rules for building sources it contributes
Documentation/connector/%.o: ../Documentation/connector/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


