################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/i2c/cs8427.c \
../sound/i2c/i2c.c \
../sound/i2c/tea6330t.c 

OBJS += \
./sound/i2c/cs8427.o \
./sound/i2c/i2c.o \
./sound/i2c/tea6330t.o 

C_DEPS += \
./sound/i2c/cs8427.d \
./sound/i2c/i2c.d \
./sound/i2c/tea6330t.d 


# Each subdirectory must supply rules for building sources it contributes
sound/i2c/%.o: ../sound/i2c/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


