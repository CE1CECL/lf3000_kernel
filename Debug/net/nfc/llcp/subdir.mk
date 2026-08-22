################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/nfc/llcp/commands.c \
../net/nfc/llcp/llcp.c \
../net/nfc/llcp/sock.c 

OBJS += \
./net/nfc/llcp/commands.o \
./net/nfc/llcp/llcp.o \
./net/nfc/llcp/sock.o 

C_DEPS += \
./net/nfc/llcp/commands.d \
./net/nfc/llcp/llcp.d \
./net/nfc/llcp/sock.d 


# Each subdirectory must supply rules for building sources it contributes
net/nfc/llcp/%.o: ../net/nfc/llcp/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


