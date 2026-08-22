################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/ipv6/netfilter/ip6_queue.c \
../net/ipv6/netfilter/ip6_tables.c \
../net/ipv6/netfilter/ip6t_REJECT.c \
../net/ipv6/netfilter/ip6t_ah.c \
../net/ipv6/netfilter/ip6t_eui64.c \
../net/ipv6/netfilter/ip6t_frag.c \
../net/ipv6/netfilter/ip6t_hbh.c \
../net/ipv6/netfilter/ip6t_ipv6header.c \
../net/ipv6/netfilter/ip6t_mh.c \
../net/ipv6/netfilter/ip6t_rpfilter.c \
../net/ipv6/netfilter/ip6t_rt.c \
../net/ipv6/netfilter/ip6table_filter.c \
../net/ipv6/netfilter/ip6table_mangle.c \
../net/ipv6/netfilter/ip6table_raw.c \
../net/ipv6/netfilter/ip6table_security.c \
../net/ipv6/netfilter/nf_conntrack_l3proto_ipv6.c \
../net/ipv6/netfilter/nf_conntrack_proto_icmpv6.c \
../net/ipv6/netfilter/nf_conntrack_reasm.c \
../net/ipv6/netfilter/nf_defrag_ipv6_hooks.c 

OBJS += \
./net/ipv6/netfilter/ip6_queue.o \
./net/ipv6/netfilter/ip6_tables.o \
./net/ipv6/netfilter/ip6t_REJECT.o \
./net/ipv6/netfilter/ip6t_ah.o \
./net/ipv6/netfilter/ip6t_eui64.o \
./net/ipv6/netfilter/ip6t_frag.o \
./net/ipv6/netfilter/ip6t_hbh.o \
./net/ipv6/netfilter/ip6t_ipv6header.o \
./net/ipv6/netfilter/ip6t_mh.o \
./net/ipv6/netfilter/ip6t_rpfilter.o \
./net/ipv6/netfilter/ip6t_rt.o \
./net/ipv6/netfilter/ip6table_filter.o \
./net/ipv6/netfilter/ip6table_mangle.o \
./net/ipv6/netfilter/ip6table_raw.o \
./net/ipv6/netfilter/ip6table_security.o \
./net/ipv6/netfilter/nf_conntrack_l3proto_ipv6.o \
./net/ipv6/netfilter/nf_conntrack_proto_icmpv6.o \
./net/ipv6/netfilter/nf_conntrack_reasm.o \
./net/ipv6/netfilter/nf_defrag_ipv6_hooks.o 

C_DEPS += \
./net/ipv6/netfilter/ip6_queue.d \
./net/ipv6/netfilter/ip6_tables.d \
./net/ipv6/netfilter/ip6t_REJECT.d \
./net/ipv6/netfilter/ip6t_ah.d \
./net/ipv6/netfilter/ip6t_eui64.d \
./net/ipv6/netfilter/ip6t_frag.d \
./net/ipv6/netfilter/ip6t_hbh.d \
./net/ipv6/netfilter/ip6t_ipv6header.d \
./net/ipv6/netfilter/ip6t_mh.d \
./net/ipv6/netfilter/ip6t_rpfilter.d \
./net/ipv6/netfilter/ip6t_rt.d \
./net/ipv6/netfilter/ip6table_filter.d \
./net/ipv6/netfilter/ip6table_mangle.d \
./net/ipv6/netfilter/ip6table_raw.d \
./net/ipv6/netfilter/ip6table_security.d \
./net/ipv6/netfilter/nf_conntrack_l3proto_ipv6.d \
./net/ipv6/netfilter/nf_conntrack_proto_icmpv6.d \
./net/ipv6/netfilter/nf_conntrack_reasm.d \
./net/ipv6/netfilter/nf_defrag_ipv6_hooks.d 


# Each subdirectory must supply rules for building sources it contributes
net/ipv6/netfilter/%.o: ../net/ipv6/netfilter/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


