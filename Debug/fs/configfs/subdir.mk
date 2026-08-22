################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fs/configfs/dir.c \
../fs/configfs/file.c \
../fs/configfs/inode.c \
../fs/configfs/item.c \
../fs/configfs/mount.c \
../fs/configfs/symlink.c 

OBJS += \
./fs/configfs/dir.o \
./fs/configfs/file.o \
./fs/configfs/inode.o \
./fs/configfs/item.o \
./fs/configfs/mount.o \
./fs/configfs/symlink.o 

C_DEPS += \
./fs/configfs/dir.d \
./fs/configfs/file.d \
./fs/configfs/inode.d \
./fs/configfs/item.d \
./fs/configfs/mount.d \
./fs/configfs/symlink.d 


# Each subdirectory must supply rules for building sources it contributes
fs/configfs/%.o: ../fs/configfs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


