################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../fs/ramfs/built-in.o \
../fs/ramfs/file-mmu.o \
../fs/ramfs/inode.o \
../fs/ramfs/ramfs.o 

C_SRCS += \
../fs/ramfs/file-mmu.c \
../fs/ramfs/file-nommu.c \
../fs/ramfs/inode.c 

OBJS += \
./fs/ramfs/file-mmu.o \
./fs/ramfs/file-nommu.o \
./fs/ramfs/inode.o 

C_DEPS += \
./fs/ramfs/file-mmu.d \
./fs/ramfs/file-nommu.d \
./fs/ramfs/inode.d 


# Each subdirectory must supply rules for building sources it contributes
fs/ramfs/%.o: ../fs/ramfs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


