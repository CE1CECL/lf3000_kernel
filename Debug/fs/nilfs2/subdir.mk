################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fs/nilfs2/alloc.c \
../fs/nilfs2/bmap.c \
../fs/nilfs2/btnode.c \
../fs/nilfs2/btree.c \
../fs/nilfs2/cpfile.c \
../fs/nilfs2/dat.c \
../fs/nilfs2/dir.c \
../fs/nilfs2/direct.c \
../fs/nilfs2/file.c \
../fs/nilfs2/gcinode.c \
../fs/nilfs2/ifile.c \
../fs/nilfs2/inode.c \
../fs/nilfs2/ioctl.c \
../fs/nilfs2/mdt.c \
../fs/nilfs2/namei.c \
../fs/nilfs2/page.c \
../fs/nilfs2/recovery.c \
../fs/nilfs2/segbuf.c \
../fs/nilfs2/segment.c \
../fs/nilfs2/sufile.c \
../fs/nilfs2/super.c \
../fs/nilfs2/the_nilfs.c 

OBJS += \
./fs/nilfs2/alloc.o \
./fs/nilfs2/bmap.o \
./fs/nilfs2/btnode.o \
./fs/nilfs2/btree.o \
./fs/nilfs2/cpfile.o \
./fs/nilfs2/dat.o \
./fs/nilfs2/dir.o \
./fs/nilfs2/direct.o \
./fs/nilfs2/file.o \
./fs/nilfs2/gcinode.o \
./fs/nilfs2/ifile.o \
./fs/nilfs2/inode.o \
./fs/nilfs2/ioctl.o \
./fs/nilfs2/mdt.o \
./fs/nilfs2/namei.o \
./fs/nilfs2/page.o \
./fs/nilfs2/recovery.o \
./fs/nilfs2/segbuf.o \
./fs/nilfs2/segment.o \
./fs/nilfs2/sufile.o \
./fs/nilfs2/super.o \
./fs/nilfs2/the_nilfs.o 

C_DEPS += \
./fs/nilfs2/alloc.d \
./fs/nilfs2/bmap.d \
./fs/nilfs2/btnode.d \
./fs/nilfs2/btree.d \
./fs/nilfs2/cpfile.d \
./fs/nilfs2/dat.d \
./fs/nilfs2/dir.d \
./fs/nilfs2/direct.d \
./fs/nilfs2/file.d \
./fs/nilfs2/gcinode.d \
./fs/nilfs2/ifile.d \
./fs/nilfs2/inode.d \
./fs/nilfs2/ioctl.d \
./fs/nilfs2/mdt.d \
./fs/nilfs2/namei.d \
./fs/nilfs2/page.d \
./fs/nilfs2/recovery.d \
./fs/nilfs2/segbuf.d \
./fs/nilfs2/segment.d \
./fs/nilfs2/sufile.d \
./fs/nilfs2/super.d \
./fs/nilfs2/the_nilfs.d 


# Each subdirectory must supply rules for building sources it contributes
fs/nilfs2/%.o: ../fs/nilfs2/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


