################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/net/Space.o \
../drivers/net/built-in.o \
../drivers/net/loopback.o \
../drivers/net/mii.o 

C_SRCS += \
../drivers/net/Space.c \
../drivers/net/dummy.c \
../drivers/net/eql.c \
../drivers/net/ifb.c \
../drivers/net/loopback.c \
../drivers/net/macvlan.c \
../drivers/net/macvtap.c \
../drivers/net/mdio.c \
../drivers/net/mii.c \
../drivers/net/netconsole.c \
../drivers/net/rionet.c \
../drivers/net/sb1000.c \
../drivers/net/sungem_phy.c \
../drivers/net/tun.c \
../drivers/net/veth.c \
../drivers/net/virtio_net.c \
../drivers/net/xen-netfront.c 

OBJS += \
./drivers/net/Space.o \
./drivers/net/dummy.o \
./drivers/net/eql.o \
./drivers/net/ifb.o \
./drivers/net/loopback.o \
./drivers/net/macvlan.o \
./drivers/net/macvtap.o \
./drivers/net/mdio.o \
./drivers/net/mii.o \
./drivers/net/netconsole.o \
./drivers/net/rionet.o \
./drivers/net/sb1000.o \
./drivers/net/sungem_phy.o \
./drivers/net/tun.o \
./drivers/net/veth.o \
./drivers/net/virtio_net.o \
./drivers/net/xen-netfront.o 

C_DEPS += \
./drivers/net/Space.d \
./drivers/net/dummy.d \
./drivers/net/eql.d \
./drivers/net/ifb.d \
./drivers/net/loopback.d \
./drivers/net/macvlan.d \
./drivers/net/macvtap.d \
./drivers/net/mdio.d \
./drivers/net/mii.d \
./drivers/net/netconsole.d \
./drivers/net/rionet.d \
./drivers/net/sb1000.d \
./drivers/net/sungem_phy.d \
./drivers/net/tun.d \
./drivers/net/veth.d \
./drivers/net/virtio_net.d \
./drivers/net/xen-netfront.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/%.o: ../drivers/net/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


