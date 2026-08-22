################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/bridge/netfilter/ebt_802_3.c \
../net/bridge/netfilter/ebt_among.c \
../net/bridge/netfilter/ebt_arp.c \
../net/bridge/netfilter/ebt_arpreply.c \
../net/bridge/netfilter/ebt_dnat.c \
../net/bridge/netfilter/ebt_ip.c \
../net/bridge/netfilter/ebt_ip6.c \
../net/bridge/netfilter/ebt_limit.c \
../net/bridge/netfilter/ebt_log.c \
../net/bridge/netfilter/ebt_mark.c \
../net/bridge/netfilter/ebt_mark_m.c \
../net/bridge/netfilter/ebt_nflog.c \
../net/bridge/netfilter/ebt_pkttype.c \
../net/bridge/netfilter/ebt_redirect.c \
../net/bridge/netfilter/ebt_snat.c \
../net/bridge/netfilter/ebt_stp.c \
../net/bridge/netfilter/ebt_ulog.c \
../net/bridge/netfilter/ebt_vlan.c \
../net/bridge/netfilter/ebtable_broute.c \
../net/bridge/netfilter/ebtable_filter.c \
../net/bridge/netfilter/ebtable_nat.c \
../net/bridge/netfilter/ebtables.c 

OBJS += \
./net/bridge/netfilter/ebt_802_3.o \
./net/bridge/netfilter/ebt_among.o \
./net/bridge/netfilter/ebt_arp.o \
./net/bridge/netfilter/ebt_arpreply.o \
./net/bridge/netfilter/ebt_dnat.o \
./net/bridge/netfilter/ebt_ip.o \
./net/bridge/netfilter/ebt_ip6.o \
./net/bridge/netfilter/ebt_limit.o \
./net/bridge/netfilter/ebt_log.o \
./net/bridge/netfilter/ebt_mark.o \
./net/bridge/netfilter/ebt_mark_m.o \
./net/bridge/netfilter/ebt_nflog.o \
./net/bridge/netfilter/ebt_pkttype.o \
./net/bridge/netfilter/ebt_redirect.o \
./net/bridge/netfilter/ebt_snat.o \
./net/bridge/netfilter/ebt_stp.o \
./net/bridge/netfilter/ebt_ulog.o \
./net/bridge/netfilter/ebt_vlan.o \
./net/bridge/netfilter/ebtable_broute.o \
./net/bridge/netfilter/ebtable_filter.o \
./net/bridge/netfilter/ebtable_nat.o \
./net/bridge/netfilter/ebtables.o 

C_DEPS += \
./net/bridge/netfilter/ebt_802_3.d \
./net/bridge/netfilter/ebt_among.d \
./net/bridge/netfilter/ebt_arp.d \
./net/bridge/netfilter/ebt_arpreply.d \
./net/bridge/netfilter/ebt_dnat.d \
./net/bridge/netfilter/ebt_ip.d \
./net/bridge/netfilter/ebt_ip6.d \
./net/bridge/netfilter/ebt_limit.d \
./net/bridge/netfilter/ebt_log.d \
./net/bridge/netfilter/ebt_mark.d \
./net/bridge/netfilter/ebt_mark_m.d \
./net/bridge/netfilter/ebt_nflog.d \
./net/bridge/netfilter/ebt_pkttype.d \
./net/bridge/netfilter/ebt_redirect.d \
./net/bridge/netfilter/ebt_snat.d \
./net/bridge/netfilter/ebt_stp.d \
./net/bridge/netfilter/ebt_ulog.d \
./net/bridge/netfilter/ebt_vlan.d \
./net/bridge/netfilter/ebtable_broute.d \
./net/bridge/netfilter/ebtable_filter.d \
./net/bridge/netfilter/ebtable_nat.d \
./net/bridge/netfilter/ebtables.d 


# Each subdirectory must supply rules for building sources it contributes
net/bridge/netfilter/%.o: ../net/bridge/netfilter/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


