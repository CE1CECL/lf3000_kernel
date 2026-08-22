################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/apple/bmac.c \
../drivers/net/ethernet/apple/mace.c \
../drivers/net/ethernet/apple/macmace.c 

OBJS += \
./drivers/net/ethernet/apple/bmac.o \
./drivers/net/ethernet/apple/mace.o \
./drivers/net/ethernet/apple/macmace.o 

C_DEPS += \
./drivers/net/ethernet/apple/bmac.d \
./drivers/net/ethernet/apple/mace.d \
./drivers/net/ethernet/apple/macmace.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/apple/%.o: ../drivers/net/ethernet/apple/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


