################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/sunrpc/xprtrdma/rpc_rdma.c \
../net/sunrpc/xprtrdma/svc_rdma.c \
../net/sunrpc/xprtrdma/svc_rdma_marshal.c \
../net/sunrpc/xprtrdma/svc_rdma_recvfrom.c \
../net/sunrpc/xprtrdma/svc_rdma_sendto.c \
../net/sunrpc/xprtrdma/svc_rdma_transport.c \
../net/sunrpc/xprtrdma/transport.c \
../net/sunrpc/xprtrdma/verbs.c 

OBJS += \
./net/sunrpc/xprtrdma/rpc_rdma.o \
./net/sunrpc/xprtrdma/svc_rdma.o \
./net/sunrpc/xprtrdma/svc_rdma_marshal.o \
./net/sunrpc/xprtrdma/svc_rdma_recvfrom.o \
./net/sunrpc/xprtrdma/svc_rdma_sendto.o \
./net/sunrpc/xprtrdma/svc_rdma_transport.o \
./net/sunrpc/xprtrdma/transport.o \
./net/sunrpc/xprtrdma/verbs.o 

C_DEPS += \
./net/sunrpc/xprtrdma/rpc_rdma.d \
./net/sunrpc/xprtrdma/svc_rdma.d \
./net/sunrpc/xprtrdma/svc_rdma_marshal.d \
./net/sunrpc/xprtrdma/svc_rdma_recvfrom.d \
./net/sunrpc/xprtrdma/svc_rdma_sendto.d \
./net/sunrpc/xprtrdma/svc_rdma_transport.d \
./net/sunrpc/xprtrdma/transport.d \
./net/sunrpc/xprtrdma/verbs.d 


# Each subdirectory must supply rules for building sources it contributes
net/sunrpc/xprtrdma/%.o: ../net/sunrpc/xprtrdma/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


