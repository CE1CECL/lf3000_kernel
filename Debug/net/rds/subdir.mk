################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/rds/af_rds.c \
../net/rds/bind.c \
../net/rds/cong.c \
../net/rds/connection.c \
../net/rds/ib.c \
../net/rds/ib_cm.c \
../net/rds/ib_rdma.c \
../net/rds/ib_recv.c \
../net/rds/ib_ring.c \
../net/rds/ib_send.c \
../net/rds/ib_stats.c \
../net/rds/ib_sysctl.c \
../net/rds/info.c \
../net/rds/iw.c \
../net/rds/iw_cm.c \
../net/rds/iw_rdma.c \
../net/rds/iw_recv.c \
../net/rds/iw_ring.c \
../net/rds/iw_send.c \
../net/rds/iw_stats.c \
../net/rds/iw_sysctl.c \
../net/rds/loop.c \
../net/rds/message.c \
../net/rds/page.c \
../net/rds/rdma.c \
../net/rds/rdma_transport.c \
../net/rds/recv.c \
../net/rds/send.c \
../net/rds/stats.c \
../net/rds/sysctl.c \
../net/rds/tcp.c \
../net/rds/tcp_connect.c \
../net/rds/tcp_listen.c \
../net/rds/tcp_recv.c \
../net/rds/tcp_send.c \
../net/rds/tcp_stats.c \
../net/rds/threads.c \
../net/rds/transport.c 

OBJS += \
./net/rds/af_rds.o \
./net/rds/bind.o \
./net/rds/cong.o \
./net/rds/connection.o \
./net/rds/ib.o \
./net/rds/ib_cm.o \
./net/rds/ib_rdma.o \
./net/rds/ib_recv.o \
./net/rds/ib_ring.o \
./net/rds/ib_send.o \
./net/rds/ib_stats.o \
./net/rds/ib_sysctl.o \
./net/rds/info.o \
./net/rds/iw.o \
./net/rds/iw_cm.o \
./net/rds/iw_rdma.o \
./net/rds/iw_recv.o \
./net/rds/iw_ring.o \
./net/rds/iw_send.o \
./net/rds/iw_stats.o \
./net/rds/iw_sysctl.o \
./net/rds/loop.o \
./net/rds/message.o \
./net/rds/page.o \
./net/rds/rdma.o \
./net/rds/rdma_transport.o \
./net/rds/recv.o \
./net/rds/send.o \
./net/rds/stats.o \
./net/rds/sysctl.o \
./net/rds/tcp.o \
./net/rds/tcp_connect.o \
./net/rds/tcp_listen.o \
./net/rds/tcp_recv.o \
./net/rds/tcp_send.o \
./net/rds/tcp_stats.o \
./net/rds/threads.o \
./net/rds/transport.o 

C_DEPS += \
./net/rds/af_rds.d \
./net/rds/bind.d \
./net/rds/cong.d \
./net/rds/connection.d \
./net/rds/ib.d \
./net/rds/ib_cm.d \
./net/rds/ib_rdma.d \
./net/rds/ib_recv.d \
./net/rds/ib_ring.d \
./net/rds/ib_send.d \
./net/rds/ib_stats.d \
./net/rds/ib_sysctl.d \
./net/rds/info.d \
./net/rds/iw.d \
./net/rds/iw_cm.d \
./net/rds/iw_rdma.d \
./net/rds/iw_recv.d \
./net/rds/iw_ring.d \
./net/rds/iw_send.d \
./net/rds/iw_stats.d \
./net/rds/iw_sysctl.d \
./net/rds/loop.d \
./net/rds/message.d \
./net/rds/page.d \
./net/rds/rdma.d \
./net/rds/rdma_transport.d \
./net/rds/recv.d \
./net/rds/send.d \
./net/rds/stats.d \
./net/rds/sysctl.d \
./net/rds/tcp.d \
./net/rds/tcp_connect.d \
./net/rds/tcp_listen.d \
./net/rds/tcp_recv.d \
./net/rds/tcp_send.d \
./net/rds/tcp_stats.d \
./net/rds/threads.d \
./net/rds/transport.d 


# Each subdirectory must supply rules for building sources it contributes
net/rds/%.o: ../net/rds/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


