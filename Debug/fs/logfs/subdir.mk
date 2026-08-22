################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fs/logfs/compr.c \
../fs/logfs/dev_bdev.c \
../fs/logfs/dev_mtd.c \
../fs/logfs/dir.c \
../fs/logfs/file.c \
../fs/logfs/gc.c \
../fs/logfs/inode.c \
../fs/logfs/journal.c \
../fs/logfs/readwrite.c \
../fs/logfs/segment.c \
../fs/logfs/super.c 

OBJS += \
./fs/logfs/compr.o \
./fs/logfs/dev_bdev.o \
./fs/logfs/dev_mtd.o \
./fs/logfs/dir.o \
./fs/logfs/file.o \
./fs/logfs/gc.o \
./fs/logfs/inode.o \
./fs/logfs/journal.o \
./fs/logfs/readwrite.o \
./fs/logfs/segment.o \
./fs/logfs/super.o 

C_DEPS += \
./fs/logfs/compr.d \
./fs/logfs/dev_bdev.d \
./fs/logfs/dev_mtd.d \
./fs/logfs/dir.d \
./fs/logfs/file.d \
./fs/logfs/gc.d \
./fs/logfs/inode.d \
./fs/logfs/journal.d \
./fs/logfs/readwrite.d \
./fs/logfs/segment.d \
./fs/logfs/super.d 


# Each subdirectory must supply rules for building sources it contributes
fs/logfs/%.o: ../fs/logfs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


