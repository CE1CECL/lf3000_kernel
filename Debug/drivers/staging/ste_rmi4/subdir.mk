################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/ste_rmi4/board-mop500-u8500uib-rmi4.c \
../drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c 

OBJS += \
./drivers/staging/ste_rmi4/board-mop500-u8500uib-rmi4.o \
./drivers/staging/ste_rmi4/synaptics_i2c_rmi4.o 

C_DEPS += \
./drivers/staging/ste_rmi4/board-mop500-u8500uib-rmi4.d \
./drivers/staging/ste_rmi4/synaptics_i2c_rmi4.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/ste_rmi4/%.o: ../drivers/staging/ste_rmi4/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


