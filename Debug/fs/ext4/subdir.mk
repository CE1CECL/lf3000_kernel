################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../fs/ext4/acl.o \
../fs/ext4/balloc.o \
../fs/ext4/bitmap.o \
../fs/ext4/block_validity.o \
../fs/ext4/built-in.o \
../fs/ext4/dir.o \
../fs/ext4/ext4.o \
../fs/ext4/ext4_jbd2.o \
../fs/ext4/extents.o \
../fs/ext4/file.o \
../fs/ext4/fsync.o \
../fs/ext4/hash.o \
../fs/ext4/ialloc.o \
../fs/ext4/indirect.o \
../fs/ext4/inode.o \
../fs/ext4/ioctl.o \
../fs/ext4/mballoc.o \
../fs/ext4/migrate.o \
../fs/ext4/mmp.o \
../fs/ext4/move_extent.o \
../fs/ext4/namei.o \
../fs/ext4/page-io.o \
../fs/ext4/resize.o \
../fs/ext4/super.o \
../fs/ext4/symlink.o \
../fs/ext4/xattr.o \
../fs/ext4/xattr_security.o \
../fs/ext4/xattr_trusted.o \
../fs/ext4/xattr_user.o 

C_SRCS += \
../fs/ext4/acl.c \
../fs/ext4/balloc.c \
../fs/ext4/bitmap.c \
../fs/ext4/block_validity.c \
../fs/ext4/dir.c \
../fs/ext4/ext4_jbd2.c \
../fs/ext4/extents.c \
../fs/ext4/file.c \
../fs/ext4/fsync.c \
../fs/ext4/hash.c \
../fs/ext4/ialloc.c \
../fs/ext4/indirect.c \
../fs/ext4/inode.c \
../fs/ext4/ioctl.c \
../fs/ext4/mballoc.c \
../fs/ext4/migrate.c \
../fs/ext4/mmp.c \
../fs/ext4/move_extent.c \
../fs/ext4/namei.c \
../fs/ext4/page-io.c \
../fs/ext4/resize.c \
../fs/ext4/super.c \
../fs/ext4/symlink.c \
../fs/ext4/xattr.c \
../fs/ext4/xattr_security.c \
../fs/ext4/xattr_trusted.c \
../fs/ext4/xattr_user.c 

OBJS += \
./fs/ext4/acl.o \
./fs/ext4/balloc.o \
./fs/ext4/bitmap.o \
./fs/ext4/block_validity.o \
./fs/ext4/dir.o \
./fs/ext4/ext4_jbd2.o \
./fs/ext4/extents.o \
./fs/ext4/file.o \
./fs/ext4/fsync.o \
./fs/ext4/hash.o \
./fs/ext4/ialloc.o \
./fs/ext4/indirect.o \
./fs/ext4/inode.o \
./fs/ext4/ioctl.o \
./fs/ext4/mballoc.o \
./fs/ext4/migrate.o \
./fs/ext4/mmp.o \
./fs/ext4/move_extent.o \
./fs/ext4/namei.o \
./fs/ext4/page-io.o \
./fs/ext4/resize.o \
./fs/ext4/super.o \
./fs/ext4/symlink.o \
./fs/ext4/xattr.o \
./fs/ext4/xattr_security.o \
./fs/ext4/xattr_trusted.o \
./fs/ext4/xattr_user.o 

C_DEPS += \
./fs/ext4/acl.d \
./fs/ext4/balloc.d \
./fs/ext4/bitmap.d \
./fs/ext4/block_validity.d \
./fs/ext4/dir.d \
./fs/ext4/ext4_jbd2.d \
./fs/ext4/extents.d \
./fs/ext4/file.d \
./fs/ext4/fsync.d \
./fs/ext4/hash.d \
./fs/ext4/ialloc.d \
./fs/ext4/indirect.d \
./fs/ext4/inode.d \
./fs/ext4/ioctl.d \
./fs/ext4/mballoc.d \
./fs/ext4/migrate.d \
./fs/ext4/mmp.d \
./fs/ext4/move_extent.d \
./fs/ext4/namei.d \
./fs/ext4/page-io.d \
./fs/ext4/resize.d \
./fs/ext4/super.d \
./fs/ext4/symlink.d \
./fs/ext4/xattr.d \
./fs/ext4/xattr_security.d \
./fs/ext4/xattr_trusted.d \
./fs/ext4/xattr_user.d 


# Each subdirectory must supply rules for building sources it contributes
fs/ext4/%.o: ../fs/ext4/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


