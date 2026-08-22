################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Documentation/auxdisplay/cfag12864b-example.c 

OBJS += \
./Documentation/auxdisplay/cfag12864b-example.o 

C_DEPS += \
./Documentation/auxdisplay/cfag12864b-example.d 


# Each subdirectory must supply rules for building sources it contributes
Documentation/auxdisplay/%.o: ../Documentation/auxdisplay/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


