################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../net/core/built-in.o \
../net/core/datagram.o \
../net/core/dev.o \
../net/core/dev_addr_lists.o \
../net/core/dst.o \
../net/core/ethtool.o \
../net/core/filter.o \
../net/core/flow.o \
../net/core/flow_dissector.o \
../net/core/gen_estimator.o \
../net/core/gen_stats.o \
../net/core/iovec.o \
../net/core/link_watch.o \
../net/core/neighbour.o \
../net/core/net-sysfs.o \
../net/core/net_namespace.o \
../net/core/netevent.o \
../net/core/request_sock.o \
../net/core/rtnetlink.o \
../net/core/scm.o \
../net/core/secure_seq.o \
../net/core/skbuff.o \
../net/core/sock.o \
../net/core/sock_diag.o \
../net/core/stream.o \
../net/core/sysctl_net_core.o \
../net/core/utils.o 

C_SRCS += \
../net/core/datagram.c \
../net/core/dev.c \
../net/core/dev_addr_lists.c \
../net/core/drop_monitor.c \
../net/core/dst.c \
../net/core/ethtool.c \
../net/core/fib_rules.c \
../net/core/filter.c \
../net/core/flow.c \
../net/core/flow_dissector.c \
../net/core/gen_estimator.c \
../net/core/gen_stats.c \
../net/core/iovec.c \
../net/core/link_watch.c \
../net/core/neighbour.c \
../net/core/net-sysfs.c \
../net/core/net-traces.c \
../net/core/net_namespace.c \
../net/core/netevent.c \
../net/core/netpoll.c \
../net/core/netprio_cgroup.c \
../net/core/pktgen.c \
../net/core/request_sock.c \
../net/core/rtnetlink.c \
../net/core/scm.c \
../net/core/secure_seq.c \
../net/core/skbuff.c \
../net/core/sock.c \
../net/core/sock_diag.c \
../net/core/stream.c \
../net/core/sysctl_net_core.c \
../net/core/timestamping.c \
../net/core/user_dma.c \
../net/core/utils.c 

OBJS += \
./net/core/datagram.o \
./net/core/dev.o \
./net/core/dev_addr_lists.o \
./net/core/drop_monitor.o \
./net/core/dst.o \
./net/core/ethtool.o \
./net/core/fib_rules.o \
./net/core/filter.o \
./net/core/flow.o \
./net/core/flow_dissector.o \
./net/core/gen_estimator.o \
./net/core/gen_stats.o \
./net/core/iovec.o \
./net/core/link_watch.o \
./net/core/neighbour.o \
./net/core/net-sysfs.o \
./net/core/net-traces.o \
./net/core/net_namespace.o \
./net/core/netevent.o \
./net/core/netpoll.o \
./net/core/netprio_cgroup.o \
./net/core/pktgen.o \
./net/core/request_sock.o \
./net/core/rtnetlink.o \
./net/core/scm.o \
./net/core/secure_seq.o \
./net/core/skbuff.o \
./net/core/sock.o \
./net/core/sock_diag.o \
./net/core/stream.o \
./net/core/sysctl_net_core.o \
./net/core/timestamping.o \
./net/core/user_dma.o \
./net/core/utils.o 

C_DEPS += \
./net/core/datagram.d \
./net/core/dev.d \
./net/core/dev_addr_lists.d \
./net/core/drop_monitor.d \
./net/core/dst.d \
./net/core/ethtool.d \
./net/core/fib_rules.d \
./net/core/filter.d \
./net/core/flow.d \
./net/core/flow_dissector.d \
./net/core/gen_estimator.d \
./net/core/gen_stats.d \
./net/core/iovec.d \
./net/core/link_watch.d \
./net/core/neighbour.d \
./net/core/net-sysfs.d \
./net/core/net-traces.d \
./net/core/net_namespace.d \
./net/core/netevent.d \
./net/core/netpoll.d \
./net/core/netprio_cgroup.d \
./net/core/pktgen.d \
./net/core/request_sock.d \
./net/core/rtnetlink.d \
./net/core/scm.d \
./net/core/secure_seq.d \
./net/core/skbuff.d \
./net/core/sock.d \
./net/core/sock_diag.d \
./net/core/stream.d \
./net/core/sysctl_net_core.d \
./net/core/timestamping.d \
./net/core/user_dma.d \
./net/core/utils.d 


# Each subdirectory must supply rules for building sources it contributes
net/core/%.o: ../net/core/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


