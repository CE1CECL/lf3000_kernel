################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../fs/ext2/balloc.o \
../fs/ext2/built-in.o \
../fs/ext2/dir.o \
../fs/ext2/ext2.o \
../fs/ext2/file.o \
../fs/ext2/ialloc.o \
../fs/ext2/inode.o \
../fs/ext2/ioctl.o \
../fs/ext2/namei.o \
../fs/ext2/super.o \
../fs/ext2/symlink.o \
../fs/ext2/xattr.o \
../fs/ext2/xattr_trusted.o \
../fs/ext2/xattr_user.o \
../fs/ext2/xip.o 

C_SRCS += \
../fs/ext2/acl.c \
../fs/ext2/balloc.c \
../fs/ext2/dir.c \
../fs/ext2/file.c \
../fs/ext2/ialloc.c \
../fs/ext2/inode.c \
../fs/ext2/ioctl.c \
../fs/ext2/namei.c \
../fs/ext2/super.c \
../fs/ext2/symlink.c \
../fs/ext2/xattr.c \
../fs/ext2/xattr_security.c \
../fs/ext2/xattr_trusted.c \
../fs/ext2/xattr_user.c \
../fs/ext2/xip.c 

OBJS += \
./fs/ext2/acl.o \
./fs/ext2/balloc.o \
./fs/ext2/dir.o \
./fs/ext2/file.o \
./fs/ext2/ialloc.o \
./fs/ext2/inode.o \
./fs/ext2/ioctl.o \
./fs/ext2/namei.o \
./fs/ext2/super.o \
./fs/ext2/symlink.o \
./fs/ext2/xattr.o \
./fs/ext2/xattr_security.o \
./fs/ext2/xattr_trusted.o \
./fs/ext2/xattr_user.o \
./fs/ext2/xip.o 

C_DEPS += \
./fs/ext2/acl.d \
./fs/ext2/balloc.d \
./fs/ext2/dir.d \
./fs/ext2/file.d \
./fs/ext2/ialloc.d \
./fs/ext2/inode.d \
./fs/ext2/ioctl.d \
./fs/ext2/namei.d \
./fs/ext2/super.d \
./fs/ext2/symlink.d \
./fs/ext2/xattr.d \
./fs/ext2/xattr_security.d \
./fs/ext2/xattr_trusted.d \
./fs/ext2/xattr_user.d \
./fs/ext2/xip.d 


# Each subdirectory must supply rules for building sources it contributes
fs/ext2/%.o: ../fs/ext2/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


