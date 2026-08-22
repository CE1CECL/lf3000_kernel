################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../net/ethernet/built-in.o \
../net/ethernet/eth.o 

C_SRCS += \
../net/ethernet/eth.c \
../net/ethernet/pe2.c 

OBJS += \
./net/ethernet/eth.o \
./net/ethernet/pe2.o 

C_DEPS += \
./net/ethernet/eth.d \
./net/ethernet/pe2.d 


# Each subdirectory must supply rules for building sources it contributes
net/ethernet/%.o: ../net/ethernet/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


