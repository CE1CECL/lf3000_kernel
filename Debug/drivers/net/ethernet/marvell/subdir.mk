################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/marvell/mv643xx_eth.c \
../drivers/net/ethernet/marvell/pxa168_eth.c \
../drivers/net/ethernet/marvell/skge.c \
../drivers/net/ethernet/marvell/sky2.c 

OBJS += \
./drivers/net/ethernet/marvell/mv643xx_eth.o \
./drivers/net/ethernet/marvell/pxa168_eth.o \
./drivers/net/ethernet/marvell/skge.o \
./drivers/net/ethernet/marvell/sky2.o 

C_DEPS += \
./drivers/net/ethernet/marvell/mv643xx_eth.d \
./drivers/net/ethernet/marvell/pxa168_eth.d \
./drivers/net/ethernet/marvell/skge.d \
./drivers/net/ethernet/marvell/sky2.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/marvell/%.o: ../drivers/net/ethernet/marvell/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


