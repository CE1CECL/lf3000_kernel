################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/intel/ixgb/ixgb_ee.c \
../drivers/net/ethernet/intel/ixgb/ixgb_ethtool.c \
../drivers/net/ethernet/intel/ixgb/ixgb_hw.c \
../drivers/net/ethernet/intel/ixgb/ixgb_main.c \
../drivers/net/ethernet/intel/ixgb/ixgb_param.c 

OBJS += \
./drivers/net/ethernet/intel/ixgb/ixgb_ee.o \
./drivers/net/ethernet/intel/ixgb/ixgb_ethtool.o \
./drivers/net/ethernet/intel/ixgb/ixgb_hw.o \
./drivers/net/ethernet/intel/ixgb/ixgb_main.o \
./drivers/net/ethernet/intel/ixgb/ixgb_param.o 

C_DEPS += \
./drivers/net/ethernet/intel/ixgb/ixgb_ee.d \
./drivers/net/ethernet/intel/ixgb/ixgb_ethtool.d \
./drivers/net/ethernet/intel/ixgb/ixgb_hw.d \
./drivers/net/ethernet/intel/ixgb/ixgb_main.d \
./drivers/net/ethernet/intel/ixgb/ixgb_param.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/intel/ixgb/%.o: ../drivers/net/ethernet/intel/ixgb/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


