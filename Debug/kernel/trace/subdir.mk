################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../kernel/trace/blktrace.c \
../kernel/trace/ftrace.c \
../kernel/trace/power-traces.c \
../kernel/trace/ring_buffer.c \
../kernel/trace/ring_buffer_benchmark.c \
../kernel/trace/rpm-traces.c \
../kernel/trace/trace.c \
../kernel/trace/trace_branch.c \
../kernel/trace/trace_clock.c \
../kernel/trace/trace_event_perf.c \
../kernel/trace/trace_events.c \
../kernel/trace/trace_events_filter.c \
../kernel/trace/trace_export.c \
../kernel/trace/trace_functions.c \
../kernel/trace/trace_functions_graph.c \
../kernel/trace/trace_irqsoff.c \
../kernel/trace/trace_kdb.c \
../kernel/trace/trace_kprobe.c \
../kernel/trace/trace_mmiotrace.c \
../kernel/trace/trace_nop.c \
../kernel/trace/trace_output.c \
../kernel/trace/trace_printk.c \
../kernel/trace/trace_sched_switch.c \
../kernel/trace/trace_sched_wakeup.c \
../kernel/trace/trace_selftest.c \
../kernel/trace/trace_selftest_dynamic.c \
../kernel/trace/trace_stack.c \
../kernel/trace/trace_stat.c \
../kernel/trace/trace_syscalls.c \
../kernel/trace/trace_workqueue.c 

OBJS += \
./kernel/trace/blktrace.o \
./kernel/trace/ftrace.o \
./kernel/trace/power-traces.o \
./kernel/trace/ring_buffer.o \
./kernel/trace/ring_buffer_benchmark.o \
./kernel/trace/rpm-traces.o \
./kernel/trace/trace.o \
./kernel/trace/trace_branch.o \
./kernel/trace/trace_clock.o \
./kernel/trace/trace_event_perf.o \
./kernel/trace/trace_events.o \
./kernel/trace/trace_events_filter.o \
./kernel/trace/trace_export.o \
./kernel/trace/trace_functions.o \
./kernel/trace/trace_functions_graph.o \
./kernel/trace/trace_irqsoff.o \
./kernel/trace/trace_kdb.o \
./kernel/trace/trace_kprobe.o \
./kernel/trace/trace_mmiotrace.o \
./kernel/trace/trace_nop.o \
./kernel/trace/trace_output.o \
./kernel/trace/trace_printk.o \
./kernel/trace/trace_sched_switch.o \
./kernel/trace/trace_sched_wakeup.o \
./kernel/trace/trace_selftest.o \
./kernel/trace/trace_selftest_dynamic.o \
./kernel/trace/trace_stack.o \
./kernel/trace/trace_stat.o \
./kernel/trace/trace_syscalls.o \
./kernel/trace/trace_workqueue.o 

C_DEPS += \
./kernel/trace/blktrace.d \
./kernel/trace/ftrace.d \
./kernel/trace/power-traces.d \
./kernel/trace/ring_buffer.d \
./kernel/trace/ring_buffer_benchmark.d \
./kernel/trace/rpm-traces.d \
./kernel/trace/trace.d \
./kernel/trace/trace_branch.d \
./kernel/trace/trace_clock.d \
./kernel/trace/trace_event_perf.d \
./kernel/trace/trace_events.d \
./kernel/trace/trace_events_filter.d \
./kernel/trace/trace_export.d \
./kernel/trace/trace_functions.d \
./kernel/trace/trace_functions_graph.d \
./kernel/trace/trace_irqsoff.d \
./kernel/trace/trace_kdb.d \
./kernel/trace/trace_kprobe.d \
./kernel/trace/trace_mmiotrace.d \
./kernel/trace/trace_nop.d \
./kernel/trace/trace_output.d \
./kernel/trace/trace_printk.d \
./kernel/trace/trace_sched_switch.d \
./kernel/trace/trace_sched_wakeup.d \
./kernel/trace/trace_selftest.d \
./kernel/trace/trace_selftest_dynamic.d \
./kernel/trace/trace_stack.d \
./kernel/trace/trace_stat.d \
./kernel/trace/trace_syscalls.d \
./kernel/trace/trace_workqueue.d 


# Each subdirectory must supply rules for building sources it contributes
kernel/trace/%.o: ../kernel/trace/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


