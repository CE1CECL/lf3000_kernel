################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/seeq/ether3.c \
../drivers/net/ethernet/seeq/seeq8005.c \
../drivers/net/ethernet/seeq/sgiseeq.c 

OBJS += \
./drivers/net/ethernet/seeq/ether3.o \
./drivers/net/ethernet/seeq/seeq8005.o \
./drivers/net/ethernet/seeq/sgiseeq.o 

C_DEPS += \
./drivers/net/ethernet/seeq/ether3.d \
./drivers/net/ethernet/seeq/seeq8005.d \
./drivers/net/ethernet/seeq/sgiseeq.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/seeq/%.o: ../drivers/net/ethernet/seeq/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


