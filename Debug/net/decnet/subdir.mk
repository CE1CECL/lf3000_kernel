################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/decnet/af_decnet.c \
../net/decnet/dn_dev.c \
../net/decnet/dn_fib.c \
../net/decnet/dn_neigh.c \
../net/decnet/dn_nsp_in.c \
../net/decnet/dn_nsp_out.c \
../net/decnet/dn_route.c \
../net/decnet/dn_rules.c \
../net/decnet/dn_table.c \
../net/decnet/dn_timer.c \
../net/decnet/sysctl_net_decnet.c 

OBJS += \
./net/decnet/af_decnet.o \
./net/decnet/dn_dev.o \
./net/decnet/dn_fib.o \
./net/decnet/dn_neigh.o \
./net/decnet/dn_nsp_in.o \
./net/decnet/dn_nsp_out.o \
./net/decnet/dn_route.o \
./net/decnet/dn_rules.o \
./net/decnet/dn_table.o \
./net/decnet/dn_timer.o \
./net/decnet/sysctl_net_decnet.o 

C_DEPS += \
./net/decnet/af_decnet.d \
./net/decnet/dn_dev.d \
./net/decnet/dn_fib.d \
./net/decnet/dn_neigh.d \
./net/decnet/dn_nsp_in.d \
./net/decnet/dn_nsp_out.d \
./net/decnet/dn_route.d \
./net/decnet/dn_rules.d \
./net/decnet/dn_table.d \
./net/decnet/dn_timer.d \
./net/decnet/sysctl_net_decnet.d 


# Each subdirectory must supply rules for building sources it contributes
net/decnet/%.o: ../net/decnet/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


