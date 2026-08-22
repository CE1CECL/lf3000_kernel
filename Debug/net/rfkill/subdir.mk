################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/rfkill/core.c \
../net/rfkill/input.c \
../net/rfkill/rfkill-gpio.c \
../net/rfkill/rfkill-regulator.c 

OBJS += \
./net/rfkill/core.o \
./net/rfkill/input.o \
./net/rfkill/rfkill-gpio.o \
./net/rfkill/rfkill-regulator.o 

C_DEPS += \
./net/rfkill/core.d \
./net/rfkill/input.d \
./net/rfkill/rfkill-gpio.d \
./net/rfkill/rfkill-regulator.d 


# Each subdirectory must supply rules for building sources it contributes
net/rfkill/%.o: ../net/rfkill/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


