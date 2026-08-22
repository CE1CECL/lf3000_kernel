################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/tty/serial/cpm_uart/cpm_uart_core.c \
../drivers/tty/serial/cpm_uart/cpm_uart_cpm1.c \
../drivers/tty/serial/cpm_uart/cpm_uart_cpm2.c 

OBJS += \
./drivers/tty/serial/cpm_uart/cpm_uart_core.o \
./drivers/tty/serial/cpm_uart/cpm_uart_cpm1.o \
./drivers/tty/serial/cpm_uart/cpm_uart_cpm2.o 

C_DEPS += \
./drivers/tty/serial/cpm_uart/cpm_uart_core.d \
./drivers/tty/serial/cpm_uart/cpm_uart_cpm1.d \
./drivers/tty/serial/cpm_uart/cpm_uart_cpm2.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/tty/serial/cpm_uart/%.o: ../drivers/tty/serial/cpm_uart/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


