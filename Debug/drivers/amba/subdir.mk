################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/amba/built-in.o \
../drivers/amba/bus.o 

C_SRCS += \
../drivers/amba/bus.c 

OBJS += \
./drivers/amba/bus.o 

C_DEPS += \
./drivers/amba/bus.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/amba/%.o: ../drivers/amba/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


