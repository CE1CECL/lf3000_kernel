################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/batman-adv/bat_debugfs.c \
../net/batman-adv/bat_iv_ogm.c \
../net/batman-adv/bat_sysfs.c \
../net/batman-adv/bitarray.c \
../net/batman-adv/gateway_client.c \
../net/batman-adv/gateway_common.c \
../net/batman-adv/hard-interface.c \
../net/batman-adv/hash.c \
../net/batman-adv/icmp_socket.c \
../net/batman-adv/main.c \
../net/batman-adv/originator.c \
../net/batman-adv/ring_buffer.c \
../net/batman-adv/routing.c \
../net/batman-adv/send.c \
../net/batman-adv/soft-interface.c \
../net/batman-adv/translation-table.c \
../net/batman-adv/unicast.c \
../net/batman-adv/vis.c 

OBJS += \
./net/batman-adv/bat_debugfs.o \
./net/batman-adv/bat_iv_ogm.o \
./net/batman-adv/bat_sysfs.o \
./net/batman-adv/bitarray.o \
./net/batman-adv/gateway_client.o \
./net/batman-adv/gateway_common.o \
./net/batman-adv/hard-interface.o \
./net/batman-adv/hash.o \
./net/batman-adv/icmp_socket.o \
./net/batman-adv/main.o \
./net/batman-adv/originator.o \
./net/batman-adv/ring_buffer.o \
./net/batman-adv/routing.o \
./net/batman-adv/send.o \
./net/batman-adv/soft-interface.o \
./net/batman-adv/translation-table.o \
./net/batman-adv/unicast.o \
./net/batman-adv/vis.o 

C_DEPS += \
./net/batman-adv/bat_debugfs.d \
./net/batman-adv/bat_iv_ogm.d \
./net/batman-adv/bat_sysfs.d \
./net/batman-adv/bitarray.d \
./net/batman-adv/gateway_client.d \
./net/batman-adv/gateway_common.d \
./net/batman-adv/hard-interface.d \
./net/batman-adv/hash.d \
./net/batman-adv/icmp_socket.d \
./net/batman-adv/main.d \
./net/batman-adv/originator.d \
./net/batman-adv/ring_buffer.d \
./net/batman-adv/routing.d \
./net/batman-adv/send.d \
./net/batman-adv/soft-interface.d \
./net/batman-adv/translation-table.d \
./net/batman-adv/unicast.d \
./net/batman-adv/vis.d 


# Each subdirectory must supply rules for building sources it contributes
net/batman-adv/%.o: ../net/batman-adv/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


