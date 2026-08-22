################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../fs/nfs/built-in.o \
../fs/nfs/cache_lib.o \
../fs/nfs/callback.o \
../fs/nfs/callback_proc.o \
../fs/nfs/callback_xdr.o \
../fs/nfs/client.o \
../fs/nfs/delegation.o \
../fs/nfs/dir.o \
../fs/nfs/direct.o \
../fs/nfs/dns_resolve.o \
../fs/nfs/file.o \
../fs/nfs/getroot.o \
../fs/nfs/idmap.o \
../fs/nfs/inode.o \
../fs/nfs/mount_clnt.o \
../fs/nfs/namespace.o \
../fs/nfs/nfs.o \
../fs/nfs/nfs2xdr.o \
../fs/nfs/nfs3proc.o \
../fs/nfs/nfs3xdr.o \
../fs/nfs/nfs4namespace.o \
../fs/nfs/nfs4proc.o \
../fs/nfs/nfs4renewd.o \
../fs/nfs/nfs4state.o \
../fs/nfs/nfs4xdr.o \
../fs/nfs/nfsroot.o \
../fs/nfs/pagelist.o \
../fs/nfs/proc.o \
../fs/nfs/read.o \
../fs/nfs/super.o \
../fs/nfs/symlink.o \
../fs/nfs/sysctl.o \
../fs/nfs/unlink.o \
../fs/nfs/write.o 

C_SRCS += \
../fs/nfs/cache_lib.c \
../fs/nfs/callback.c \
../fs/nfs/callback_proc.c \
../fs/nfs/callback_xdr.c \
../fs/nfs/client.c \
../fs/nfs/delegation.c \
../fs/nfs/dir.c \
../fs/nfs/direct.c \
../fs/nfs/dns_resolve.c \
../fs/nfs/file.c \
../fs/nfs/fscache-index.c \
../fs/nfs/fscache.c \
../fs/nfs/getroot.c \
../fs/nfs/idmap.c \
../fs/nfs/inode.c \
../fs/nfs/mount_clnt.c \
../fs/nfs/namespace.c \
../fs/nfs/nfs2xdr.c \
../fs/nfs/nfs3acl.c \
../fs/nfs/nfs3proc.c \
../fs/nfs/nfs3xdr.c \
../fs/nfs/nfs4filelayout.c \
../fs/nfs/nfs4filelayoutdev.c \
../fs/nfs/nfs4namespace.c \
../fs/nfs/nfs4proc.c \
../fs/nfs/nfs4renewd.c \
../fs/nfs/nfs4state.c \
../fs/nfs/nfs4xdr.c \
../fs/nfs/nfsroot.c \
../fs/nfs/pagelist.c \
../fs/nfs/pnfs.c \
../fs/nfs/pnfs_dev.c \
../fs/nfs/proc.c \
../fs/nfs/read.c \
../fs/nfs/super.c \
../fs/nfs/symlink.c \
../fs/nfs/sysctl.c \
../fs/nfs/unlink.c \
../fs/nfs/write.c 

OBJS += \
./fs/nfs/cache_lib.o \
./fs/nfs/callback.o \
./fs/nfs/callback_proc.o \
./fs/nfs/callback_xdr.o \
./fs/nfs/client.o \
./fs/nfs/delegation.o \
./fs/nfs/dir.o \
./fs/nfs/direct.o \
./fs/nfs/dns_resolve.o \
./fs/nfs/file.o \
./fs/nfs/fscache-index.o \
./fs/nfs/fscache.o \
./fs/nfs/getroot.o \
./fs/nfs/idmap.o \
./fs/nfs/inode.o \
./fs/nfs/mount_clnt.o \
./fs/nfs/namespace.o \
./fs/nfs/nfs2xdr.o \
./fs/nfs/nfs3acl.o \
./fs/nfs/nfs3proc.o \
./fs/nfs/nfs3xdr.o \
./fs/nfs/nfs4filelayout.o \
./fs/nfs/nfs4filelayoutdev.o \
./fs/nfs/nfs4namespace.o \
./fs/nfs/nfs4proc.o \
./fs/nfs/nfs4renewd.o \
./fs/nfs/nfs4state.o \
./fs/nfs/nfs4xdr.o \
./fs/nfs/nfsroot.o \
./fs/nfs/pagelist.o \
./fs/nfs/pnfs.o \
./fs/nfs/pnfs_dev.o \
./fs/nfs/proc.o \
./fs/nfs/read.o \
./fs/nfs/super.o \
./fs/nfs/symlink.o \
./fs/nfs/sysctl.o \
./fs/nfs/unlink.o \
./fs/nfs/write.o 

C_DEPS += \
./fs/nfs/cache_lib.d \
./fs/nfs/callback.d \
./fs/nfs/callback_proc.d \
./fs/nfs/callback_xdr.d \
./fs/nfs/client.d \
./fs/nfs/delegation.d \
./fs/nfs/dir.d \
./fs/nfs/direct.d \
./fs/nfs/dns_resolve.d \
./fs/nfs/file.d \
./fs/nfs/fscache-index.d \
./fs/nfs/fscache.d \
./fs/nfs/getroot.d \
./fs/nfs/idmap.d \
./fs/nfs/inode.d \
./fs/nfs/mount_clnt.d \
./fs/nfs/namespace.d \
./fs/nfs/nfs2xdr.d \
./fs/nfs/nfs3acl.d \
./fs/nfs/nfs3proc.d \
./fs/nfs/nfs3xdr.d \
./fs/nfs/nfs4filelayout.d \
./fs/nfs/nfs4filelayoutdev.d \
./fs/nfs/nfs4namespace.d \
./fs/nfs/nfs4proc.d \
./fs/nfs/nfs4renewd.d \
./fs/nfs/nfs4state.d \
./fs/nfs/nfs4xdr.d \
./fs/nfs/nfsroot.d \
./fs/nfs/pagelist.d \
./fs/nfs/pnfs.d \
./fs/nfs/pnfs_dev.d \
./fs/nfs/proc.d \
./fs/nfs/read.d \
./fs/nfs/super.d \
./fs/nfs/symlink.d \
./fs/nfs/sysctl.d \
./fs/nfs/unlink.d \
./fs/nfs/write.d 


# Each subdirectory must supply rules for building sources it contributes
fs/nfs/%.o: ../fs/nfs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


