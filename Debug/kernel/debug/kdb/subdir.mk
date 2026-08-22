################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../kernel/debug/kdb/kdb_bp.c \
../kernel/debug/kdb/kdb_bt.c \
../kernel/debug/kdb/kdb_debugger.c \
../kernel/debug/kdb/kdb_io.c \
../kernel/debug/kdb/kdb_keyboard.c \
../kernel/debug/kdb/kdb_main.c \
../kernel/debug/kdb/kdb_support.c 

OBJS += \
./kernel/debug/kdb/kdb_bp.o \
./kernel/debug/kdb/kdb_bt.o \
./kernel/debug/kdb/kdb_debugger.o \
./kernel/debug/kdb/kdb_io.o \
./kernel/debug/kdb/kdb_keyboard.o \
./kernel/debug/kdb/kdb_main.o \
./kernel/debug/kdb/kdb_support.o 

C_DEPS += \
./kernel/debug/kdb/kdb_bp.d \
./kernel/debug/kdb/kdb_bt.d \
./kernel/debug/kdb/kdb_debugger.d \
./kernel/debug/kdb/kdb_io.d \
./kernel/debug/kdb/kdb_keyboard.d \
./kernel/debug/kdb/kdb_main.d \
./kernel/debug/kdb/kdb_support.d 


# Each subdirectory must supply rules for building sources it contributes
kernel/debug/kdb/%.o: ../kernel/debug/kdb/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


