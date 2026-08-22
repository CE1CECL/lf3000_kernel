################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fs/isofs/compress.c \
../fs/isofs/dir.c \
../fs/isofs/export.c \
../fs/isofs/inode.c \
../fs/isofs/joliet.c \
../fs/isofs/namei.c \
../fs/isofs/rock.c \
../fs/isofs/util.c 

OBJS += \
./fs/isofs/compress.o \
./fs/isofs/dir.o \
./fs/isofs/export.o \
./fs/isofs/inode.o \
./fs/isofs/joliet.o \
./fs/isofs/namei.o \
./fs/isofs/rock.o \
./fs/isofs/util.o 

C_DEPS += \
./fs/isofs/compress.d \
./fs/isofs/dir.d \
./fs/isofs/export.d \
./fs/isofs/inode.d \
./fs/isofs/joliet.d \
./fs/isofs/namei.d \
./fs/isofs/rock.d \
./fs/isofs/util.d 


# Each subdirectory must supply rules for building sources it contributes
fs/isofs/%.o: ../fs/isofs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


