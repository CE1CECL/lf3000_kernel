################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/broadcom/bnx2x/bnx2x_cmn.c \
../drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.c \
../drivers/net/ethernet/broadcom/bnx2x/bnx2x_ethtool.c \
../drivers/net/ethernet/broadcom/bnx2x/bnx2x_link.c \
../drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c \
../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sp.c \
../drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c 

OBJS += \
./drivers/net/ethernet/broadcom/bnx2x/bnx2x_cmn.o \
./drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.o \
./drivers/net/ethernet/broadcom/bnx2x/bnx2x_ethtool.o \
./drivers/net/ethernet/broadcom/bnx2x/bnx2x_link.o \
./drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.o \
./drivers/net/ethernet/broadcom/bnx2x/bnx2x_sp.o \
./drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.o 

C_DEPS += \
./drivers/net/ethernet/broadcom/bnx2x/bnx2x_cmn.d \
./drivers/net/ethernet/broadcom/bnx2x/bnx2x_dcb.d \
./drivers/net/ethernet/broadcom/bnx2x/bnx2x_ethtool.d \
./drivers/net/ethernet/broadcom/bnx2x/bnx2x_link.d \
./drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.d \
./drivers/net/ethernet/broadcom/bnx2x/bnx2x_sp.d \
./drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/broadcom/bnx2x/%.o: ../drivers/net/ethernet/broadcom/bnx2x/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


