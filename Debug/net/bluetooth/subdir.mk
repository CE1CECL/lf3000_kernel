################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/bluetooth/af_bluetooth.c \
../net/bluetooth/hci_conn.c \
../net/bluetooth/hci_core.c \
../net/bluetooth/hci_event.c \
../net/bluetooth/hci_sock.c \
../net/bluetooth/hci_sysfs.c \
../net/bluetooth/l2cap_core.c \
../net/bluetooth/l2cap_sock.c \
../net/bluetooth/lib.c \
../net/bluetooth/mgmt.c \
../net/bluetooth/sco.c \
../net/bluetooth/smp.c 

OBJS += \
./net/bluetooth/af_bluetooth.o \
./net/bluetooth/hci_conn.o \
./net/bluetooth/hci_core.o \
./net/bluetooth/hci_event.o \
./net/bluetooth/hci_sock.o \
./net/bluetooth/hci_sysfs.o \
./net/bluetooth/l2cap_core.o \
./net/bluetooth/l2cap_sock.o \
./net/bluetooth/lib.o \
./net/bluetooth/mgmt.o \
./net/bluetooth/sco.o \
./net/bluetooth/smp.o 

C_DEPS += \
./net/bluetooth/af_bluetooth.d \
./net/bluetooth/hci_conn.d \
./net/bluetooth/hci_core.d \
./net/bluetooth/hci_event.d \
./net/bluetooth/hci_sock.d \
./net/bluetooth/hci_sysfs.d \
./net/bluetooth/l2cap_core.d \
./net/bluetooth/l2cap_sock.d \
./net/bluetooth/lib.d \
./net/bluetooth/mgmt.d \
./net/bluetooth/sco.d \
./net/bluetooth/smp.d 


# Each subdirectory must supply rules for building sources it contributes
net/bluetooth/%.o: ../net/bluetooth/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


