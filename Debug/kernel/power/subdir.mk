################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../kernel/power/built-in.o \
../kernel/power/console.o \
../kernel/power/main.o \
../kernel/power/poweroff.o \
../kernel/power/process.o \
../kernel/power/qos.o \
../kernel/power/suspend.o 

C_SRCS += \
../kernel/power/autosleep.c \
../kernel/power/block_io.c \
../kernel/power/console.c \
../kernel/power/hibernate.c \
../kernel/power/main.c \
../kernel/power/poweroff.c \
../kernel/power/process.c \
../kernel/power/qos.c \
../kernel/power/snapshot.c \
../kernel/power/suspend.c \
../kernel/power/suspend_test.c \
../kernel/power/suspend_time.c \
../kernel/power/swap.c \
../kernel/power/user.c \
../kernel/power/wakelock.c 

OBJS += \
./kernel/power/autosleep.o \
./kernel/power/block_io.o \
./kernel/power/console.o \
./kernel/power/hibernate.o \
./kernel/power/main.o \
./kernel/power/poweroff.o \
./kernel/power/process.o \
./kernel/power/qos.o \
./kernel/power/snapshot.o \
./kernel/power/suspend.o \
./kernel/power/suspend_test.o \
./kernel/power/suspend_time.o \
./kernel/power/swap.o \
./kernel/power/user.o \
./kernel/power/wakelock.o 

C_DEPS += \
./kernel/power/autosleep.d \
./kernel/power/block_io.d \
./kernel/power/console.d \
./kernel/power/hibernate.d \
./kernel/power/main.d \
./kernel/power/poweroff.d \
./kernel/power/process.d \
./kernel/power/qos.d \
./kernel/power/snapshot.d \
./kernel/power/suspend.d \
./kernel/power/suspend_test.d \
./kernel/power/suspend_time.d \
./kernel/power/swap.d \
./kernel/power/user.d \
./kernel/power/wakelock.d 


# Each subdirectory must supply rules for building sources it contributes
kernel/power/%.o: ../kernel/power/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


