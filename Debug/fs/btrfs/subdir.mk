################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fs/btrfs/acl.c \
../fs/btrfs/async-thread.c \
../fs/btrfs/backref.c \
../fs/btrfs/check-integrity.c \
../fs/btrfs/compression.c \
../fs/btrfs/ctree.c \
../fs/btrfs/delayed-inode.c \
../fs/btrfs/delayed-ref.c \
../fs/btrfs/dir-item.c \
../fs/btrfs/disk-io.c \
../fs/btrfs/export.c \
../fs/btrfs/extent-tree.c \
../fs/btrfs/extent_io.c \
../fs/btrfs/extent_map.c \
../fs/btrfs/file-item.c \
../fs/btrfs/file.c \
../fs/btrfs/free-space-cache.c \
../fs/btrfs/inode-item.c \
../fs/btrfs/inode-map.c \
../fs/btrfs/inode.c \
../fs/btrfs/ioctl.c \
../fs/btrfs/locking.c \
../fs/btrfs/lzo.c \
../fs/btrfs/ordered-data.c \
../fs/btrfs/orphan.c \
../fs/btrfs/print-tree.c \
../fs/btrfs/reada.c \
../fs/btrfs/relocation.c \
../fs/btrfs/root-tree.c \
../fs/btrfs/scrub.c \
../fs/btrfs/struct-funcs.c \
../fs/btrfs/super.c \
../fs/btrfs/sysfs.c \
../fs/btrfs/transaction.c \
../fs/btrfs/tree-defrag.c \
../fs/btrfs/tree-log.c \
../fs/btrfs/ulist.c \
../fs/btrfs/volumes.c \
../fs/btrfs/xattr.c \
../fs/btrfs/zlib.c 

OBJS += \
./fs/btrfs/acl.o \
./fs/btrfs/async-thread.o \
./fs/btrfs/backref.o \
./fs/btrfs/check-integrity.o \
./fs/btrfs/compression.o \
./fs/btrfs/ctree.o \
./fs/btrfs/delayed-inode.o \
./fs/btrfs/delayed-ref.o \
./fs/btrfs/dir-item.o \
./fs/btrfs/disk-io.o \
./fs/btrfs/export.o \
./fs/btrfs/extent-tree.o \
./fs/btrfs/extent_io.o \
./fs/btrfs/extent_map.o \
./fs/btrfs/file-item.o \
./fs/btrfs/file.o \
./fs/btrfs/free-space-cache.o \
./fs/btrfs/inode-item.o \
./fs/btrfs/inode-map.o \
./fs/btrfs/inode.o \
./fs/btrfs/ioctl.o \
./fs/btrfs/locking.o \
./fs/btrfs/lzo.o \
./fs/btrfs/ordered-data.o \
./fs/btrfs/orphan.o \
./fs/btrfs/print-tree.o \
./fs/btrfs/reada.o \
./fs/btrfs/relocation.o \
./fs/btrfs/root-tree.o \
./fs/btrfs/scrub.o \
./fs/btrfs/struct-funcs.o \
./fs/btrfs/super.o \
./fs/btrfs/sysfs.o \
./fs/btrfs/transaction.o \
./fs/btrfs/tree-defrag.o \
./fs/btrfs/tree-log.o \
./fs/btrfs/ulist.o \
./fs/btrfs/volumes.o \
./fs/btrfs/xattr.o \
./fs/btrfs/zlib.o 

C_DEPS += \
./fs/btrfs/acl.d \
./fs/btrfs/async-thread.d \
./fs/btrfs/backref.d \
./fs/btrfs/check-integrity.d \
./fs/btrfs/compression.d \
./fs/btrfs/ctree.d \
./fs/btrfs/delayed-inode.d \
./fs/btrfs/delayed-ref.d \
./fs/btrfs/dir-item.d \
./fs/btrfs/disk-io.d \
./fs/btrfs/export.d \
./fs/btrfs/extent-tree.d \
./fs/btrfs/extent_io.d \
./fs/btrfs/extent_map.d \
./fs/btrfs/file-item.d \
./fs/btrfs/file.d \
./fs/btrfs/free-space-cache.d \
./fs/btrfs/inode-item.d \
./fs/btrfs/inode-map.d \
./fs/btrfs/inode.d \
./fs/btrfs/ioctl.d \
./fs/btrfs/locking.d \
./fs/btrfs/lzo.d \
./fs/btrfs/ordered-data.d \
./fs/btrfs/orphan.d \
./fs/btrfs/print-tree.d \
./fs/btrfs/reada.d \
./fs/btrfs/relocation.d \
./fs/btrfs/root-tree.d \
./fs/btrfs/scrub.d \
./fs/btrfs/struct-funcs.d \
./fs/btrfs/super.d \
./fs/btrfs/sysfs.d \
./fs/btrfs/transaction.d \
./fs/btrfs/tree-defrag.d \
./fs/btrfs/tree-log.d \
./fs/btrfs/ulist.d \
./fs/btrfs/volumes.d \
./fs/btrfs/xattr.d \
./fs/btrfs/zlib.d 


# Each subdirectory must supply rules for building sources it contributes
fs/btrfs/%.o: ../fs/btrfs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


