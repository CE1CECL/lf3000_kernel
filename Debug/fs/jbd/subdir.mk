################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../fs/jbd/built-in.o \
../fs/jbd/checkpoint.o \
../fs/jbd/commit.o \
../fs/jbd/jbd.o \
../fs/jbd/journal.o \
../fs/jbd/recovery.o \
../fs/jbd/revoke.o \
../fs/jbd/transaction.o 

C_SRCS += \
../fs/jbd/checkpoint.c \
../fs/jbd/commit.c \
../fs/jbd/journal.c \
../fs/jbd/recovery.c \
../fs/jbd/revoke.c \
../fs/jbd/transaction.c 

OBJS += \
./fs/jbd/checkpoint.o \
./fs/jbd/commit.o \
./fs/jbd/journal.o \
./fs/jbd/recovery.o \
./fs/jbd/revoke.o \
./fs/jbd/transaction.o 

C_DEPS += \
./fs/jbd/checkpoint.d \
./fs/jbd/commit.d \
./fs/jbd/journal.d \
./fs/jbd/recovery.d \
./fs/jbd/revoke.d \
./fs/jbd/transaction.d 


# Each subdirectory must supply rules for building sources it contributes
fs/jbd/%.o: ../fs/jbd/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


