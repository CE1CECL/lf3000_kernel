################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Documentation/watchdog/src/watchdog-simple.c \
../Documentation/watchdog/src/watchdog-test.c 

OBJS += \
./Documentation/watchdog/src/watchdog-simple.o \
./Documentation/watchdog/src/watchdog-test.o 

C_DEPS += \
./Documentation/watchdog/src/watchdog-simple.d \
./Documentation/watchdog/src/watchdog-test.d 


# Each subdirectory must supply rules for building sources it contributes
Documentation/watchdog/src/%.o: ../Documentation/watchdog/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


