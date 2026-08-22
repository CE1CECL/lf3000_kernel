################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c \
../drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c \
../drivers/net/ethernet/intel/ixgbe/ixgbe_common.c \
../drivers/net/ethernet/intel/ixgbe/ixgbe_dcb.c \
../drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_82598.c \
../drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_82599.c \
../drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c \
../drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c \
../drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c \
../drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c \
../drivers/net/ethernet/intel/ixgbe/ixgbe_main.c \
../drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.c \
../drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c \
../drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c \
../drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c 

OBJS += \
./drivers/net/ethernet/intel/ixgbe/ixgbe_82598.o \
./drivers/net/ethernet/intel/ixgbe/ixgbe_82599.o \
./drivers/net/ethernet/intel/ixgbe/ixgbe_common.o \
./drivers/net/ethernet/intel/ixgbe/ixgbe_dcb.o \
./drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_82598.o \
./drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_82599.o \
./drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_nl.o \
./drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.o \
./drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.o \
./drivers/net/ethernet/intel/ixgbe/ixgbe_lib.o \
./drivers/net/ethernet/intel/ixgbe/ixgbe_main.o \
./drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.o \
./drivers/net/ethernet/intel/ixgbe/ixgbe_phy.o \
./drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.o \
./drivers/net/ethernet/intel/ixgbe/ixgbe_x540.o 

C_DEPS += \
./drivers/net/ethernet/intel/ixgbe/ixgbe_82598.d \
./drivers/net/ethernet/intel/ixgbe/ixgbe_82599.d \
./drivers/net/ethernet/intel/ixgbe/ixgbe_common.d \
./drivers/net/ethernet/intel/ixgbe/ixgbe_dcb.d \
./drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_82598.d \
./drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_82599.d \
./drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_nl.d \
./drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.d \
./drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.d \
./drivers/net/ethernet/intel/ixgbe/ixgbe_lib.d \
./drivers/net/ethernet/intel/ixgbe/ixgbe_main.d \
./drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.d \
./drivers/net/ethernet/intel/ixgbe/ixgbe_phy.d \
./drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.d \
./drivers/net/ethernet/intel/ixgbe/ixgbe_x540.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/intel/ixgbe/%.o: ../drivers/net/ethernet/intel/ixgbe/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


