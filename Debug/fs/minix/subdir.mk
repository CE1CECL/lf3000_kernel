################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fs/minix/bitmap.c \
../fs/minix/dir.c \
../fs/minix/file.c \
../fs/minix/inode.c \
../fs/minix/itree_common.c \
../fs/minix/itree_v1.c \
../fs/minix/itree_v2.c \
../fs/minix/namei.c 

OBJS += \
./fs/minix/bitmap.o \
./fs/minix/dir.o \
./fs/minix/file.o \
./fs/minix/inode.o \
./fs/minix/itree_common.o \
./fs/minix/itree_v1.o \
./fs/minix/itree_v2.o \
./fs/minix/namei.o 

C_DEPS += \
./fs/minix/bitmap.d \
./fs/minix/dir.d \
./fs/minix/file.d \
./fs/minix/inode.d \
./fs/minix/itree_common.d \
./fs/minix/itree_v1.d \
./fs/minix/itree_v2.d \
./fs/minix/namei.d 


# Each subdirectory must supply rules for building sources it contributes
fs/minix/%.o: ../fs/minix/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


