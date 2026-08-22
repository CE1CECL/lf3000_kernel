################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/packetengines/hamachi.c \
../drivers/net/ethernet/packetengines/yellowfin.c 

OBJS += \
./drivers/net/ethernet/packetengines/hamachi.o \
./drivers/net/ethernet/packetengines/yellowfin.o 

C_DEPS += \
./drivers/net/ethernet/packetengines/hamachi.d \
./drivers/net/ethernet/packetengines/yellowfin.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/packetengines/%.o: ../drivers/net/ethernet/packetengines/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


