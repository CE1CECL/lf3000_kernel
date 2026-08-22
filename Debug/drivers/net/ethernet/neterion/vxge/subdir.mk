################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/neterion/vxge/vxge-config.c \
../drivers/net/ethernet/neterion/vxge/vxge-ethtool.c \
../drivers/net/ethernet/neterion/vxge/vxge-main.c \
../drivers/net/ethernet/neterion/vxge/vxge-traffic.c 

OBJS += \
./drivers/net/ethernet/neterion/vxge/vxge-config.o \
./drivers/net/ethernet/neterion/vxge/vxge-ethtool.o \
./drivers/net/ethernet/neterion/vxge/vxge-main.o \
./drivers/net/ethernet/neterion/vxge/vxge-traffic.o 

C_DEPS += \
./drivers/net/ethernet/neterion/vxge/vxge-config.d \
./drivers/net/ethernet/neterion/vxge/vxge-ethtool.d \
./drivers/net/ethernet/neterion/vxge/vxge-main.d \
./drivers/net/ethernet/neterion/vxge/vxge-traffic.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/neterion/vxge/%.o: ../drivers/net/ethernet/neterion/vxge/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


