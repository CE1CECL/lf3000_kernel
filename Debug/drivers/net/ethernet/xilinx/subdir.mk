################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/xilinx/ll_temac_main.c \
../drivers/net/ethernet/xilinx/ll_temac_mdio.c \
../drivers/net/ethernet/xilinx/xilinx_axienet_main.c \
../drivers/net/ethernet/xilinx/xilinx_axienet_mdio.c \
../drivers/net/ethernet/xilinx/xilinx_emaclite.c 

OBJS += \
./drivers/net/ethernet/xilinx/ll_temac_main.o \
./drivers/net/ethernet/xilinx/ll_temac_mdio.o \
./drivers/net/ethernet/xilinx/xilinx_axienet_main.o \
./drivers/net/ethernet/xilinx/xilinx_axienet_mdio.o \
./drivers/net/ethernet/xilinx/xilinx_emaclite.o 

C_DEPS += \
./drivers/net/ethernet/xilinx/ll_temac_main.d \
./drivers/net/ethernet/xilinx/ll_temac_mdio.d \
./drivers/net/ethernet/xilinx/xilinx_axienet_main.d \
./drivers/net/ethernet/xilinx/xilinx_axienet_mdio.d \
./drivers/net/ethernet/xilinx/xilinx_emaclite.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/xilinx/%.o: ../drivers/net/ethernet/xilinx/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


