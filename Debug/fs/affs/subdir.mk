################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fs/affs/amigaffs.c \
../fs/affs/bitmap.c \
../fs/affs/dir.c \
../fs/affs/file.c \
../fs/affs/inode.c \
../fs/affs/namei.c \
../fs/affs/super.c \
../fs/affs/symlink.c 

OBJS += \
./fs/affs/amigaffs.o \
./fs/affs/bitmap.o \
./fs/affs/dir.o \
./fs/affs/file.o \
./fs/affs/inode.o \
./fs/affs/namei.o \
./fs/affs/super.o \
./fs/affs/symlink.o 

C_DEPS += \
./fs/affs/amigaffs.d \
./fs/affs/bitmap.d \
./fs/affs/dir.d \
./fs/affs/file.d \
./fs/affs/inode.d \
./fs/affs/namei.d \
./fs/affs/super.d \
./fs/affs/symlink.d 


# Each subdirectory must supply rules for building sources it contributes
fs/affs/%.o: ../fs/affs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


