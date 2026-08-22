################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../security/integrity/digsig.c \
../security/integrity/iint.c 

OBJS += \
./security/integrity/digsig.o \
./security/integrity/iint.o 

C_DEPS += \
./security/integrity/digsig.d \
./security/integrity/iint.d 


# Each subdirectory must supply rules for building sources it contributes
security/integrity/%.o: ../security/integrity/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


