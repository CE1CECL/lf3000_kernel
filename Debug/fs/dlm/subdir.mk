################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fs/dlm/ast.c \
../fs/dlm/config.c \
../fs/dlm/debug_fs.c \
../fs/dlm/dir.c \
../fs/dlm/lock.c \
../fs/dlm/lockspace.c \
../fs/dlm/lowcomms.c \
../fs/dlm/main.c \
../fs/dlm/member.c \
../fs/dlm/memory.c \
../fs/dlm/midcomms.c \
../fs/dlm/netlink.c \
../fs/dlm/plock.c \
../fs/dlm/rcom.c \
../fs/dlm/recover.c \
../fs/dlm/recoverd.c \
../fs/dlm/requestqueue.c \
../fs/dlm/user.c \
../fs/dlm/util.c 

OBJS += \
./fs/dlm/ast.o \
./fs/dlm/config.o \
./fs/dlm/debug_fs.o \
./fs/dlm/dir.o \
./fs/dlm/lock.o \
./fs/dlm/lockspace.o \
./fs/dlm/lowcomms.o \
./fs/dlm/main.o \
./fs/dlm/member.o \
./fs/dlm/memory.o \
./fs/dlm/midcomms.o \
./fs/dlm/netlink.o \
./fs/dlm/plock.o \
./fs/dlm/rcom.o \
./fs/dlm/recover.o \
./fs/dlm/recoverd.o \
./fs/dlm/requestqueue.o \
./fs/dlm/user.o \
./fs/dlm/util.o 

C_DEPS += \
./fs/dlm/ast.d \
./fs/dlm/config.d \
./fs/dlm/debug_fs.d \
./fs/dlm/dir.d \
./fs/dlm/lock.d \
./fs/dlm/lockspace.d \
./fs/dlm/lowcomms.d \
./fs/dlm/main.d \
./fs/dlm/member.d \
./fs/dlm/memory.d \
./fs/dlm/midcomms.d \
./fs/dlm/netlink.d \
./fs/dlm/plock.d \
./fs/dlm/rcom.d \
./fs/dlm/recover.d \
./fs/dlm/recoverd.d \
./fs/dlm/requestqueue.d \
./fs/dlm/user.d \
./fs/dlm/util.d 


# Each subdirectory must supply rules for building sources it contributes
fs/dlm/%.o: ../fs/dlm/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


