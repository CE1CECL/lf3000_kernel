################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fs/ubifs/budget.c \
../fs/ubifs/commit.c \
../fs/ubifs/compress.c \
../fs/ubifs/debug.c \
../fs/ubifs/dir.c \
../fs/ubifs/file.c \
../fs/ubifs/find.c \
../fs/ubifs/gc.c \
../fs/ubifs/io.c \
../fs/ubifs/ioctl.c \
../fs/ubifs/journal.c \
../fs/ubifs/log.c \
../fs/ubifs/lprops.c \
../fs/ubifs/lpt.c \
../fs/ubifs/lpt_commit.c \
../fs/ubifs/master.c \
../fs/ubifs/orphan.c \
../fs/ubifs/recovery.c \
../fs/ubifs/replay.c \
../fs/ubifs/sb.c \
../fs/ubifs/scan.c \
../fs/ubifs/shrinker.c \
../fs/ubifs/super.c \
../fs/ubifs/tnc.c \
../fs/ubifs/tnc_commit.c \
../fs/ubifs/tnc_misc.c \
../fs/ubifs/xattr.c 

OBJS += \
./fs/ubifs/budget.o \
./fs/ubifs/commit.o \
./fs/ubifs/compress.o \
./fs/ubifs/debug.o \
./fs/ubifs/dir.o \
./fs/ubifs/file.o \
./fs/ubifs/find.o \
./fs/ubifs/gc.o \
./fs/ubifs/io.o \
./fs/ubifs/ioctl.o \
./fs/ubifs/journal.o \
./fs/ubifs/log.o \
./fs/ubifs/lprops.o \
./fs/ubifs/lpt.o \
./fs/ubifs/lpt_commit.o \
./fs/ubifs/master.o \
./fs/ubifs/orphan.o \
./fs/ubifs/recovery.o \
./fs/ubifs/replay.o \
./fs/ubifs/sb.o \
./fs/ubifs/scan.o \
./fs/ubifs/shrinker.o \
./fs/ubifs/super.o \
./fs/ubifs/tnc.o \
./fs/ubifs/tnc_commit.o \
./fs/ubifs/tnc_misc.o \
./fs/ubifs/xattr.o 

C_DEPS += \
./fs/ubifs/budget.d \
./fs/ubifs/commit.d \
./fs/ubifs/compress.d \
./fs/ubifs/debug.d \
./fs/ubifs/dir.d \
./fs/ubifs/file.d \
./fs/ubifs/find.d \
./fs/ubifs/gc.d \
./fs/ubifs/io.d \
./fs/ubifs/ioctl.d \
./fs/ubifs/journal.d \
./fs/ubifs/log.d \
./fs/ubifs/lprops.d \
./fs/ubifs/lpt.d \
./fs/ubifs/lpt_commit.d \
./fs/ubifs/master.d \
./fs/ubifs/orphan.d \
./fs/ubifs/recovery.d \
./fs/ubifs/replay.d \
./fs/ubifs/sb.d \
./fs/ubifs/scan.d \
./fs/ubifs/shrinker.d \
./fs/ubifs/super.d \
./fs/ubifs/tnc.d \
./fs/ubifs/tnc_commit.d \
./fs/ubifs/tnc_misc.d \
./fs/ubifs/xattr.d 


# Each subdirectory must supply rules for building sources it contributes
fs/ubifs/%.o: ../fs/ubifs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


