################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/intel/igbvf/ethtool.c \
../drivers/net/ethernet/intel/igbvf/mbx.c \
../drivers/net/ethernet/intel/igbvf/netdev.c \
../drivers/net/ethernet/intel/igbvf/vf.c 

OBJS += \
./drivers/net/ethernet/intel/igbvf/ethtool.o \
./drivers/net/ethernet/intel/igbvf/mbx.o \
./drivers/net/ethernet/intel/igbvf/netdev.o \
./drivers/net/ethernet/intel/igbvf/vf.o 

C_DEPS += \
./drivers/net/ethernet/intel/igbvf/ethtool.d \
./drivers/net/ethernet/intel/igbvf/mbx.d \
./drivers/net/ethernet/intel/igbvf/netdev.d \
./drivers/net/ethernet/intel/igbvf/vf.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/intel/igbvf/%.o: ../drivers/net/ethernet/intel/igbvf/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


