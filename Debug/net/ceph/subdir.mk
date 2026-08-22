################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/ceph/armor.c \
../net/ceph/auth.c \
../net/ceph/auth_none.c \
../net/ceph/auth_x.c \
../net/ceph/buffer.c \
../net/ceph/ceph_common.c \
../net/ceph/ceph_fs.c \
../net/ceph/ceph_hash.c \
../net/ceph/ceph_strings.c \
../net/ceph/crypto.c \
../net/ceph/debugfs.c \
../net/ceph/messenger.c \
../net/ceph/mon_client.c \
../net/ceph/msgpool.c \
../net/ceph/osd_client.c \
../net/ceph/osdmap.c \
../net/ceph/pagelist.c \
../net/ceph/pagevec.c 

OBJS += \
./net/ceph/armor.o \
./net/ceph/auth.o \
./net/ceph/auth_none.o \
./net/ceph/auth_x.o \
./net/ceph/buffer.o \
./net/ceph/ceph_common.o \
./net/ceph/ceph_fs.o \
./net/ceph/ceph_hash.o \
./net/ceph/ceph_strings.o \
./net/ceph/crypto.o \
./net/ceph/debugfs.o \
./net/ceph/messenger.o \
./net/ceph/mon_client.o \
./net/ceph/msgpool.o \
./net/ceph/osd_client.o \
./net/ceph/osdmap.o \
./net/ceph/pagelist.o \
./net/ceph/pagevec.o 

C_DEPS += \
./net/ceph/armor.d \
./net/ceph/auth.d \
./net/ceph/auth_none.d \
./net/ceph/auth_x.d \
./net/ceph/buffer.d \
./net/ceph/ceph_common.d \
./net/ceph/ceph_fs.d \
./net/ceph/ceph_hash.d \
./net/ceph/ceph_strings.d \
./net/ceph/crypto.d \
./net/ceph/debugfs.d \
./net/ceph/messenger.d \
./net/ceph/mon_client.d \
./net/ceph/msgpool.d \
./net/ceph/osd_client.d \
./net/ceph/osdmap.d \
./net/ceph/pagelist.d \
./net/ceph/pagevec.d 


# Each subdirectory must supply rules for building sources it contributes
net/ceph/%.o: ../net/ceph/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


