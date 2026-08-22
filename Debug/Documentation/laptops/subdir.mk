################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Documentation/laptops/dslm.c \
../Documentation/laptops/hpfall.c 

OBJS += \
./Documentation/laptops/dslm.o \
./Documentation/laptops/hpfall.o 

C_DEPS += \
./Documentation/laptops/dslm.d \
./Documentation/laptops/hpfall.d 


# Each subdirectory must supply rules for building sources it contributes
Documentation/laptops/%.o: ../Documentation/laptops/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


