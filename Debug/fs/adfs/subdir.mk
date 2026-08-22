################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fs/adfs/dir.c \
../fs/adfs/dir_f.c \
../fs/adfs/dir_fplus.c \
../fs/adfs/file.c \
../fs/adfs/inode.c \
../fs/adfs/map.c \
../fs/adfs/super.c 

OBJS += \
./fs/adfs/dir.o \
./fs/adfs/dir_f.o \
./fs/adfs/dir_fplus.o \
./fs/adfs/file.o \
./fs/adfs/inode.o \
./fs/adfs/map.o \
./fs/adfs/super.o 

C_DEPS += \
./fs/adfs/dir.d \
./fs/adfs/dir_f.d \
./fs/adfs/dir_fplus.d \
./fs/adfs/file.d \
./fs/adfs/inode.d \
./fs/adfs/map.d \
./fs/adfs/super.d 


# Each subdirectory must supply rules for building sources it contributes
fs/adfs/%.o: ../fs/adfs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


