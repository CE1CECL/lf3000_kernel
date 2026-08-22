################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/pnp/pnpacpi/core.c \
../drivers/pnp/pnpacpi/rsparser.c 

OBJS += \
./drivers/pnp/pnpacpi/core.o \
./drivers/pnp/pnpacpi/rsparser.o 

C_DEPS += \
./drivers/pnp/pnpacpi/core.d \
./drivers/pnp/pnpacpi/rsparser.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/pnp/pnpacpi/%.o: ../drivers/pnp/pnpacpi/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


