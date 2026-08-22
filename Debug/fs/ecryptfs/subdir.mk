################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fs/ecryptfs/crypto.c \
../fs/ecryptfs/debug.c \
../fs/ecryptfs/dentry.c \
../fs/ecryptfs/file.c \
../fs/ecryptfs/inode.c \
../fs/ecryptfs/keystore.c \
../fs/ecryptfs/kthread.c \
../fs/ecryptfs/main.c \
../fs/ecryptfs/messaging.c \
../fs/ecryptfs/miscdev.c \
../fs/ecryptfs/mmap.c \
../fs/ecryptfs/read_write.c \
../fs/ecryptfs/super.c 

OBJS += \
./fs/ecryptfs/crypto.o \
./fs/ecryptfs/debug.o \
./fs/ecryptfs/dentry.o \
./fs/ecryptfs/file.o \
./fs/ecryptfs/inode.o \
./fs/ecryptfs/keystore.o \
./fs/ecryptfs/kthread.o \
./fs/ecryptfs/main.o \
./fs/ecryptfs/messaging.o \
./fs/ecryptfs/miscdev.o \
./fs/ecryptfs/mmap.o \
./fs/ecryptfs/read_write.o \
./fs/ecryptfs/super.o 

C_DEPS += \
./fs/ecryptfs/crypto.d \
./fs/ecryptfs/debug.d \
./fs/ecryptfs/dentry.d \
./fs/ecryptfs/file.d \
./fs/ecryptfs/inode.d \
./fs/ecryptfs/keystore.d \
./fs/ecryptfs/kthread.d \
./fs/ecryptfs/main.d \
./fs/ecryptfs/messaging.d \
./fs/ecryptfs/miscdev.d \
./fs/ecryptfs/mmap.d \
./fs/ecryptfs/read_write.d \
./fs/ecryptfs/super.d 


# Each subdirectory must supply rules for building sources it contributes
fs/ecryptfs/%.o: ../fs/ecryptfs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


