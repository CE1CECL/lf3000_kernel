################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fs/hpfs/alloc.c \
../fs/hpfs/anode.c \
../fs/hpfs/buffer.c \
../fs/hpfs/dentry.c \
../fs/hpfs/dir.c \
../fs/hpfs/dnode.c \
../fs/hpfs/ea.c \
../fs/hpfs/file.c \
../fs/hpfs/inode.c \
../fs/hpfs/map.c \
../fs/hpfs/name.c \
../fs/hpfs/namei.c \
../fs/hpfs/super.c 

OBJS += \
./fs/hpfs/alloc.o \
./fs/hpfs/anode.o \
./fs/hpfs/buffer.o \
./fs/hpfs/dentry.o \
./fs/hpfs/dir.o \
./fs/hpfs/dnode.o \
./fs/hpfs/ea.o \
./fs/hpfs/file.o \
./fs/hpfs/inode.o \
./fs/hpfs/map.o \
./fs/hpfs/name.o \
./fs/hpfs/namei.o \
./fs/hpfs/super.o 

C_DEPS += \
./fs/hpfs/alloc.d \
./fs/hpfs/anode.d \
./fs/hpfs/buffer.d \
./fs/hpfs/dentry.d \
./fs/hpfs/dir.d \
./fs/hpfs/dnode.d \
./fs/hpfs/ea.d \
./fs/hpfs/file.d \
./fs/hpfs/inode.d \
./fs/hpfs/map.d \
./fs/hpfs/name.d \
./fs/hpfs/namei.d \
./fs/hpfs/super.d 


# Each subdirectory must supply rules for building sources it contributes
fs/hpfs/%.o: ../fs/hpfs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


