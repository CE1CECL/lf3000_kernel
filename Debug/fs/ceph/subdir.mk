################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fs/ceph/addr.c \
../fs/ceph/caps.c \
../fs/ceph/ceph_frag.c \
../fs/ceph/debugfs.c \
../fs/ceph/dir.c \
../fs/ceph/export.c \
../fs/ceph/file.c \
../fs/ceph/inode.c \
../fs/ceph/ioctl.c \
../fs/ceph/locks.c \
../fs/ceph/mds_client.c \
../fs/ceph/mdsmap.c \
../fs/ceph/snap.c \
../fs/ceph/strings.c \
../fs/ceph/super.c \
../fs/ceph/xattr.c 

OBJS += \
./fs/ceph/addr.o \
./fs/ceph/caps.o \
./fs/ceph/ceph_frag.o \
./fs/ceph/debugfs.o \
./fs/ceph/dir.o \
./fs/ceph/export.o \
./fs/ceph/file.o \
./fs/ceph/inode.o \
./fs/ceph/ioctl.o \
./fs/ceph/locks.o \
./fs/ceph/mds_client.o \
./fs/ceph/mdsmap.o \
./fs/ceph/snap.o \
./fs/ceph/strings.o \
./fs/ceph/super.o \
./fs/ceph/xattr.o 

C_DEPS += \
./fs/ceph/addr.d \
./fs/ceph/caps.d \
./fs/ceph/ceph_frag.d \
./fs/ceph/debugfs.d \
./fs/ceph/dir.d \
./fs/ceph/export.d \
./fs/ceph/file.d \
./fs/ceph/inode.d \
./fs/ceph/ioctl.d \
./fs/ceph/locks.d \
./fs/ceph/mds_client.d \
./fs/ceph/mdsmap.d \
./fs/ceph/snap.d \
./fs/ceph/strings.d \
./fs/ceph/super.d \
./fs/ceph/xattr.d 


# Each subdirectory must supply rules for building sources it contributes
fs/ceph/%.o: ../fs/ceph/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


