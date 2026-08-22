################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fs/nfsd/auth.c \
../fs/nfsd/export.c \
../fs/nfsd/fault_inject.c \
../fs/nfsd/lockd.c \
../fs/nfsd/nfs2acl.c \
../fs/nfsd/nfs3acl.c \
../fs/nfsd/nfs3proc.c \
../fs/nfsd/nfs3xdr.c \
../fs/nfsd/nfs4acl.c \
../fs/nfsd/nfs4callback.c \
../fs/nfsd/nfs4idmap.c \
../fs/nfsd/nfs4proc.c \
../fs/nfsd/nfs4recover.c \
../fs/nfsd/nfs4state.c \
../fs/nfsd/nfs4xdr.c \
../fs/nfsd/nfscache.c \
../fs/nfsd/nfsctl.c \
../fs/nfsd/nfsfh.c \
../fs/nfsd/nfsproc.c \
../fs/nfsd/nfssvc.c \
../fs/nfsd/nfsxdr.c \
../fs/nfsd/stats.c \
../fs/nfsd/vfs.c 

OBJS += \
./fs/nfsd/auth.o \
./fs/nfsd/export.o \
./fs/nfsd/fault_inject.o \
./fs/nfsd/lockd.o \
./fs/nfsd/nfs2acl.o \
./fs/nfsd/nfs3acl.o \
./fs/nfsd/nfs3proc.o \
./fs/nfsd/nfs3xdr.o \
./fs/nfsd/nfs4acl.o \
./fs/nfsd/nfs4callback.o \
./fs/nfsd/nfs4idmap.o \
./fs/nfsd/nfs4proc.o \
./fs/nfsd/nfs4recover.o \
./fs/nfsd/nfs4state.o \
./fs/nfsd/nfs4xdr.o \
./fs/nfsd/nfscache.o \
./fs/nfsd/nfsctl.o \
./fs/nfsd/nfsfh.o \
./fs/nfsd/nfsproc.o \
./fs/nfsd/nfssvc.o \
./fs/nfsd/nfsxdr.o \
./fs/nfsd/stats.o \
./fs/nfsd/vfs.o 

C_DEPS += \
./fs/nfsd/auth.d \
./fs/nfsd/export.d \
./fs/nfsd/fault_inject.d \
./fs/nfsd/lockd.d \
./fs/nfsd/nfs2acl.d \
./fs/nfsd/nfs3acl.d \
./fs/nfsd/nfs3proc.d \
./fs/nfsd/nfs3xdr.d \
./fs/nfsd/nfs4acl.d \
./fs/nfsd/nfs4callback.d \
./fs/nfsd/nfs4idmap.d \
./fs/nfsd/nfs4proc.d \
./fs/nfsd/nfs4recover.d \
./fs/nfsd/nfs4state.d \
./fs/nfsd/nfs4xdr.d \
./fs/nfsd/nfscache.d \
./fs/nfsd/nfsctl.d \
./fs/nfsd/nfsfh.d \
./fs/nfsd/nfsproc.d \
./fs/nfsd/nfssvc.d \
./fs/nfsd/nfsxdr.d \
./fs/nfsd/stats.d \
./fs/nfsd/vfs.d 


# Each subdirectory must supply rules for building sources it contributes
fs/nfsd/%.o: ../fs/nfsd/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


