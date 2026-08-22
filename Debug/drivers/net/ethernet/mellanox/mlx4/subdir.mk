################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/mellanox/mlx4/alloc.c \
../drivers/net/ethernet/mellanox/mlx4/catas.c \
../drivers/net/ethernet/mellanox/mlx4/cmd.c \
../drivers/net/ethernet/mellanox/mlx4/cq.c \
../drivers/net/ethernet/mellanox/mlx4/en_cq.c \
../drivers/net/ethernet/mellanox/mlx4/en_ethtool.c \
../drivers/net/ethernet/mellanox/mlx4/en_main.c \
../drivers/net/ethernet/mellanox/mlx4/en_netdev.c \
../drivers/net/ethernet/mellanox/mlx4/en_port.c \
../drivers/net/ethernet/mellanox/mlx4/en_resources.c \
../drivers/net/ethernet/mellanox/mlx4/en_rx.c \
../drivers/net/ethernet/mellanox/mlx4/en_selftest.c \
../drivers/net/ethernet/mellanox/mlx4/en_tx.c \
../drivers/net/ethernet/mellanox/mlx4/eq.c \
../drivers/net/ethernet/mellanox/mlx4/fw.c \
../drivers/net/ethernet/mellanox/mlx4/icm.c \
../drivers/net/ethernet/mellanox/mlx4/intf.c \
../drivers/net/ethernet/mellanox/mlx4/main.c \
../drivers/net/ethernet/mellanox/mlx4/mcg.c \
../drivers/net/ethernet/mellanox/mlx4/mr.c \
../drivers/net/ethernet/mellanox/mlx4/pd.c \
../drivers/net/ethernet/mellanox/mlx4/port.c \
../drivers/net/ethernet/mellanox/mlx4/profile.c \
../drivers/net/ethernet/mellanox/mlx4/qp.c \
../drivers/net/ethernet/mellanox/mlx4/reset.c \
../drivers/net/ethernet/mellanox/mlx4/resource_tracker.c \
../drivers/net/ethernet/mellanox/mlx4/sense.c \
../drivers/net/ethernet/mellanox/mlx4/srq.c 

OBJS += \
./drivers/net/ethernet/mellanox/mlx4/alloc.o \
./drivers/net/ethernet/mellanox/mlx4/catas.o \
./drivers/net/ethernet/mellanox/mlx4/cmd.o \
./drivers/net/ethernet/mellanox/mlx4/cq.o \
./drivers/net/ethernet/mellanox/mlx4/en_cq.o \
./drivers/net/ethernet/mellanox/mlx4/en_ethtool.o \
./drivers/net/ethernet/mellanox/mlx4/en_main.o \
./drivers/net/ethernet/mellanox/mlx4/en_netdev.o \
./drivers/net/ethernet/mellanox/mlx4/en_port.o \
./drivers/net/ethernet/mellanox/mlx4/en_resources.o \
./drivers/net/ethernet/mellanox/mlx4/en_rx.o \
./drivers/net/ethernet/mellanox/mlx4/en_selftest.o \
./drivers/net/ethernet/mellanox/mlx4/en_tx.o \
./drivers/net/ethernet/mellanox/mlx4/eq.o \
./drivers/net/ethernet/mellanox/mlx4/fw.o \
./drivers/net/ethernet/mellanox/mlx4/icm.o \
./drivers/net/ethernet/mellanox/mlx4/intf.o \
./drivers/net/ethernet/mellanox/mlx4/main.o \
./drivers/net/ethernet/mellanox/mlx4/mcg.o \
./drivers/net/ethernet/mellanox/mlx4/mr.o \
./drivers/net/ethernet/mellanox/mlx4/pd.o \
./drivers/net/ethernet/mellanox/mlx4/port.o \
./drivers/net/ethernet/mellanox/mlx4/profile.o \
./drivers/net/ethernet/mellanox/mlx4/qp.o \
./drivers/net/ethernet/mellanox/mlx4/reset.o \
./drivers/net/ethernet/mellanox/mlx4/resource_tracker.o \
./drivers/net/ethernet/mellanox/mlx4/sense.o \
./drivers/net/ethernet/mellanox/mlx4/srq.o 

C_DEPS += \
./drivers/net/ethernet/mellanox/mlx4/alloc.d \
./drivers/net/ethernet/mellanox/mlx4/catas.d \
./drivers/net/ethernet/mellanox/mlx4/cmd.d \
./drivers/net/ethernet/mellanox/mlx4/cq.d \
./drivers/net/ethernet/mellanox/mlx4/en_cq.d \
./drivers/net/ethernet/mellanox/mlx4/en_ethtool.d \
./drivers/net/ethernet/mellanox/mlx4/en_main.d \
./drivers/net/ethernet/mellanox/mlx4/en_netdev.d \
./drivers/net/ethernet/mellanox/mlx4/en_port.d \
./drivers/net/ethernet/mellanox/mlx4/en_resources.d \
./drivers/net/ethernet/mellanox/mlx4/en_rx.d \
./drivers/net/ethernet/mellanox/mlx4/en_selftest.d \
./drivers/net/ethernet/mellanox/mlx4/en_tx.d \
./drivers/net/ethernet/mellanox/mlx4/eq.d \
./drivers/net/ethernet/mellanox/mlx4/fw.d \
./drivers/net/ethernet/mellanox/mlx4/icm.d \
./drivers/net/ethernet/mellanox/mlx4/intf.d \
./drivers/net/ethernet/mellanox/mlx4/main.d \
./drivers/net/ethernet/mellanox/mlx4/mcg.d \
./drivers/net/ethernet/mellanox/mlx4/mr.d \
./drivers/net/ethernet/mellanox/mlx4/pd.d \
./drivers/net/ethernet/mellanox/mlx4/port.d \
./drivers/net/ethernet/mellanox/mlx4/profile.d \
./drivers/net/ethernet/mellanox/mlx4/qp.d \
./drivers/net/ethernet/mellanox/mlx4/reset.d \
./drivers/net/ethernet/mellanox/mlx4/resource_tracker.d \
./drivers/net/ethernet/mellanox/mlx4/sense.d \
./drivers/net/ethernet/mellanox/mlx4/srq.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/mellanox/mlx4/%.o: ../drivers/net/ethernet/mellanox/mlx4/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


