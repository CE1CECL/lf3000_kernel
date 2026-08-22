################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Documentation/vDSO/parse_vdso.c \
../Documentation/vDSO/vdso_test.c 

OBJS += \
./Documentation/vDSO/parse_vdso.o \
./Documentation/vDSO/vdso_test.o 

C_DEPS += \
./Documentation/vDSO/parse_vdso.d \
./Documentation/vDSO/vdso_test.d 


# Each subdirectory must supply rules for building sources it contributes
Documentation/vDSO/%.o: ../Documentation/vDSO/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


