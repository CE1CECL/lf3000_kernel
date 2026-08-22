################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/drivers/mpu401/mpu401.c \
../sound/drivers/mpu401/mpu401_uart.c 

OBJS += \
./sound/drivers/mpu401/mpu401.o \
./sound/drivers/mpu401/mpu401_uart.o 

C_DEPS += \
./sound/drivers/mpu401/mpu401.d \
./sound/drivers/mpu401/mpu401_uart.d 


# Each subdirectory must supply rules for building sources it contributes
sound/drivers/mpu401/%.o: ../sound/drivers/mpu401/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


