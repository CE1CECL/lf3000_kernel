################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fs/qnx4/bitmap.c \
../fs/qnx4/dir.c \
../fs/qnx4/inode.c \
../fs/qnx4/namei.c 

OBJS += \
./fs/qnx4/bitmap.o \
./fs/qnx4/dir.o \
./fs/qnx4/inode.o \
./fs/qnx4/namei.o 

C_DEPS += \
./fs/qnx4/bitmap.d \
./fs/qnx4/dir.d \
./fs/qnx4/inode.d \
./fs/qnx4/namei.d 


# Each subdirectory must supply rules for building sources it contributes
fs/qnx4/%.o: ../fs/qnx4/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


