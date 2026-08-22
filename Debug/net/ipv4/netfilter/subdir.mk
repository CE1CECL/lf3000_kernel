################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/ipv4/netfilter/arp_tables.c \
../net/ipv4/netfilter/arpt_mangle.c \
../net/ipv4/netfilter/arptable_filter.c \
../net/ipv4/netfilter/ip_queue.c \
../net/ipv4/netfilter/ip_tables.c \
../net/ipv4/netfilter/ipt_CLUSTERIP.c \
../net/ipv4/netfilter/ipt_ECN.c \
../net/ipv4/netfilter/ipt_MASQUERADE.c \
../net/ipv4/netfilter/ipt_NETMAP.c \
../net/ipv4/netfilter/ipt_REDIRECT.c \
../net/ipv4/netfilter/ipt_REJECT.c \
../net/ipv4/netfilter/ipt_ULOG.c \
../net/ipv4/netfilter/ipt_ah.c \
../net/ipv4/netfilter/ipt_rpfilter.c \
../net/ipv4/netfilter/iptable_filter.c \
../net/ipv4/netfilter/iptable_mangle.c \
../net/ipv4/netfilter/iptable_raw.c \
../net/ipv4/netfilter/iptable_security.c \
../net/ipv4/netfilter/nf_conntrack_l3proto_ipv4.c \
../net/ipv4/netfilter/nf_conntrack_l3proto_ipv4_compat.c \
../net/ipv4/netfilter/nf_conntrack_proto_icmp.c \
../net/ipv4/netfilter/nf_defrag_ipv4.c \
../net/ipv4/netfilter/nf_nat_amanda.c \
../net/ipv4/netfilter/nf_nat_core.c \
../net/ipv4/netfilter/nf_nat_ftp.c \
../net/ipv4/netfilter/nf_nat_h323.c \
../net/ipv4/netfilter/nf_nat_helper.c \
../net/ipv4/netfilter/nf_nat_irc.c \
../net/ipv4/netfilter/nf_nat_pptp.c \
../net/ipv4/netfilter/nf_nat_proto_common.c \
../net/ipv4/netfilter/nf_nat_proto_dccp.c \
../net/ipv4/netfilter/nf_nat_proto_gre.c \
../net/ipv4/netfilter/nf_nat_proto_icmp.c \
../net/ipv4/netfilter/nf_nat_proto_sctp.c \
../net/ipv4/netfilter/nf_nat_proto_tcp.c \
../net/ipv4/netfilter/nf_nat_proto_udp.c \
../net/ipv4/netfilter/nf_nat_proto_udplite.c \
../net/ipv4/netfilter/nf_nat_proto_unknown.c \
../net/ipv4/netfilter/nf_nat_rule.c \
../net/ipv4/netfilter/nf_nat_sip.c \
../net/ipv4/netfilter/nf_nat_snmp_basic.c \
../net/ipv4/netfilter/nf_nat_standalone.c \
../net/ipv4/netfilter/nf_nat_tftp.c 

OBJS += \
./net/ipv4/netfilter/arp_tables.o \
./net/ipv4/netfilter/arpt_mangle.o \
./net/ipv4/netfilter/arptable_filter.o \
./net/ipv4/netfilter/ip_queue.o \
./net/ipv4/netfilter/ip_tables.o \
./net/ipv4/netfilter/ipt_CLUSTERIP.o \
./net/ipv4/netfilter/ipt_ECN.o \
./net/ipv4/netfilter/ipt_MASQUERADE.o \
./net/ipv4/netfilter/ipt_NETMAP.o \
./net/ipv4/netfilter/ipt_REDIRECT.o \
./net/ipv4/netfilter/ipt_REJECT.o \
./net/ipv4/netfilter/ipt_ULOG.o \
./net/ipv4/netfilter/ipt_ah.o \
./net/ipv4/netfilter/ipt_rpfilter.o \
./net/ipv4/netfilter/iptable_filter.o \
./net/ipv4/netfilter/iptable_mangle.o \
./net/ipv4/netfilter/iptable_raw.o \
./net/ipv4/netfilter/iptable_security.o \
./net/ipv4/netfilter/nf_conntrack_l3proto_ipv4.o \
./net/ipv4/netfilter/nf_conntrack_l3proto_ipv4_compat.o \
./net/ipv4/netfilter/nf_conntrack_proto_icmp.o \
./net/ipv4/netfilter/nf_defrag_ipv4.o \
./net/ipv4/netfilter/nf_nat_amanda.o \
./net/ipv4/netfilter/nf_nat_core.o \
./net/ipv4/netfilter/nf_nat_ftp.o \
./net/ipv4/netfilter/nf_nat_h323.o \
./net/ipv4/netfilter/nf_nat_helper.o \
./net/ipv4/netfilter/nf_nat_irc.o \
./net/ipv4/netfilter/nf_nat_pptp.o \
./net/ipv4/netfilter/nf_nat_proto_common.o \
./net/ipv4/netfilter/nf_nat_proto_dccp.o \
./net/ipv4/netfilter/nf_nat_proto_gre.o \
./net/ipv4/netfilter/nf_nat_proto_icmp.o \
./net/ipv4/netfilter/nf_nat_proto_sctp.o \
./net/ipv4/netfilter/nf_nat_proto_tcp.o \
./net/ipv4/netfilter/nf_nat_proto_udp.o \
./net/ipv4/netfilter/nf_nat_proto_udplite.o \
./net/ipv4/netfilter/nf_nat_proto_unknown.o \
./net/ipv4/netfilter/nf_nat_rule.o \
./net/ipv4/netfilter/nf_nat_sip.o \
./net/ipv4/netfilter/nf_nat_snmp_basic.o \
./net/ipv4/netfilter/nf_nat_standalone.o \
./net/ipv4/netfilter/nf_nat_tftp.o 

