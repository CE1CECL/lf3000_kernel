################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fs/cachefiles/bind.c \
../fs/cachefiles/daemon.c \
../fs/cachefiles/interface.c \
../fs/cachefiles/key.c \
../fs/cachefiles/main.c \
../fs/cachefiles/namei.c \
../fs/cachefiles/proc.c \
../fs/cachefiles/rdwr.c \
../fs/cachefiles/security.c \
../fs/cachefiles/xattr.c 

OBJS += \
./fs/cachefiles/bind.o \
./fs/cachefiles/daemon.o \
./fs/cachefiles/interface.o \
./fs/cachefiles/key.o \
./fs/cachefiles/main.o \
./fs/cachefiles/namei.o \
./fs/cachefiles/proc.o \
./fs/cachefiles/rdwr.o \
./fs/cachefiles/security.o \
./fs/cachefiles/xattr.o 

C_DEPS += \
./fs/cachefiles/bind.d \
./fs/cachefiles/daemon.d \
./fs/cachefiles/interface.d \
./fs/cachefiles/key.d \
./fs/cachefiles/main.d \
./fs/cachefiles/namei.d \
./fs/cachefiles/proc.d \
./fs/cachefiles/rdwr.d \
./fs/cachefiles/security.d \
./fs/cachefiles/xattr.d 


# Each subdirectory must supply rules for building sources it contributes
fs/cachefiles/%.o: ../fs/cachefiles/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


