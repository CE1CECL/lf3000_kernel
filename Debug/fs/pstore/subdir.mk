################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fs/pstore/inode.c \
../fs/pstore/platform.c 

OBJS += \
./fs/pstore/inode.o \
./fs/pstore/platform.o 

C_DEPS += \
./fs/pstore/inode.d \
./fs/pstore/platform.d 


# Each subdirectory must supply rules for building sources it contributes
fs/pstore/%.o: ../fs/pstore/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


