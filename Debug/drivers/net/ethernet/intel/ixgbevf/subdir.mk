################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/intel/ixgbevf/ethtool.c \
../drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c \
../drivers/net/ethernet/intel/ixgbevf/mbx.c \
../drivers/net/ethernet/intel/ixgbevf/vf.c 

OBJS += \
./drivers/net/ethernet/intel/ixgbevf/ethtool.o \
./drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.o \
./drivers/net/ethernet/intel/ixgbevf/mbx.o \
./drivers/net/ethernet/intel/ixgbevf/vf.o 

C_DEPS += \
./drivers/net/ethernet/intel/ixgbevf/ethtool.d \
./drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.d \
./drivers/net/ethernet/intel/ixgbevf/mbx.d \
./drivers/net/ethernet/intel/ixgbevf/vf.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/intel/ixgbevf/%.o: ../drivers/net/ethernet/intel/ixgbevf/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


