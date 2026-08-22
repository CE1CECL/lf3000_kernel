################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/vmxnet3/vmxnet3_drv.c \
../drivers/net/vmxnet3/vmxnet3_ethtool.c 

OBJS += \
./drivers/net/vmxnet3/vmxnet3_drv.o \
./drivers/net/vmxnet3/vmxnet3_ethtool.o 

C_DEPS += \
./drivers/net/vmxnet3/vmxnet3_drv.d \
./drivers/net/vmxnet3/vmxnet3_ethtool.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/vmxnet3/%.o: ../drivers/net/vmxnet3/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


