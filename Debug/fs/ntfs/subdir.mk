################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../fs/ntfs/aops.o \
../fs/ntfs/attrib.o \
../fs/ntfs/bitmap.o \
../fs/ntfs/built-in.o \
../fs/ntfs/collate.o \
../fs/ntfs/compress.o \
../fs/ntfs/debug.o \
../fs/ntfs/dir.o \
../fs/ntfs/file.o \
../fs/ntfs/index.o \
../fs/ntfs/inode.o \
../fs/ntfs/lcnalloc.o \
../fs/ntfs/logfile.o \
../fs/ntfs/mft.o \
../fs/ntfs/mst.o \
../fs/ntfs/namei.o \
../fs/ntfs/ntfs.o \
../fs/ntfs/quota.o \
../fs/ntfs/runlist.o \
../fs/ntfs/super.o \
../fs/ntfs/sysctl.o \
../fs/ntfs/unistr.o \
../fs/ntfs/upcase.o \
../fs/ntfs/usnjrnl.o 

C_SRCS += \
../fs/ntfs/aops.c \
../fs/ntfs/attrib.c \
../fs/ntfs/bitmap.c \
../fs/ntfs/collate.c \
../fs/ntfs/compress.c \
../fs/ntfs/debug.c \
../fs/ntfs/dir.c \
../fs/ntfs/file.c \
../fs/ntfs/index.c \
../fs/ntfs/inode.c \
../fs/ntfs/lcnalloc.c \
../fs/ntfs/logfile.c \
../fs/ntfs/mft.c \
../fs/ntfs/mst.c \
../fs/ntfs/namei.c \
../fs/ntfs/quota.c \
../fs/ntfs/runlist.c \
../fs/ntfs/super.c \
../fs/ntfs/sysctl.c \
../fs/ntfs/unistr.c \
../fs/ntfs/upcase.c \
../fs/ntfs/usnjrnl.c 

OBJS += \
./fs/ntfs/aops.o \
./fs/ntfs/attrib.o \
./fs/ntfs/bitmap.o \
./fs/ntfs/collate.o \
./fs/ntfs/compress.o \
./fs/ntfs/debug.o \
./fs/ntfs/dir.o \
./fs/ntfs/file.o \
./fs/ntfs/index.o \
./fs/ntfs/inode.o \
./fs/ntfs/lcnalloc.o \
./fs/ntfs/logfile.o \
./fs/ntfs/mft.o \
./fs/ntfs/mst.o \
./fs/ntfs/namei.o \
./fs/ntfs/quota.o \
./fs/ntfs/runlist.o \
./fs/ntfs/super.o \
./fs/ntfs/sysctl.o \
./fs/ntfs/unistr.o \
./fs/ntfs/upcase.o \
./fs/ntfs/usnjrnl.o 

C_DEPS += \
./fs/ntfs/aops.d \
./fs/ntfs/attrib.d \
./fs/ntfs/bitmap.d \
./fs/ntfs/collate.d \
./fs/ntfs/compress.d \
./fs/ntfs/debug.d \
./fs/ntfs/dir.d \
./fs/ntfs/file.d \
./fs/ntfs/index.d \
./fs/ntfs/inode.d \
./fs/ntfs/lcnalloc.d \
./fs/ntfs/logfile.d \
./fs/ntfs/mft.d \
./fs/ntfs/mst.d \
./fs/ntfs/namei.d \
./fs/ntfs/quota.d \
./fs/ntfs/runlist.d \
./fs/ntfs/super.d \
./fs/ntfs/sysctl.d \
./fs/ntfs/unistr.d \
./fs/ntfs/upcase.d \
./fs/ntfs/usnjrnl.d 


# Each subdirectory must supply rules for building sources it contributes
fs/ntfs/%.o: ../fs/ntfs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


