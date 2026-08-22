################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fs/squashfs/block.c \
../fs/squashfs/cache.c \
../fs/squashfs/decompressor.c \
../fs/squashfs/dir.c \
../fs/squashfs/export.c \
../fs/squashfs/file.c \
../fs/squashfs/fragment.c \
../fs/squashfs/id.c \
../fs/squashfs/inode.c \
../fs/squashfs/lzo_wrapper.c \
../fs/squashfs/namei.c \
../fs/squashfs/super.c \
../fs/squashfs/symlink.c \
../fs/squashfs/xattr.c \
../fs/squashfs/xattr_id.c \
../fs/squashfs/xz_wrapper.c \
../fs/squashfs/zlib_wrapper.c 

OBJS += \
./fs/squashfs/block.o \
./fs/squashfs/cache.o \
./fs/squashfs/decompressor.o \
./fs/squashfs/dir.o \
./fs/squashfs/export.o \
./fs/squashfs/file.o \
./fs/squashfs/fragment.o \
./fs/squashfs/id.o \
./fs/squashfs/inode.o \
./fs/squashfs/lzo_wrapper.o \
./fs/squashfs/namei.o \
./fs/squashfs/super.o \
./fs/squashfs/symlink.o \
./fs/squashfs/xattr.o \
./fs/squashfs/xattr_id.o \
./fs/squashfs/xz_wrapper.o \
./fs/squashfs/zlib_wrapper.o 

C_DEPS += \
./fs/squashfs/block.d \
./fs/squashfs/cache.d \
./fs/squashfs/decompressor.d \
./fs/squashfs/dir.d \
./fs/squashfs/export.d \
./fs/squashfs/file.d \
./fs/squashfs/fragment.d \
./fs/squashfs/id.d \
./fs/squashfs/inode.d \
./fs/squashfs/lzo_wrapper.d \
./fs/squashfs/namei.d \
./fs/squashfs/super.d \
./fs/squashfs/symlink.d \
./fs/squashfs/xattr.d \
./fs/squashfs/xattr_id.d \
./fs/squashfs/xz_wrapper.d \
./fs/squashfs/zlib_wrapper.d 


# Each subdirectory must supply rules for building sources it contributes
fs/squashfs/%.o: ../fs/squashfs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


