################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../fs/jbd2/built-in.o \
../fs/jbd2/checkpoint.o \
../fs/jbd2/commit.o \
../fs/jbd2/jbd2.o \
../fs/jbd2/journal.o \
../fs/jbd2/recovery.o \
../fs/jbd2/revoke.o \
../fs/jbd2/transaction.o 

C_SRCS += \
../fs/jbd2/checkpoint.c \
../fs/jbd2/commit.c \
../fs/jbd2/journal.c \
../fs/jbd2/recovery.c \
../fs/jbd2/revoke.c \
../fs/jbd2/transaction.c 

OBJS += \
./fs/jbd2/checkpoint.o \
./fs/jbd2/commit.o \
./fs/jbd2/journal.o \
./fs/jbd2/recovery.o \
./fs/jbd2/revoke.o \
./fs/jbd2/transaction.o 

C_DEPS += \
./fs/jbd2/checkpoint.d \
./fs/jbd2/commit.d \
./fs/jbd2/journal.d \
./fs/jbd2/recovery.d \
./fs/jbd2/revoke.d \
./fs/jbd2/transaction.d 


# Each subdirectory must supply rules for building sources it contributes
fs/jbd2/%.o: ../fs/jbd2/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


