################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fs/gfs2/acl.c \
../fs/gfs2/aops.c \
../fs/gfs2/bmap.c \
../fs/gfs2/dentry.c \
../fs/gfs2/dir.c \
../fs/gfs2/export.c \
../fs/gfs2/file.c \
../fs/gfs2/glock.c \
../fs/gfs2/glops.c \
../fs/gfs2/inode.c \
../fs/gfs2/lock_dlm.c \
../fs/gfs2/log.c \
../fs/gfs2/lops.c \
../fs/gfs2/main.c \
../fs/gfs2/meta_io.c \
../fs/gfs2/ops_fstype.c \
../fs/gfs2/quota.c \
../fs/gfs2/recovery.c \
../fs/gfs2/rgrp.c \
../fs/gfs2/super.c \
../fs/gfs2/sys.c \
../fs/gfs2/trans.c \
../fs/gfs2/util.c \
../fs/gfs2/xattr.c 

OBJS += \
./fs/gfs2/acl.o \
./fs/gfs2/aops.o \
./fs/gfs2/bmap.o \
./fs/gfs2/dentry.o \
./fs/gfs2/dir.o \
./fs/gfs2/export.o \
./fs/gfs2/file.o \
./fs/gfs2/glock.o \
./fs/gfs2/glops.o \
./fs/gfs2/inode.o \
./fs/gfs2/lock_dlm.o \
./fs/gfs2/log.o \
./fs/gfs2/lops.o \
./fs/gfs2/main.o \
./fs/gfs2/meta_io.o \
./fs/gfs2/ops_fstype.o \
./fs/gfs2/quota.o \
./fs/gfs2/recovery.o \
./fs/gfs2/rgrp.o \
./fs/gfs2/super.o \
./fs/gfs2/sys.o \
./fs/gfs2/trans.o \
./fs/gfs2/util.o \
./fs/gfs2/xattr.o 

C_DEPS += \
./fs/gfs2/acl.d \
./fs/gfs2/aops.d \
./fs/gfs2/bmap.d \
./fs/gfs2/dentry.d \
./fs/gfs2/dir.d \
./fs/gfs2/export.d \
./fs/gfs2/file.d \
./fs/gfs2/glock.d \
./fs/gfs2/glops.d \
./fs/gfs2/inode.d \
./fs/gfs2/lock_dlm.d \
./fs/gfs2/log.d \
./fs/gfs2/lops.d \
./fs/gfs2/main.d \
./fs/gfs2/meta_io.d \
./fs/gfs2/ops_fstype.d \
./fs/gfs2/quota.d \
./fs/gfs2/recovery.d \
./fs/gfs2/rgrp.d \
./fs/gfs2/super.d \
./fs/gfs2/sys.d \
./fs/gfs2/trans.d \
./fs/gfs2/util.d \
./fs/gfs2/xattr.d 


# Each subdirectory must supply rules for building sources it contributes
fs/gfs2/%.o: ../fs/gfs2/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


