################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/tty/ipwireless/built-in.o 

C_SRCS += \
../drivers/tty/ipwireless/hardware.c \
../drivers/tty/ipwireless/main.c \
../drivers/tty/ipwireless/network.c \
../drivers/tty/ipwireless/tty.c 

OBJS += \
./drivers/tty/ipwireless/hardware.o \
./drivers/tty/ipwireless/main.o \
./drivers/tty/ipwireless/network.o \
./drivers/tty/ipwireless/tty.o 

C_DEPS += \
./drivers/tty/ipwireless/hardware.d \
./drivers/tty/ipwireless/main.d \
./drivers/tty/ipwireless/network.d \
./drivers/tty/ipwireless/tty.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/tty/ipwireless/%.o: ../drivers/tty/ipwireless/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


