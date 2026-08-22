################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../fs/autofs4/autofs4.o \
../fs/autofs4/built-in.o \
../fs/autofs4/dev-ioctl.o \
../fs/autofs4/expire.o \
../fs/autofs4/init.o \
../fs/autofs4/inode.o \
../fs/autofs4/root.o \
../fs/autofs4/symlink.o \
../fs/autofs4/waitq.o 

C_SRCS += \
../fs/autofs4/dev-ioctl.c \
../fs/autofs4/expire.c \
../fs/autofs4/init.c \
../fs/autofs4/inode.c \
../fs/autofs4/root.c \
../fs/autofs4/symlink.c \
../fs/autofs4/waitq.c 

OBJS += \
./fs/autofs4/dev-ioctl.o \
./fs/autofs4/expire.o \
./fs/autofs4/init.o \
./fs/autofs4/inode.o \
./fs/autofs4/root.o \
./fs/autofs4/symlink.o \
./fs/autofs4/waitq.o 

C_DEPS += \
./fs/autofs4/dev-ioctl.d \
./fs/autofs4/expire.d \
./fs/autofs4/init.d \
./fs/autofs4/inode.d \
./fs/autofs4/root.d \
./fs/autofs4/symlink.d \
./fs/autofs4/waitq.d 


# Each subdirectory must supply rules for building sources it contributes
fs/autofs4/%.o: ../fs/autofs4/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


