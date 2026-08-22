################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/ibm/emac/core.c \
../drivers/net/ethernet/ibm/emac/debug.c \
../drivers/net/ethernet/ibm/emac/mal.c \
../drivers/net/ethernet/ibm/emac/phy.c \
../drivers/net/ethernet/ibm/emac/rgmii.c \
../drivers/net/ethernet/ibm/emac/tah.c \
../drivers/net/ethernet/ibm/emac/zmii.c 

OBJS += \
./drivers/net/ethernet/ibm/emac/core.o \
./drivers/net/ethernet/ibm/emac/debug.o \
./drivers/net/ethernet/ibm/emac/mal.o \
./drivers/net/ethernet/ibm/emac/phy.o \
./drivers/net/ethernet/ibm/emac/rgmii.o \
./drivers/net/ethernet/ibm/emac/tah.o \
./drivers/net/ethernet/ibm/emac/zmii.o 

C_DEPS += \
./drivers/net/ethernet/ibm/emac/core.d \
./drivers/net/ethernet/ibm/emac/debug.d \
./drivers/net/ethernet/ibm/emac/mal.d \
./drivers/net/ethernet/ibm/emac/phy.d \
./drivers/net/ethernet/ibm/emac/rgmii.d \
./drivers/net/ethernet/ibm/emac/tah.d \
./drivers/net/ethernet/ibm/emac/zmii.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/ibm/emac/%.o: ../drivers/net/ethernet/ibm/emac/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


