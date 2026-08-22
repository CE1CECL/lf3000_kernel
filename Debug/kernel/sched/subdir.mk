################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../kernel/sched/built-in.o \
../kernel/sched/clock.o \
../kernel/sched/core.o \
../kernel/sched/debug.o \
../kernel/sched/fair.o \
../kernel/sched/idle_task.o \
../kernel/sched/rt.o \
../kernel/sched/stats.o \
../kernel/sched/stop_task.o 

C_SRCS += \
../kernel/sched/auto_group.c \
../kernel/sched/clock.c \
../kernel/sched/core.c \
../kernel/sched/cpupri.c \
../kernel/sched/debug.c \
../kernel/sched/fair.c \
../kernel/sched/idle_task.c \
../kernel/sched/rt.c \
../kernel/sched/stats.c \
../kernel/sched/stop_task.c 

OBJS += \
./kernel/sched/auto_group.o \
./kernel/sched/clock.o \
./kernel/sched/core.o \
./kernel/sched/cpupri.o \
./kernel/sched/debug.o \
./kernel/sched/fair.o \
./kernel/sched/idle_task.o \
./kernel/sched/rt.o \
./kernel/sched/stats.o \
./kernel/sched/stop_task.o 

C_DEPS += \
./kernel/sched/auto_group.d \
./kernel/sched/clock.d \
./kernel/sched/core.d \
./kernel/sched/cpupri.d \
./kernel/sched/debug.d \
./kernel/sched/fair.d \
./kernel/sched/idle_task.d \
./kernel/sched/rt.d \
./kernel/sched/stats.d \
./kernel/sched/stop_task.d 


# Each subdirectory must supply rules for building sources it contributes
kernel/sched/%.o: ../kernel/sched/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


