################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/tc/tc-driver.c \
../drivers/tc/tc.c 

OBJS += \
./drivers/tc/tc-driver.o \
./drivers/tc/tc.o 

C_DEPS += \
./drivers/tc/tc-driver.d \
./drivers/tc/tc.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/tc/%.o: ../drivers/tc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


