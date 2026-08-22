################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../net/sunrpc/addr.o \
../net/sunrpc/auth.o \
../net/sunrpc/auth_generic.o \
../net/sunrpc/auth_null.o \
../net/sunrpc/auth_unix.o \
../net/sunrpc/built-in.o \
../net/sunrpc/cache.o \
../net/sunrpc/clnt.o \
../net/sunrpc/rpc_pipe.o \
../net/sunrpc/rpcb_clnt.o \
../net/sunrpc/sched.o \
../net/sunrpc/socklib.o \
../net/sunrpc/stats.o \
../net/sunrpc/sunrpc.o \
../net/sunrpc/sunrpc_syms.o \
../net/sunrpc/svc.o \
../net/sunrpc/svc_xprt.o \
../net/sunrpc/svcauth.o \
../net/sunrpc/svcauth_unix.o \
../net/sunrpc/svcsock.o \
../net/sunrpc/sysctl.o \
../net/sunrpc/timer.o \
../net/sunrpc/xdr.o \
../net/sunrpc/xprt.o \
../net/sunrpc/xprtsock.o 

C_SRCS += \
../net/sunrpc/addr.c \
../net/sunrpc/auth.c \
../net/sunrpc/auth_generic.c \
../net/sunrpc/auth_null.c \
../net/sunrpc/auth_unix.c \
../net/sunrpc/backchannel_rqst.c \
../net/sunrpc/bc_svc.c \
../net/sunrpc/cache.c \
../net/sunrpc/clnt.c \
../net/sunrpc/rpc_pipe.c \
../net/sunrpc/rpcb_clnt.c \
../net/sunrpc/sched.c \
../net/sunrpc/socklib.c \
../net/sunrpc/stats.c \
../net/sunrpc/sunrpc_syms.c \
../net/sunrpc/svc.c \
../net/sunrpc/svc_xprt.c \
../net/sunrpc/svcauth.c \
../net/sunrpc/svcauth_unix.c \
../net/sunrpc/svcsock.c \
../net/sunrpc/sysctl.c \
../net/sunrpc/timer.c \
../net/sunrpc/xdr.c \
../net/sunrpc/xprt.c \
../net/sunrpc/xprtsock.c 

OBJS += \
./net/sunrpc/addr.o \
./net/sunrpc/auth.o \
./net/sunrpc/auth_generic.o \
./net/sunrpc/auth_null.o \
./net/sunrpc/auth_unix.o \
./net/sunrpc/backchannel_rqst.o \
./net/sunrpc/bc_svc.o \
./net/sunrpc/cache.o \
./net/sunrpc/clnt.o \
./net/sunrpc/rpc_pipe.o \
./net/sunrpc/rpcb_clnt.o \
./net/sunrpc/sched.o \
./net/sunrpc/socklib.o \
./net/sunrpc/stats.o \
./net/sunrpc/sunrpc_syms.o \
./net/sunrpc/svc.o \
./net/sunrpc/svc_xprt.o \
./net/sunrpc/svcauth.o \
./net/sunrpc/svcauth_unix.o \
./net/sunrpc/svcsock.o \
./net/sunrpc/sysctl.o \
./net/sunrpc/timer.o \
./net/sunrpc/xdr.o \
./net/sunrpc/xprt.o \
./net/sunrpc/xprtsock.o 

C_DEPS += \
./net/sunrpc/addr.d \
./net/sunrpc/auth.d \
./net/sunrpc/auth_generic.d \
./net/sunrpc/auth_null.d \
./net/sunrpc/auth_unix.d \
./net/sunrpc/backchannel_rqst.d \
./net/sunrpc/bc_svc.d \
./net/sunrpc/cache.d \
./net/sunrpc/clnt.d \
./net/sunrpc/rpc_pipe.d \
./net/sunrpc/rpcb_clnt.d \
./net/sunrpc/sched.d \
./net/sunrpc/socklib.d \
./net/sunrpc/stats.d \
./net/sunrpc/sunrpc_syms.d \
./net/sunrpc/svc.d \
./net/sunrpc/svc_xprt.d \
./net/sunrpc/svcauth.d \
./net/sunrpc/svcauth_unix.d \
./net/sunrpc/svcsock.d \
./net/sunrpc/sysctl.d \
./net/sunrpc/timer.d \
./net/sunrpc/xdr.d \
./net/sunrpc/xprt.d \
./net/sunrpc/xprtsock.d 


# Each subdirectory must supply rules for building sources it contributes
net/sunrpc/%.o: ../net/sunrpc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


