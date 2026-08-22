################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/bluetooth/bnep/core.c \
../net/bluetooth/bnep/netdev.c \
../net/bluetooth/bnep/sock.c 

OBJS += \
./net/bluetooth/bnep/core.o \
./net/bluetooth/bnep/netdev.o \
./net/bluetooth/bnep/sock.o 

C_DEPS += \
./net/bluetooth/bnep/core.d \
./net/bluetooth/bnep/netdev.d \
./net/bluetooth/bnep/sock.d 


# Each subdirectory must supply rules for building sources it contributes
net/bluetooth/bnep/%.o: ../net/bluetooth/bnep/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


