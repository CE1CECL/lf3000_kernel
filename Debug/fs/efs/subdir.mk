################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fs/efs/dir.c \
../fs/efs/file.c \
../fs/efs/inode.c \
../fs/efs/namei.c \
../fs/efs/super.c \
../fs/efs/symlink.c 

OBJS += \
./fs/efs/dir.o \
./fs/efs/file.o \
./fs/efs/inode.o \
./fs/efs/namei.o \
./fs/efs/super.o \
./fs/efs/symlink.o 

C_DEPS += \
./fs/efs/dir.d \
./fs/efs/file.d \
./fs/efs/inode.d \
./fs/efs/namei.d \
./fs/efs/super.d \
./fs/efs/symlink.d 


# Each subdirectory must supply rules for building sources it contributes
fs/efs/%.o: ../fs/efs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


