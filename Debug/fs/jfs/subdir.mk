################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fs/jfs/acl.c \
../fs/jfs/file.c \
../fs/jfs/inode.c \
../fs/jfs/ioctl.c \
../fs/jfs/jfs_debug.c \
../fs/jfs/jfs_dmap.c \
../fs/jfs/jfs_dtree.c \
../fs/jfs/jfs_extent.c \
../fs/jfs/jfs_imap.c \
../fs/jfs/jfs_inode.c \
../fs/jfs/jfs_logmgr.c \
../fs/jfs/jfs_metapage.c \
../fs/jfs/jfs_mount.c \
../fs/jfs/jfs_txnmgr.c \
../fs/jfs/jfs_umount.c \
../fs/jfs/jfs_unicode.c \
../fs/jfs/jfs_uniupr.c \
../fs/jfs/jfs_xtree.c \
../fs/jfs/namei.c \
../fs/jfs/resize.c \
../fs/jfs/super.c \
../fs/jfs/symlink.c \
../fs/jfs/xattr.c 

OBJS += \
./fs/jfs/acl.o \
./fs/jfs/file.o \
./fs/jfs/inode.o \
./fs/jfs/ioctl.o \
./fs/jfs/jfs_debug.o \
./fs/jfs/jfs_dmap.o \
./fs/jfs/jfs_dtree.o \
./fs/jfs/jfs_extent.o \
./fs/jfs/jfs_imap.o \
./fs/jfs/jfs_inode.o \
./fs/jfs/jfs_logmgr.o \
./fs/jfs/jfs_metapage.o \
./fs/jfs/jfs_mount.o \
./fs/jfs/jfs_txnmgr.o \
./fs/jfs/jfs_umount.o \
./fs/jfs/jfs_unicode.o \
./fs/jfs/jfs_uniupr.o \
./fs/jfs/jfs_xtree.o \
./fs/jfs/namei.o \
./fs/jfs/resize.o \
./fs/jfs/super.o \
./fs/jfs/symlink.o \
./fs/jfs/xattr.o 

C_DEPS += \
./fs/jfs/acl.d \
./fs/jfs/file.d \
./fs/jfs/inode.d \
./fs/jfs/ioctl.d \
./fs/jfs/jfs_debug.d \
./fs/jfs/jfs_dmap.d \
./fs/jfs/jfs_dtree.d \
./fs/jfs/jfs_extent.d \
./fs/jfs/jfs_imap.d \
./fs/jfs/jfs_inode.d \
./fs/jfs/jfs_logmgr.d \
./fs/jfs/jfs_metapage.d \
./fs/jfs/jfs_mount.d \
./fs/jfs/jfs_txnmgr.d \
./fs/jfs/jfs_umount.d \
./fs/jfs/jfs_unicode.d \
./fs/jfs/jfs_uniupr.d \
./fs/jfs/jfs_xtree.d \
./fs/jfs/namei.d \
./fs/jfs/resize.d \
./fs/jfs/super.d \
./fs/jfs/symlink.d \
./fs/jfs/xattr.d 


# Each subdirectory must supply rules for building sources it contributes
fs/jfs/%.o: ../fs/jfs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


