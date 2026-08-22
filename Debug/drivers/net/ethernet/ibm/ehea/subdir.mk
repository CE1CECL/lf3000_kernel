################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/ibm/ehea/ehea_ethtool.c \
../drivers/net/ethernet/ibm/ehea/ehea_main.c \
../drivers/net/ethernet/ibm/ehea/ehea_phyp.c \
../drivers/net/ethernet/ibm/ehea/ehea_qmr.c 

OBJS += \
./drivers/net/ethernet/ibm/ehea/ehea_ethtool.o \
./drivers/net/ethernet/ibm/ehea/ehea_main.o \
./drivers/net/ethernet/ibm/ehea/ehea_phyp.o \
./drivers/net/ethernet/ibm/ehea/ehea_qmr.o 

C_DEPS += \
./drivers/net/ethernet/ibm/ehea/ehea_ethtool.d \
./drivers/net/ethernet/ibm/ehea/ehea_main.d \
./drivers/net/ethernet/ibm/ehea/ehea_phyp.d \
./drivers/net/ethernet/ibm/ehea/ehea_qmr.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/ibm/ehea/%.o: ../drivers/net/ethernet/ibm/ehea/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


