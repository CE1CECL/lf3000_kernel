################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../fs/sysfs/bin.o \
../fs/sysfs/built-in.o \
../fs/sysfs/dir.o \
../fs/sysfs/file.o \
../fs/sysfs/group.o \
../fs/sysfs/inode.o \
../fs/sysfs/mount.o \
../fs/sysfs/symlink.o 

C_SRCS += \
../fs/sysfs/bin.c \
../fs/sysfs/dir.c \
../fs/sysfs/file.c \
../fs/sysfs/group.c \
../fs/sysfs/inode.c \
../fs/sysfs/mount.c \
../fs/sysfs/symlink.c 

OBJS += \
./fs/sysfs/bin.o \
./fs/sysfs/dir.o \
./fs/sysfs/file.o \
./fs/sysfs/group.o \
./fs/sysfs/inode.o \
./fs/sysfs/mount.o \
./fs/sysfs/symlink.o 

C_DEPS += \
./fs/sysfs/bin.d \
./fs/sysfs/dir.d \
./fs/sysfs/file.d \
./fs/sysfs/group.d \
./fs/sysfs/inode.d \
./fs/sysfs/mount.d \
./fs/sysfs/symlink.d 


# Each subdirectory must supply rules for building sources it contributes
fs/sysfs/%.o: ../fs/sysfs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


