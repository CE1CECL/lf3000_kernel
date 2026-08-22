################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../fs/devpts/built-in.o \
../fs/devpts/devpts.o \
../fs/devpts/inode.o 

C_SRCS += \
../fs/devpts/inode.c 

OBJS += \
./fs/devpts/inode.o 

C_DEPS += \
./fs/devpts/inode.d 


# Each subdirectory must supply rules for building sources it contributes
fs/devpts/%.o: ../fs/devpts/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


