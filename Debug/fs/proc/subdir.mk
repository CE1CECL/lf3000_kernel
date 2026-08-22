################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../fs/proc/array.o \
../fs/proc/base.o \
../fs/proc/built-in.o \
../fs/proc/cmdline.o \
../fs/proc/consoles.o \
../fs/proc/cpuinfo.o \
../fs/proc/devices.o \
../fs/proc/generic.o \
../fs/proc/inode.o \
../fs/proc/interrupts.o \
../fs/proc/kmsg.o \
../fs/proc/loadavg.o \
../fs/proc/meminfo.o \
../fs/proc/mmu.o \
../fs/proc/namespaces.o \
../fs/proc/page.o \
../fs/proc/proc.o \
../fs/proc/proc_net.o \
../fs/proc/proc_sysctl.o \
../fs/proc/proc_tty.o \
../fs/proc/root.o \
../fs/proc/softirqs.o \
../fs/proc/stat.o \
../fs/proc/task_mmu.o \
../fs/proc/uptime.o \
../fs/proc/version.o 

C_SRCS += \
../fs/proc/array.c \
../fs/proc/base.c \
../fs/proc/cmdline.c \
../fs/proc/consoles.c \
../fs/proc/cpuinfo.c \
../fs/proc/devices.c \
../fs/proc/generic.c \
../fs/proc/inode.c \
../fs/proc/interrupts.c \
../fs/proc/kcore.c \
../fs/proc/kmsg.c \
../fs/proc/loadavg.c \
../fs/proc/meminfo.c \
../fs/proc/mmu.c \
../fs/proc/namespaces.c \
../fs/proc/nommu.c \
../fs/proc/page.c \
../fs/proc/proc_devtree.c \
../fs/proc/proc_net.c \
../fs/proc/proc_sysctl.c \
../fs/proc/proc_tty.c \
../fs/proc/root.c \
../fs/proc/softirqs.c \
../fs/proc/stat.c \
../fs/proc/task_mmu.c \
../fs/proc/task_nommu.c \
../fs/proc/uptime.c \
../fs/proc/version.c \
../fs/proc/vmcore.c 

OBJS += \
./fs/proc/array.o \
./fs/proc/base.o \
./fs/proc/cmdline.o \
./fs/proc/consoles.o \
./fs/proc/cpuinfo.o \
./fs/proc/devices.o \
./fs/proc/generic.o \
./fs/proc/inode.o \
./fs/proc/interrupts.o \
./fs/proc/kcore.o \
./fs/proc/kmsg.o \
./fs/proc/loadavg.o \
./fs/proc/meminfo.o \
./fs/proc/mmu.o \
./fs/proc/namespaces.o \
./fs/proc/nommu.o \
./fs/proc/page.o \
./fs/proc/proc_devtree.o \
./fs/proc/proc_net.o \
./fs/proc/proc_sysctl.o \
./fs/proc/proc_tty.o \
./fs/proc/root.o \
./fs/proc/softirqs.o \
./fs/proc/stat.o \
./fs/proc/task_mmu.o \
./fs/proc/task_nommu.o \
./fs/proc/uptime.o \
./fs/proc/version.o \
./fs/proc/vmcore.o 

C_DEPS += \
./fs/proc/array.d \
./fs/proc/base.d \
./fs/proc/cmdline.d \
./fs/proc/consoles.d \
./fs/proc/cpuinfo.d \
./fs/proc/devices.d \
./fs/proc/generic.d \
./fs/proc/inode.d \
./fs/proc/interrupts.d \
./fs/proc/kcore.d \
./fs/proc/kmsg.d \
./fs/proc/loadavg.d \
./fs/proc/meminfo.d \
./fs/proc/mmu.d \
./fs/proc/namespaces.d \
./fs/proc/nommu.d \
./fs/proc/page.d \
./fs/proc/proc_devtree.d \
./fs/proc/proc_net.d \
./fs/proc/proc_sysctl.d \
./fs/proc/proc_tty.d \
./fs/proc/root.d \
./fs/proc/softirqs.d \
./fs/proc/stat.d \
./fs/proc/task_mmu.d \
./fs/proc/task_nommu.d \
./fs/proc/uptime.d \
./fs/proc/version.d \
./fs/proc/vmcore.d 


# Each subdirectory must supply rules for building sources it contributes
fs/proc/%.o: ../fs/proc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


