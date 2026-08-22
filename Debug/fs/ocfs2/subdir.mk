################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fs/ocfs2/acl.c \
../fs/ocfs2/alloc.c \
../fs/ocfs2/aops.c \
../fs/ocfs2/blockcheck.c \
../fs/ocfs2/buffer_head_io.c \
../fs/ocfs2/dcache.c \
../fs/ocfs2/dir.c \
../fs/ocfs2/dlmglue.c \
../fs/ocfs2/export.c \
../fs/ocfs2/extent_map.c \
../fs/ocfs2/file.c \
../fs/ocfs2/heartbeat.c \
../fs/ocfs2/inode.c \
../fs/ocfs2/ioctl.c \
../fs/ocfs2/journal.c \
../fs/ocfs2/localalloc.c \
../fs/ocfs2/locks.c \
../fs/ocfs2/mmap.c \
../fs/ocfs2/move_extents.c \
../fs/ocfs2/namei.c \
../fs/ocfs2/quota_global.c \
../fs/ocfs2/quota_local.c \
../fs/ocfs2/refcounttree.c \
../fs/ocfs2/reservations.c \
../fs/ocfs2/resize.c \
../fs/ocfs2/slot_map.c \
../fs/ocfs2/stack_o2cb.c \
../fs/ocfs2/stack_user.c \
../fs/ocfs2/stackglue.c \
../fs/ocfs2/suballoc.c \
../fs/ocfs2/super.c \
../fs/ocfs2/symlink.c \
../fs/ocfs2/sysfile.c \
../fs/ocfs2/uptodate.c \
../fs/ocfs2/ver.c \
../fs/ocfs2/xattr.c 

OBJS += \
./fs/ocfs2/acl.o \
./fs/ocfs2/alloc.o \
./fs/ocfs2/aops.o \
./fs/ocfs2/blockcheck.o \
./fs/ocfs2/buffer_head_io.o \
./fs/ocfs2/dcache.o \
./fs/ocfs2/dir.o \
./fs/ocfs2/dlmglue.o \
./fs/ocfs2/export.o \
./fs/ocfs2/extent_map.o \
./fs/ocfs2/file.o \
./fs/ocfs2/heartbeat.o \
./fs/ocfs2/inode.o \
./fs/ocfs2/ioctl.o \
./fs/ocfs2/journal.o \
./fs/ocfs2/localalloc.o \
./fs/ocfs2/locks.o \
./fs/ocfs2/mmap.o \
./fs/ocfs2/move_extents.o \
./fs/ocfs2/namei.o \
./fs/ocfs2/quota_global.o \
./fs/ocfs2/quota_local.o \
./fs/ocfs2/refcounttree.o \
./fs/ocfs2/reservations.o \
./fs/ocfs2/resize.o \
./fs/ocfs2/slot_map.o \
./fs/ocfs2/stack_o2cb.o \
./fs/ocfs2/stack_user.o \
./fs/ocfs2/stackglue.o \
./fs/ocfs2/suballoc.o \
./fs/ocfs2/super.o \
./fs/ocfs2/symlink.o \
./fs/ocfs2/sysfile.o \
./fs/ocfs2/uptodate.o \
./fs/ocfs2/ver.o \
./fs/ocfs2/xattr.o 

C_DEPS += \
./fs/ocfs2/acl.d \
./fs/ocfs2/alloc.d \
./fs/ocfs2/aops.d \
./fs/ocfs2/blockcheck.d \
./fs/ocfs2/buffer_head_io.d \
./fs/ocfs2/dcache.d \
./fs/ocfs2/dir.d \
./fs/ocfs2/dlmglue.d \
./fs/ocfs2/export.d \
./fs/ocfs2/extent_map.d \
./fs/ocfs2/file.d \
./fs/ocfs2/heartbeat.d \
./fs/ocfs2/inode.d \
./fs/ocfs2/ioctl.d \
./fs/ocfs2/journal.d \
./fs/ocfs2/localalloc.d \
./fs/ocfs2/locks.d \
./fs/ocfs2/mmap.d \
./fs/ocfs2/move_extents.d \
./fs/ocfs2/namei.d \
./fs/ocfs2/quota_global.d \
./fs/ocfs2/quota_local.d \
./fs/ocfs2/refcounttree.d \
./fs/ocfs2/reservations.d \
./fs/ocfs2/resize.d \
./fs/ocfs2/slot_map.d \
./fs/ocfs2/stack_o2cb.d \
./fs/ocfs2/stack_user.d \
./fs/ocfs2/stackglue.d \
./fs/ocfs2/suballoc.d \
./fs/ocfs2/super.d \
./fs/ocfs2/symlink.d \
./fs/ocfs2/sysfile.d \
./fs/ocfs2/uptodate.d \
./fs/ocfs2/ver.d \
./fs/ocfs2/xattr.d 


# Each subdirectory must supply rules for building sources it contributes
fs/ocfs2/%.o: ../fs/ocfs2/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


