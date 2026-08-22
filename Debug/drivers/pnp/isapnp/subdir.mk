################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/pnp/isapnp/compat.c \
../drivers/pnp/isapnp/core.c \
../drivers/pnp/isapnp/proc.c 

OBJS += \
./drivers/pnp/isapnp/compat.o \
./drivers/pnp/isapnp/core.o \
./drivers/pnp/isapnp/proc.o 

C_DEPS += \
./drivers/pnp/isapnp/compat.d \
./drivers/pnp/isapnp/core.d \
./drivers/pnp/isapnp/proc.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/pnp/isapnp/%.o: ../drivers/pnp/isapnp/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


