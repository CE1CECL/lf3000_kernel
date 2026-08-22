################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/netfilter/ipvs/ip_vs_app.c \
../net/netfilter/ipvs/ip_vs_conn.c \
../net/netfilter/ipvs/ip_vs_core.c \
../net/netfilter/ipvs/ip_vs_ctl.c \
../net/netfilter/ipvs/ip_vs_dh.c \
../net/netfilter/ipvs/ip_vs_est.c \
../net/netfilter/ipvs/ip_vs_ftp.c \
../net/netfilter/ipvs/ip_vs_lblc.c \
../net/netfilter/ipvs/ip_vs_lblcr.c \
../net/netfilter/ipvs/ip_vs_lc.c \
../net/netfilter/ipvs/ip_vs_nfct.c \
../net/netfilter/ipvs/ip_vs_nq.c \
../net/netfilter/ipvs/ip_vs_pe.c \
../net/netfilter/ipvs/ip_vs_pe_sip.c \
../net/netfilter/ipvs/ip_vs_proto.c \
../net/netfilter/ipvs/ip_vs_proto_ah_esp.c \
../net/netfilter/ipvs/ip_vs_proto_sctp.c \
../net/netfilter/ipvs/ip_vs_proto_tcp.c \
../net/netfilter/ipvs/ip_vs_proto_udp.c \
../net/netfilter/ipvs/ip_vs_rr.c \
../net/netfilter/ipvs/ip_vs_sched.c \
../net/netfilter/ipvs/ip_vs_sed.c \
../net/netfilter/ipvs/ip_vs_sh.c \
../net/netfilter/ipvs/ip_vs_sync.c \
../net/netfilter/ipvs/ip_vs_wlc.c \
../net/netfilter/ipvs/ip_vs_wrr.c \
../net/netfilter/ipvs/ip_vs_xmit.c 

OBJS += \
./net/netfilter/ipvs/ip_vs_app.o \
./net/netfilter/ipvs/ip_vs_conn.o \
./net/netfilter/ipvs/ip_vs_core.o \
./net/netfilter/ipvs/ip_vs_ctl.o \
./net/netfilter/ipvs/ip_vs_dh.o \
./net/netfilter/ipvs/ip_vs_est.o \
./net/netfilter/ipvs/ip_vs_ftp.o \
./net/netfilter/ipvs/ip_vs_lblc.o \
./net/netfilter/ipvs/ip_vs_lblcr.o \
./net/netfilter/ipvs/ip_vs_lc.o \
./net/netfilter/ipvs/ip_vs_nfct.o \
./net/netfilter/ipvs/ip_vs_nq.o \
./net/netfilter/ipvs/ip_vs_pe.o \
./net/netfilter/ipvs/ip_vs_pe_sip.o \
./net/netfilter/ipvs/ip_vs_proto.o \
./net/netfilter/ipvs/ip_vs_proto_ah_esp.o \
./net/netfilter/ipvs/ip_vs_proto_sctp.o \
./net/netfilter/ipvs/ip_vs_proto_tcp.o \
./net/netfilter/ipvs/ip_vs_proto_udp.o \
./net/netfilter/ipvs/ip_vs_rr.o \
./net/netfilter/ipvs/ip_vs_sched.o \
./net/netfilter/ipvs/ip_vs_sed.o \
./net/netfilter/ipvs/ip_vs_sh.o \
./net/netfilter/ipvs/ip_vs_sync.o \
./net/netfilter/ipvs/ip_vs_wlc.o \
./net/netfilter/ipvs/ip_vs_wrr.o \
./net/netfilter/ipvs/ip_vs_xmit.o 

C_DEPS += \
./net/netfilter/ipvs/ip_vs_app.d \
./net/netfilter/ipvs/ip_vs_conn.d \
./net/netfilter/ipvs/ip_vs_core.d \
./net/netfilter/ipvs/ip_vs_ctl.d \
./net/netfilter/ipvs/ip_vs_dh.d \
./net/netfilter/ipvs/ip_vs_est.d \
./net/netfilter/ipvs/ip_vs_ftp.d \
./net/netfilter/ipvs/ip_vs_lblc.d \
./net/netfilter/ipvs/ip_vs_lblcr.d \
./net/netfilter/ipvs/ip_vs_lc.d \
./net/netfilter/ipvs/ip_vs_nfct.d \
./net/netfilter/ipvs/ip_vs_nq.d \
./net/netfilter/ipvs/ip_vs_pe.d \
./net/netfilter/ipvs/ip_vs_pe_sip.d \
./net/netfilter/ipvs/ip_vs_proto.d \
./net/netfilter/ipvs/ip_vs_proto_ah_esp.d \
./net/netfilter/ipvs/ip_vs_proto_sctp.d \
./net/netfilter/ipvs/ip_vs_proto_tcp.d \
./net/netfilter/ipvs/ip_vs_proto_udp.d \
./net/netfilter/ipvs/ip_vs_rr.d \
./net/netfilter/ipvs/ip_vs_sched.d \
./net/netfilter/ipvs/ip_vs_sed.d \
./net/netfilter/ipvs/ip_vs_sh.d \
./net/netfilter/ipvs/ip_vs_sync.d \
./net/netfilter/ipvs/ip_vs_wlc.d \
./net/netfilter/ipvs/ip_vs_wrr.d \
./net/netfilter/ipvs/ip_vs_xmit.d 


# Each subdirectory must supply rules for building sources it contributes
net/netfilter/ipvs/%.o: ../net/netfilter/ipvs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


