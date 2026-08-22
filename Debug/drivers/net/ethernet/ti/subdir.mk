################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/ti/cpmac.c \
../drivers/net/ethernet/ti/cpsw.c \
../drivers/net/ethernet/ti/cpsw_ale.c \
../drivers/net/ethernet/ti/davinci_cpdma.c \
../drivers/net/ethernet/ti/davinci_emac.c \
../drivers/net/ethernet/ti/davinci_mdio.c \
../drivers/net/ethernet/ti/tlan.c 

OBJS += \
./drivers/net/ethernet/ti/cpmac.o \
./drivers/net/ethernet/ti/cpsw.o \
./drivers/net/ethernet/ti/cpsw_ale.o \
./drivers/net/ethernet/ti/davinci_cpdma.o \
./drivers/net/ethernet/ti/davinci_emac.o \
./drivers/net/ethernet/ti/davinci_mdio.o \
./drivers/net/ethernet/ti/tlan.o 

C_DEPS += \
./drivers/net/ethernet/ti/cpmac.d \
./drivers/net/ethernet/ti/cpsw.d \
./drivers/net/ethernet/ti/cpsw_ale.d \
./drivers/net/ethernet/ti/davinci_cpdma.d \
./drivers/net/ethernet/ti/davinci_emac.d \
./drivers/net/ethernet/ti/davinci_mdio.d \
./drivers/net/ethernet/ti/tlan.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/ti/%.o: ../drivers/net/ethernet/ti/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


