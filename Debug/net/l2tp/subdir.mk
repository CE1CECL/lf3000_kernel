################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/l2tp/l2tp_core.c \
../net/l2tp/l2tp_debugfs.c \
../net/l2tp/l2tp_eth.c \
../net/l2tp/l2tp_ip.c \
../net/l2tp/l2tp_netlink.c \
../net/l2tp/l2tp_ppp.c 

OBJS += \
./net/l2tp/l2tp_core.o \
./net/l2tp/l2tp_debugfs.o \
./net/l2tp/l2tp_eth.o \
./net/l2tp/l2tp_ip.o \
./net/l2tp/l2tp_netlink.o \
./net/l2tp/l2tp_ppp.o 

C_DEPS += \
./net/l2tp/l2tp_core.d \
./net/l2tp/l2tp_debugfs.d \
./net/l2tp/l2tp_eth.d \
./net/l2tp/l2tp_ip.d \
./net/l2tp/l2tp_netlink.d \
./net/l2tp/l2tp_ppp.d 


# Each subdirectory must supply rules for building sources it contributes
net/l2tp/%.o: ../net/l2tp/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


