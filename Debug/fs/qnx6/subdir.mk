################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fs/qnx6/dir.c \
../fs/qnx6/inode.c \
../fs/qnx6/namei.c \
../fs/qnx6/super_mmi.c 

OBJS += \
./fs/qnx6/dir.o \
./fs/qnx6/inode.o \
./fs/qnx6/namei.o \
./fs/qnx6/super_mmi.o 

C_DEPS += \
./fs/qnx6/dir.d \
./fs/qnx6/inode.d \
./fs/qnx6/namei.d \
./fs/qnx6/super_mmi.d 


# Each subdirectory must supply rules for building sources it contributes
fs/qnx6/%.o: ../fs/qnx6/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


