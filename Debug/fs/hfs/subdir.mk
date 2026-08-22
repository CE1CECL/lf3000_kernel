################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fs/hfs/attr.c \
../fs/hfs/bfind.c \
../fs/hfs/bitmap.c \
../fs/hfs/bnode.c \
../fs/hfs/brec.c \
../fs/hfs/btree.c \
../fs/hfs/catalog.c \
../fs/hfs/dir.c \
../fs/hfs/extent.c \
../fs/hfs/inode.c \
../fs/hfs/mdb.c \
../fs/hfs/part_tbl.c \
../fs/hfs/string.c \
../fs/hfs/super.c \
../fs/hfs/sysdep.c \
../fs/hfs/trans.c 

OBJS += \
./fs/hfs/attr.o \
./fs/hfs/bfind.o \
./fs/hfs/bitmap.o \
./fs/hfs/bnode.o \
./fs/hfs/brec.o \
./fs/hfs/btree.o \
./fs/hfs/catalog.o \
./fs/hfs/dir.o \
./fs/hfs/extent.o \
./fs/hfs/inode.o \
./fs/hfs/mdb.o \
./fs/hfs/part_tbl.o \
./fs/hfs/string.o \
./fs/hfs/super.o \
./fs/hfs/sysdep.o \
./fs/hfs/trans.o 

C_DEPS += \
./fs/hfs/attr.d \
./fs/hfs/bfind.d \
./fs/hfs/bitmap.d \
./fs/hfs/bnode.d \
./fs/hfs/brec.d \
./fs/hfs/btree.d \
./fs/hfs/catalog.d \
./fs/hfs/dir.d \
./fs/hfs/extent.d \
./fs/hfs/inode.d \
./fs/hfs/mdb.d \
./fs/hfs/part_tbl.d \
./fs/hfs/string.d \
./fs/hfs/super.d \
./fs/hfs/sysdep.d \
./fs/hfs/trans.d 


# Each subdirectory must supply rules for building sources it contributes
fs/hfs/%.o: ../fs/hfs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


