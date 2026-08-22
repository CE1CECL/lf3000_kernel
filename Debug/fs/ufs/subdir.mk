################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fs/ufs/balloc.c \
../fs/ufs/cylinder.c \
../fs/ufs/dir.c \
../fs/ufs/file.c \
../fs/ufs/ialloc.c \
../fs/ufs/inode.c \
../fs/ufs/namei.c \
../fs/ufs/super.c \
../fs/ufs/symlink.c \
../fs/ufs/truncate.c \
../fs/ufs/util.c 

OBJS += \
./fs/ufs/balloc.o \
./fs/ufs/cylinder.o \
./fs/ufs/dir.o \
./fs/ufs/file.o \
./fs/ufs/ialloc.o \
./fs/ufs/inode.o \
./fs/ufs/namei.o \
./fs/ufs/super.o \
./fs/ufs/symlink.o \
./fs/ufs/truncate.o \
./fs/ufs/util.o 

C_DEPS += \
./fs/ufs/balloc.d \
./fs/ufs/cylinder.d \
./fs/ufs/dir.d \
./fs/ufs/file.d \
./fs/ufs/ialloc.d \
./fs/ufs/inode.d \
./fs/ufs/namei.d \
./fs/ufs/super.d \
./fs/ufs/symlink.d \
./fs/ufs/truncate.d \
./fs/ufs/util.d 


# Each subdirectory must supply rules for building sources it contributes
fs/ufs/%.o: ../fs/ufs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


