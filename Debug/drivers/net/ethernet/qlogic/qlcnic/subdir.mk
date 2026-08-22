################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c \
../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.c \
../drivers/net/ethernet/qlogic/qlcnic/qlcnic_hw.c \
../drivers/net/ethernet/qlogic/qlcnic/qlcnic_init.c \
../drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c 

OBJS += \
./drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.o \
./drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.o \
./drivers/net/ethernet/qlogic/qlcnic/qlcnic_hw.o \
./drivers/net/ethernet/qlogic/qlcnic/qlcnic_init.o \
./drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.o 

C_DEPS += \
./drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.d \
./drivers/net/ethernet/qlogic/qlcnic/qlcnic_ethtool.d \
./drivers/net/ethernet/qlogic/qlcnic/qlcnic_hw.d \
./drivers/net/ethernet/qlogic/qlcnic/qlcnic_init.d \
./drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/qlogic/qlcnic/%.o: ../drivers/net/ethernet/qlogic/qlcnic/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


