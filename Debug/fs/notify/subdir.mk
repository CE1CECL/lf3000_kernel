################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../fs/notify/built-in.o \
../fs/notify/fsnotify.o \
../fs/notify/group.o \
../fs/notify/inode_mark.o \
../fs/notify/mark.o \
../fs/notify/notification.o \
../fs/notify/vfsmount_mark.o 

C_SRCS += \
../fs/notify/fsnotify.c \
../fs/notify/group.c \
../fs/notify/inode_mark.c \
../fs/notify/mark.c \
../fs/notify/notification.c \
../fs/notify/vfsmount_mark.c 

OBJS += \
./fs/notify/fsnotify.o \
./fs/notify/group.o \
./fs/notify/inode_mark.o \
./fs/notify/mark.o \
./fs/notify/notification.o \
./fs/notify/vfsmount_mark.o 

C_DEPS += \
./fs/notify/fsnotify.d \
./fs/notify/group.d \
./fs/notify/inode_mark.d \
./fs/notify/mark.d \
./fs/notify/notification.d \
./fs/notify/vfsmount_mark.d 


# Each subdirectory must supply rules for building sources it contributes
fs/notify/%.o: ../fs/notify/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


