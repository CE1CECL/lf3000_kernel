################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/connector/cn_proc.c \
../drivers/connector/cn_queue.c \
../drivers/connector/connector.c 

OBJS += \
./drivers/connector/cn_proc.o \
./drivers/connector/cn_queue.o \
./drivers/connector/connector.o 

C_DEPS += \
./drivers/connector/cn_proc.d \
./drivers/connector/cn_queue.d \
./drivers/connector/connector.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/connector/%.o: ../drivers/connector/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


