################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../fs/ext3/acl.o \
../fs/ext3/balloc.o \
../fs/ext3/bitmap.o \
../fs/ext3/built-in.o \
../fs/ext3/dir.o \
../fs/ext3/ext3.o \
../fs/ext3/ext3_jbd.o \
../fs/ext3/file.o \
../fs/ext3/fsync.o \
../fs/ext3/hash.o \
../fs/ext3/ialloc.o \
../fs/ext3/inode.o \
../fs/ext3/ioctl.o \
../fs/ext3/namei.o \
../fs/ext3/resize.o \
../fs/ext3/super.o \
../fs/ext3/symlink.o \
../fs/ext3/xattr.o \
../fs/ext3/xattr_security.o \
../fs/ext3/xattr_trusted.o \
../fs/ext3/xattr_user.o 

C_SRCS += \
../fs/ext3/acl.c \
../fs/ext3/balloc.c \
../fs/ext3/bitmap.c \
../fs/ext3/dir.c \
../fs/ext3/ext3_jbd.c \
../fs/ext3/file.c \
../fs/ext3/fsync.c \
../fs/ext3/hash.c \
../fs/ext3/ialloc.c \
../fs/ext3/inode.c \
../fs/ext3/ioctl.c \
../fs/ext3/namei.c \
../fs/ext3/resize.c \
../fs/ext3/super.c \
../fs/ext3/symlink.c \
../fs/ext3/xattr.c \
../fs/ext3/xattr_security.c \
../fs/ext3/xattr_trusted.c \
../fs/ext3/xattr_user.c 

OBJS += \
./fs/ext3/acl.o \
./fs/ext3/balloc.o \
./fs/ext3/bitmap.o \
./fs/ext3/dir.o \
./fs/ext3/ext3_jbd.o \
./fs/ext3/file.o \
./fs/ext3/fsync.o \
./fs/ext3/hash.o \
./fs/ext3/ialloc.o \
./fs/ext3/inode.o \
./fs/ext3/ioctl.o \
./fs/ext3/namei.o \
./fs/ext3/resize.o \
./fs/ext3/super.o \
./fs/ext3/symlink.o \
./fs/ext3/xattr.o \
./fs/ext3/xattr_security.o \
./fs/ext3/xattr_trusted.o \
./fs/ext3/xattr_user.o 

C_DEPS += \
./fs/ext3/acl.d \
./fs/ext3/balloc.d \
./fs/ext3/bitmap.d \
./fs/ext3/dir.d \
./fs/ext3/ext3_jbd.d \
./fs/ext3/file.d \
./fs/ext3/fsync.d \
./fs/ext3/hash.d \
./fs/ext3/ialloc.d \
./fs/ext3/inode.d \
./fs/ext3/ioctl.d \
./fs/ext3/namei.d \
./fs/ext3/resize.d \
./fs/ext3/super.d \
./fs/ext3/symlink.d \
./fs/ext3/xattr.d \
./fs/ext3/xattr_security.d \
./fs/ext3/xattr_trusted.d \
./fs/ext3/xattr_user.d 


# Each subdirectory must supply rules for building sources it contributes
fs/ext3/%.o: ../fs/ext3/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


