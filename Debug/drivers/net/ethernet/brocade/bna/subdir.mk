################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/brocade/bna/bfa_cee.c \
../drivers/net/ethernet/brocade/bna/bfa_ioc.c \
../drivers/net/ethernet/brocade/bna/bfa_ioc_ct.c \
../drivers/net/ethernet/brocade/bna/bfa_msgq.c \
../drivers/net/ethernet/brocade/bna/bna_enet.c \
../drivers/net/ethernet/brocade/bna/bna_tx_rx.c \
../drivers/net/ethernet/brocade/bna/bnad.c \
../drivers/net/ethernet/brocade/bna/bnad_debugfs.c \
../drivers/net/ethernet/brocade/bna/bnad_ethtool.c \
../drivers/net/ethernet/brocade/bna/cna_fwimg.c 

OBJS += \
./drivers/net/ethernet/brocade/bna/bfa_cee.o \
./drivers/net/ethernet/brocade/bna/bfa_ioc.o \
./drivers/net/ethernet/brocade/bna/bfa_ioc_ct.o \
./drivers/net/ethernet/brocade/bna/bfa_msgq.o \
./drivers/net/ethernet/brocade/bna/bna_enet.o \
./drivers/net/ethernet/brocade/bna/bna_tx_rx.o \
./drivers/net/ethernet/brocade/bna/bnad.o \
./drivers/net/ethernet/brocade/bna/bnad_debugfs.o \
./drivers/net/ethernet/brocade/bna/bnad_ethtool.o \
./drivers/net/ethernet/brocade/bna/cna_fwimg.o 

C_DEPS += \
./drivers/net/ethernet/brocade/bna/bfa_cee.d \
./drivers/net/ethernet/brocade/bna/bfa_ioc.d \
./drivers/net/ethernet/brocade/bna/bfa_ioc_ct.d \
./drivers/net/ethernet/brocade/bna/bfa_msgq.d \
./drivers/net/ethernet/brocade/bna/bna_enet.d \
./drivers/net/ethernet/brocade/bna/bna_tx_rx.d \
./drivers/net/ethernet/brocade/bna/bnad.d \
./drivers/net/ethernet/brocade/bna/bnad_debugfs.d \
./drivers/net/ethernet/brocade/bna/bnad_ethtool.d \
./drivers/net/ethernet/brocade/bna/cna_fwimg.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/brocade/bna/%.o: ../drivers/net/ethernet/brocade/bna/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


