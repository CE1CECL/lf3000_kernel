################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/sh/clk/core.c \
../drivers/sh/clk/cpg.c 

OBJS += \
./drivers/sh/clk/core.o \
./drivers/sh/clk/cpg.o 

C_DEPS += \
./drivers/sh/clk/core.d \
./drivers/sh/clk/cpg.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/sh/clk/%.o: ../drivers/sh/clk/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


