################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../fs/exofs/built-in.o 

C_SRCS += \
../fs/exofs/dir.c \
../fs/exofs/file.c \
../fs/exofs/inode.c \
../fs/exofs/namei.c \
../fs/exofs/ore.c \
../fs/exofs/ore_raid.c \
../fs/exofs/super.c \
../fs/exofs/symlink.c 

OBJS += \
./fs/exofs/dir.o \
./fs/exofs/file.o \
./fs/exofs/inode.o \
./fs/exofs/namei.o \
./fs/exofs/ore.o \
./fs/exofs/ore_raid.o \
./fs/exofs/super.o \
./fs/exofs/symlink.o 

C_DEPS += \
./fs/exofs/dir.d \
./fs/exofs/file.d \
./fs/exofs/inode.d \
./fs/exofs/namei.d \
./fs/exofs/ore.d \
./fs/exofs/ore_raid.d \
./fs/exofs/super.d \
./fs/exofs/symlink.d 


# Each subdirectory must supply rules for building sources it contributes
fs/exofs/%.o: ../fs/exofs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


