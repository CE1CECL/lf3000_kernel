################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fs/hfsplus/bfind.c \
../fs/hfsplus/bitmap.c \
../fs/hfsplus/bnode.c \
../fs/hfsplus/brec.c \
../fs/hfsplus/btree.c \
../fs/hfsplus/catalog.c \
../fs/hfsplus/dir.c \
../fs/hfsplus/extents.c \
../fs/hfsplus/inode.c \
../fs/hfsplus/ioctl.c \
../fs/hfsplus/options.c \
../fs/hfsplus/part_tbl.c \
../fs/hfsplus/super.c \
../fs/hfsplus/tables.c \
../fs/hfsplus/unicode.c \
../fs/hfsplus/wrapper.c 

OBJS += \
./fs/hfsplus/bfind.o \
./fs/hfsplus/bitmap.o \
./fs/hfsplus/bnode.o \
./fs/hfsplus/brec.o \
./fs/hfsplus/btree.o \
./fs/hfsplus/catalog.o \
./fs/hfsplus/dir.o \
./fs/hfsplus/extents.o \
./fs/hfsplus/inode.o \
./fs/hfsplus/ioctl.o \
./fs/hfsplus/options.o \
./fs/hfsplus/part_tbl.o \
./fs/hfsplus/super.o \
./fs/hfsplus/tables.o \
./fs/hfsplus/unicode.o \
./fs/hfsplus/wrapper.o 

C_DEPS += \
./fs/hfsplus/bfind.d \
./fs/hfsplus/bitmap.d \
./fs/hfsplus/bnode.d \
./fs/hfsplus/brec.d \
./fs/hfsplus/btree.d \
./fs/hfsplus/catalog.d \
./fs/hfsplus/dir.d \
./fs/hfsplus/extents.d \
./fs/hfsplus/inode.d \
./fs/hfsplus/ioctl.d \
./fs/hfsplus/options.d \
./fs/hfsplus/part_tbl.d \
./fs/hfsplus/super.d \
./fs/hfsplus/tables.d \
./fs/hfsplus/unicode.d \
./fs/hfsplus/wrapper.d 


# Each subdirectory must supply rules for building sources it contributes
fs/hfsplus/%.o: ../fs/hfsplus/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


