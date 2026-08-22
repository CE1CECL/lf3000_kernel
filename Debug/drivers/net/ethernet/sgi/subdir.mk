################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/sgi/ioc3-eth.c \
../drivers/net/ethernet/sgi/meth.c 

OBJS += \
./drivers/net/ethernet/sgi/ioc3-eth.o \
./drivers/net/ethernet/sgi/meth.o 

C_DEPS += \
./drivers/net/ethernet/sgi/ioc3-eth.d \
./drivers/net/ethernet/sgi/meth.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/sgi/%.o: ../drivers/net/ethernet/sgi/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


