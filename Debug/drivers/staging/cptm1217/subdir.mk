################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/cptm1217/clearpad_tm1217.c 

OBJS += \
./drivers/staging/cptm1217/clearpad_tm1217.o 

C_DEPS += \
./drivers/staging/cptm1217/clearpad_tm1217.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/cptm1217/%.o: ../drivers/staging/cptm1217/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


