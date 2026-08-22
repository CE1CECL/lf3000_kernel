################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/openvswitch/actions.c \
../net/openvswitch/datapath.c \
../net/openvswitch/dp_notify.c \
../net/openvswitch/flow.c \
../net/openvswitch/vport-internal_dev.c \
../net/openvswitch/vport-netdev.c \
../net/openvswitch/vport.c 

OBJS += \
./net/openvswitch/actions.o \
./net/openvswitch/datapath.o \
./net/openvswitch/dp_notify.o \
./net/openvswitch/flow.o \
./net/openvswitch/vport-internal_dev.o \
./net/openvswitch/vport-netdev.o \
./net/openvswitch/vport.o 

C_DEPS += \
./net/openvswitch/actions.d \
./net/openvswitch/datapath.d \
./net/openvswitch/dp_notify.d \
./net/openvswitch/flow.d \
./net/openvswitch/vport-internal_dev.d \
./net/openvswitch/vport-netdev.d \
./net/openvswitch/vport.d 


# Each subdirectory must supply rules for building sources it contributes
net/openvswitch/%.o: ../net/openvswitch/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


