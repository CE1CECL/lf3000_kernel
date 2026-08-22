################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/netfilter/ipset/ip_set_bitmap_ip.c \
../net/netfilter/ipset/ip_set_bitmap_ipmac.c \
../net/netfilter/ipset/ip_set_bitmap_port.c \
../net/netfilter/ipset/ip_set_core.c \
../net/netfilter/ipset/ip_set_getport.c \
../net/netfilter/ipset/ip_set_hash_ip.c \
../net/netfilter/ipset/ip_set_hash_ipport.c \
../net/netfilter/ipset/ip_set_hash_ipportip.c \
../net/netfilter/ipset/ip_set_hash_ipportnet.c \
../net/netfilter/ipset/ip_set_hash_net.c \
../net/netfilter/ipset/ip_set_hash_netiface.c \
../net/netfilter/ipset/ip_set_hash_netport.c \
../net/netfilter/ipset/ip_set_list_set.c \
../net/netfilter/ipset/pfxlen.c 

OBJS += \
./net/netfilter/ipset/ip_set_bitmap_ip.o \
./net/netfilter/ipset/ip_set_bitmap_ipmac.o \
./net/netfilter/ipset/ip_set_bitmap_port.o \
./net/netfilter/ipset/ip_set_core.o \
./net/netfilter/ipset/ip_set_getport.o \
./net/netfilter/ipset/ip_set_hash_ip.o \
./net/netfilter/ipset/ip_set_hash_ipport.o \
./net/netfilter/ipset/ip_set_hash_ipportip.o \
./net/netfilter/ipset/ip_set_hash_ipportnet.o \
./net/netfilter/ipset/ip_set_hash_net.o \
./net/netfilter/ipset/ip_set_hash_netiface.o \
./net/netfilter/ipset/ip_set_hash_netport.o \
./net/netfilter/ipset/ip_set_list_set.o \
./net/netfilter/ipset/pfxlen.o 

C_DEPS += \
./net/netfilter/ipset/ip_set_bitmap_ip.d \
./net/netfilter/ipset/ip_set_bitmap_ipmac.d \
./net/netfilter/ipset/ip_set_bitmap_port.d \
./net/netfilter/ipset/ip_set_core.d \
./net/netfilter/ipset/ip_set_getport.d \
./net/netfilter/ipset/ip_set_hash_ip.d \
./net/netfilter/ipset/ip_set_hash_ipport.d \
./net/netfilter/ipset/ip_set_hash_ipportip.d \
./net/netfilter/ipset/ip_set_hash_ipportnet.d \
./net/netfilter/ipset/ip_set_hash_net.d \
./net/netfilter/ipset/ip_set_hash_netiface.d \
./net/netfilter/ipset/ip_set_hash_netport.d \
./net/netfilter/ipset/ip_set_list_set.d \
./net/netfilter/ipset/pfxlen.d 


# Each subdirectory must supply rules for building sources it contributes
net/netfilter/ipset/%.o: ../net/netfilter/ipset/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


