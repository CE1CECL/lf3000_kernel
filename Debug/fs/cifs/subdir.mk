################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fs/cifs/asn1.c \
../fs/cifs/cache.c \
../fs/cifs/cifs_debug.c \
../fs/cifs/cifs_dfs_ref.c \
../fs/cifs/cifs_spnego.c \
../fs/cifs/cifs_unicode.c \
../fs/cifs/cifsacl.c \
../fs/cifs/cifsencrypt.c \
../fs/cifs/cifsfs.c \
../fs/cifs/cifssmb.c \
../fs/cifs/connect.c \
../fs/cifs/dir.c \
../fs/cifs/dns_resolve.c \
../fs/cifs/export.c \
../fs/cifs/file.c \
../fs/cifs/fscache.c \
../fs/cifs/inode.c \
../fs/cifs/ioctl.c \
../fs/cifs/link.c \
../fs/cifs/misc.c \
../fs/cifs/netmisc.c \
../fs/cifs/nterr.c \
../fs/cifs/readdir.c \
../fs/cifs/sess.c \
../fs/cifs/smbencrypt.c \
../fs/cifs/transport.c \
../fs/cifs/xattr.c 

OBJS += \
./fs/cifs/asn1.o \
./fs/cifs/cache.o \
./fs/cifs/cifs_debug.o \
./fs/cifs/cifs_dfs_ref.o \
./fs/cifs/cifs_spnego.o \
./fs/cifs/cifs_unicode.o \
./fs/cifs/cifsacl.o \
./fs/cifs/cifsencrypt.o \
./fs/cifs/cifsfs.o \
./fs/cifs/cifssmb.o \
./fs/cifs/connect.o \
./fs/cifs/dir.o \
./fs/cifs/dns_resolve.o \
./fs/cifs/export.o \
./fs/cifs/file.o \
./fs/cifs/fscache.o \
./fs/cifs/inode.o \
./fs/cifs/ioctl.o \
./fs/cifs/link.o \
./fs/cifs/misc.o \
./fs/cifs/netmisc.o \
./fs/cifs/nterr.o \
./fs/cifs/readdir.o \
./fs/cifs/sess.o \
./fs/cifs/smbencrypt.o \
./fs/cifs/transport.o \
./fs/cifs/xattr.o 

C_DEPS += \
./fs/cifs/asn1.d \
./fs/cifs/cache.d \
./fs/cifs/cifs_debug.d \
./fs/cifs/cifs_dfs_ref.d \
./fs/cifs/cifs_spnego.d \
./fs/cifs/cifs_unicode.d \
./fs/cifs/cifsacl.d \
./fs/cifs/cifsencrypt.d \
./fs/cifs/cifsfs.d \
./fs/cifs/cifssmb.d \
./fs/cifs/connect.d \
./fs/cifs/dir.d \
./fs/cifs/dns_resolve.d \
./fs/cifs/export.d \
./fs/cifs/file.d \
./fs/cifs/fscache.d \
./fs/cifs/inode.d \
./fs/cifs/ioctl.d \
./fs/cifs/link.d \
./fs/cifs/misc.d \
./fs/cifs/netmisc.d \
./fs/cifs/nterr.d \
./fs/cifs/readdir.d \
./fs/cifs/sess.d \
./fs/cifs/smbencrypt.d \
./fs/cifs/transport.d \
./fs/cifs/xattr.d 


# Each subdirectory must supply rules for building sources it contributes
fs/cifs/%.o: ../fs/cifs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