C_DEPS += \
./net/ipv4/netfilter/arp_tables.d \
./net/ipv4/netfilter/arpt_mangle.d \
./net/ipv4/netfilter/arptable_filter.d \
./net/ipv4/netfilter/ip_queue.d \
./net/ipv4/netfilter/ip_tables.d \
./net/ipv4/netfilter/ipt_CLUSTERIP.d \
./net/ipv4/netfilter/ipt_ECN.d \
./net/ipv4/netfilter/ipt_MASQUERADE.d \
./net/ipv4/netfilter/ipt_NETMAP.d \
./net/ipv4/netfilter/ipt_REDIRECT.d \
./net/ipv4/netfilter/ipt_REJECT.d \
./net/ipv4/netfilter/ipt_ULOG.d \
./net/ipv4/netfilter/ipt_ah.d \
./net/ipv4/netfilter/ipt_rpfilter.d \
./net/ipv4/netfilter/iptable_filter.d \
./net/ipv4/netfilter/iptable_mangle.d \
./net/ipv4/netfilter/iptable_raw.d \
./net/ipv4/netfilter/iptable_security.d \
./net/ipv4/netfilter/nf_conntrack_l3proto_ipv4.d \
./net/ipv4/netfilter/nf_conntrack_l3proto_ipv4_compat.d \
./net/ipv4/netfilter/nf_conntrack_proto_icmp.d \
./net/ipv4/netfilter/nf_defrag_ipv4.d \
./net/ipv4/netfilter/nf_nat_amanda.d \
./net/ipv4/netfilter/nf_nat_core.d \
./net/ipv4/netfilter/nf_nat_ftp.d \
./net/ipv4/netfilter/nf_nat_h323.d \
./net/ipv4/netfilter/nf_nat_helper.d \
./net/ipv4/netfilter/nf_nat_irc.d \
./net/ipv4/netfilter/nf_nat_pptp.d \
./net/ipv4/netfilter/nf_nat_proto_common.d \
./net/ipv4/netfilter/nf_nat_proto_dccp.d \
./net/ipv4/netfilter/nf_nat_proto_gre.d \
./net/ipv4/netfilter/nf_nat_proto_icmp.d \
./net/ipv4/netfilter/nf_nat_proto_sctp.d \
./net/ipv4/netfilter/nf_nat_proto_tcp.d \
./net/ipv4/netfilter/nf_nat_proto_udp.d \
./net/ipv4/netfilter/nf_nat_proto_udplite.d \
./net/ipv4/netfilter/nf_nat_proto_unknown.d \
./net/ipv4/netfilter/nf_nat_rule.d \
./net/ipv4/netfilter/nf_nat_sip.d \
./net/ipv4/netfilter/nf_nat_snmp_basic.d \
./net/ipv4/netfilter/nf_nat_standalone.d \
./net/ipv4/netfilter/nf_nat_tftp.d 


# Each subdirectory must supply rules for building sources it contributes
net/ipv4/netfilter/%.o: ../net/ipv4/netfilter/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


