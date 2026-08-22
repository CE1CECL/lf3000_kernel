################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fs/afs/cache.c \
../fs/afs/callback.c \
../fs/afs/cell.c \
../fs/afs/cmservice.c \
../fs/afs/dir.c \
../fs/afs/file.c \
../fs/afs/flock.c \
../fs/afs/fsclient.c \
../fs/afs/inode.c \
../fs/afs/main.c \
../fs/afs/misc.c \
../fs/afs/mntpt.c \
../fs/afs/netdevices.c \
../fs/afs/proc.c \
../fs/afs/rxrpc.c \
../fs/afs/security.c \
../fs/afs/server.c \
../fs/afs/super.c \
../fs/afs/vlclient.c \
../fs/afs/vlocation.c \
../fs/afs/vnode.c \
../fs/afs/volume.c \
../fs/afs/write.c 

OBJS += \
./fs/afs/cache.o \
./fs/afs/callback.o \
./fs/afs/cell.o \
./fs/afs/cmservice.o \
./fs/afs/dir.o \
./fs/afs/file.o \
./fs/afs/flock.o \
./fs/afs/fsclient.o \
./fs/afs/inode.o \
./fs/afs/main.o \
./fs/afs/misc.o \
./fs/afs/mntpt.o \
./fs/afs/netdevices.o \
./fs/afs/proc.o \
./fs/afs/rxrpc.o \
./fs/afs/security.o \
./fs/afs/server.o \
./fs/afs/super.o \
./fs/afs/vlclient.o \
./fs/afs/vlocation.o \
./fs/afs/vnode.o \
./fs/afs/volume.o \
./fs/afs/write.o 

C_DEPS += \
./fs/afs/cache.d \
./fs/afs/callback.d \
./fs/afs/cell.d \
./fs/afs/cmservice.d \
./fs/afs/dir.d \
./fs/afs/file.d \
./fs/afs/flock.d \
./fs/afs/fsclient.d \
./fs/afs/inode.d \
./fs/afs/main.d \
./fs/afs/misc.d \
./fs/afs/mntpt.d \
./fs/afs/netdevices.d \
./fs/afs/proc.d \
./fs/afs/rxrpc.d \
./fs/afs/security.d \
./fs/afs/server.d \
./fs/afs/super.d \
./fs/afs/vlclient.d \
./fs/afs/vlocation.d \
./fs/afs/vnode.d \
./fs/afs/volume.d \
./fs/afs/write.d 


# Each subdirectory must supply rules for building sources it contributes
fs/afs/%.o: ../fs/afs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


