################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../net/packet/af_packet.o \
../net/packet/built-in.o 

C_SRCS += \
../net/packet/af_packet.c 

OBJS += \
./net/packet/af_packet.o 

C_DEPS += \
./net/packet/af_packet.d 


# Each subdirectory must supply rules for building sources it contributes
net/packet/%.o: ../net/packet/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


