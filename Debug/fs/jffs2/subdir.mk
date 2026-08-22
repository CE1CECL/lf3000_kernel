################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fs/jffs2/acl.c \
../fs/jffs2/background.c \
../fs/jffs2/build.c \
../fs/jffs2/compr.c \
../fs/jffs2/compr_lzo.c \
../fs/jffs2/compr_rtime.c \
../fs/jffs2/compr_rubin.c \
../fs/jffs2/compr_zlib.c \
../fs/jffs2/debug.c \
../fs/jffs2/dir.c \
../fs/jffs2/erase.c \
../fs/jffs2/file.c \
../fs/jffs2/fs.c \
../fs/jffs2/gc.c \
../fs/jffs2/ioctl.c \
../fs/jffs2/malloc.c \
../fs/jffs2/nodelist.c \
../fs/jffs2/nodemgmt.c \
../fs/jffs2/read.c \
../fs/jffs2/readinode.c \
../fs/jffs2/scan.c \
../fs/jffs2/security.c \
../fs/jffs2/summary.c \
../fs/jffs2/super.c \
../fs/jffs2/symlink.c \
../fs/jffs2/wbuf.c \
../fs/jffs2/write.c \
../fs/jffs2/writev.c \
../fs/jffs2/xattr.c \
../fs/jffs2/xattr_trusted.c \
../fs/jffs2/xattr_user.c 

OBJS += \
./fs/jffs2/acl.o \
./fs/jffs2/background.o \
./fs/jffs2/build.o \
./fs/jffs2/compr.o \
./fs/jffs2/compr_lzo.o \
./fs/jffs2/compr_rtime.o \
./fs/jffs2/compr_rubin.o \
./fs/jffs2/compr_zlib.o \
./fs/jffs2/debug.o \
./fs/jffs2/dir.o \
./fs/jffs2/erase.o \
./fs/jffs2/file.o \
./fs/jffs2/fs.o \
./fs/jffs2/gc.o \
./fs/jffs2/ioctl.o \
./fs/jffs2/malloc.o \
./fs/jffs2/nodelist.o \
./fs/jffs2/nodemgmt.o \
./fs/jffs2/read.o \
./fs/jffs2/readinode.o \
./fs/jffs2/scan.o \
./fs/jffs2/security.o \
./fs/jffs2/summary.o \
./fs/jffs2/super.o \
./fs/jffs2/symlink.o \
./fs/jffs2/wbuf.o \
./fs/jffs2/write.o \
./fs/jffs2/writev.o \
./fs/jffs2/xattr.o \
./fs/jffs2/xattr_trusted.o \
./fs/jffs2/xattr_user.o 

C_DEPS += \
./fs/jffs2/acl.d \
./fs/jffs2/background.d \
./fs/jffs2/build.d \
./fs/jffs2/compr.d \
./fs/jffs2/compr_lzo.d \
./fs/jffs2/compr_rtime.d \
./fs/jffs2/compr_rubin.d \
./fs/jffs2/compr_zlib.d \
./fs/jffs2/debug.d \
./fs/jffs2/dir.d \
./fs/jffs2/erase.d \
./fs/jffs2/file.d \
./fs/jffs2/fs.d \
./fs/jffs2/gc.d \
./fs/jffs2/ioctl.d \
./fs/jffs2/malloc.d \
./fs/jffs2/nodelist.d \
./fs/jffs2/nodemgmt.d \
./fs/jffs2/read.d \
./fs/jffs2/readinode.d \
./fs/jffs2/scan.d \
./fs/jffs2/security.d \
./fs/jffs2/summary.d \
./fs/jffs2/super.d \
./fs/jffs2/symlink.d \
./fs/jffs2/wbuf.d \
./fs/jffs2/write.d \
./fs/jffs2/writev.d \
./fs/jffs2/xattr.d \
./fs/jffs2/xattr_trusted.d \
./fs/jffs2/xattr_user.d 


# Each subdirectory must supply rules for building sources it contributes
fs/jffs2/%.o: ../fs/jffs2/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


