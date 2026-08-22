################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fs/reiserfs/bitmap.c \
../fs/reiserfs/dir.c \
../fs/reiserfs/do_balan.c \
../fs/reiserfs/file.c \
../fs/reiserfs/fix_node.c \
../fs/reiserfs/hashes.c \
../fs/reiserfs/ibalance.c \
../fs/reiserfs/inode.c \
../fs/reiserfs/ioctl.c \
../fs/reiserfs/item_ops.c \
../fs/reiserfs/journal.c \
../fs/reiserfs/lbalance.c \
../fs/reiserfs/lock.c \
../fs/reiserfs/namei.c \
../fs/reiserfs/objectid.c \
../fs/reiserfs/prints.c \
../fs/reiserfs/procfs.c \
../fs/reiserfs/resize.c \
../fs/reiserfs/stree.c \
../fs/reiserfs/super.c \
../fs/reiserfs/tail_conversion.c \
../fs/reiserfs/xattr.c \
../fs/reiserfs/xattr_acl.c \
../fs/reiserfs/xattr_security.c \
../fs/reiserfs/xattr_trusted.c \
../fs/reiserfs/xattr_user.c 

OBJS += \
./fs/reiserfs/bitmap.o \
./fs/reiserfs/dir.o \
./fs/reiserfs/do_balan.o \
./fs/reiserfs/file.o \
./fs/reiserfs/fix_node.o \
./fs/reiserfs/hashes.o \
./fs/reiserfs/ibalance.o \
./fs/reiserfs/inode.o \
./fs/reiserfs/ioctl.o \
./fs/reiserfs/item_ops.o \
./fs/reiserfs/journal.o \
./fs/reiserfs/lbalance.o \
./fs/reiserfs/lock.o \
./fs/reiserfs/namei.o \
./fs/reiserfs/objectid.o \
./fs/reiserfs/prints.o \
./fs/reiserfs/procfs.o \
./fs/reiserfs/resize.o \
./fs/reiserfs/stree.o \
./fs/reiserfs/super.o \
./fs/reiserfs/tail_conversion.o \
./fs/reiserfs/xattr.o \
./fs/reiserfs/xattr_acl.o \
./fs/reiserfs/xattr_security.o \
./fs/reiserfs/xattr_trusted.o \
./fs/reiserfs/xattr_user.o 

C_DEPS += \
./fs/reiserfs/bitmap.d \
./fs/reiserfs/dir.d \
./fs/reiserfs/do_balan.d \
./fs/reiserfs/file.d \
./fs/reiserfs/fix_node.d \
./fs/reiserfs/hashes.d \
./fs/reiserfs/ibalance.d \
./fs/reiserfs/inode.d \
./fs/reiserfs/ioctl.d \
./fs/reiserfs/item_ops.d \
./fs/reiserfs/journal.d \
./fs/reiserfs/lbalance.d \
./fs/reiserfs/lock.d \
./fs/reiserfs/namei.d \
./fs/reiserfs/objectid.d \
./fs/reiserfs/prints.d \
./fs/reiserfs/procfs.d \
./fs/reiserfs/resize.d \
./fs/reiserfs/stree.d \
./fs/reiserfs/super.d \
./fs/reiserfs/tail_conversion.d \
./fs/reiserfs/xattr.d \
./fs/reiserfs/xattr_acl.d \
./fs/reiserfs/xattr_security.d \
./fs/reiserfs/xattr_trusted.d \
./fs/reiserfs/xattr_user.d 


# Each subdirectory must supply rules for building sources it contributes
fs/reiserfs/%.o: ../fs/reiserfs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


