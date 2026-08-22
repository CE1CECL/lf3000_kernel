################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/bridge/br.c \
../net/bridge/br_device.c \
../net/bridge/br_fdb.c \
../net/bridge/br_forward.c \
../net/bridge/br_if.c \
../net/bridge/br_input.c \
../net/bridge/br_ioctl.c \
../net/bridge/br_multicast.c \
../net/bridge/br_netfilter.c \
../net/bridge/br_netlink.c \
../net/bridge/br_notify.c \
../net/bridge/br_stp.c \
../net/bridge/br_stp_bpdu.c \
../net/bridge/br_stp_if.c \
../net/bridge/br_stp_timer.c \
../net/bridge/br_sysfs_br.c \
../net/bridge/br_sysfs_if.c 

OBJS += \
./net/bridge/br.o \
./net/bridge/br_device.o \
./net/bridge/br_fdb.o \
./net/bridge/br_forward.o \
./net/bridge/br_if.o \
./net/bridge/br_input.o \
./net/bridge/br_ioctl.o \
./net/bridge/br_multicast.o \
./net/bridge/br_netfilter.o \
./net/bridge/br_netlink.o \
./net/bridge/br_notify.o \
./net/bridge/br_stp.o \
./net/bridge/br_stp_bpdu.o \
./net/bridge/br_stp_if.o \
./net/bridge/br_stp_timer.o \
./net/bridge/br_sysfs_br.o \
./net/bridge/br_sysfs_if.o 

C_DEPS += \
./net/bridge/br.d \
./net/bridge/br_device.d \
./net/bridge/br_fdb.d \
./net/bridge/br_forward.d \
./net/bridge/br_if.d \
./net/bridge/br_input.d \
./net/bridge/br_ioctl.d \
./net/bridge/br_multicast.d \
./net/bridge/br_netfilter.d \
./net/bridge/br_netlink.d \
./net/bridge/br_notify.d \
./net/bridge/br_stp.d \
./net/bridge/br_stp_bpdu.d \
./net/bridge/br_stp_if.d \
./net/bridge/br_stp_timer.d \
./net/bridge/br_sysfs_br.d \
./net/bridge/br_sysfs_if.d 


# Each subdirectory must supply rules for building sources it contributes
net/bridge/%.o: ../net/bridge/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


