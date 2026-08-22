################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/atheros/atlx/atl1.c \
../drivers/net/ethernet/atheros/atlx/atl2.c \
../drivers/net/ethernet/atheros/atlx/atlx.c 

OBJS += \
./drivers/net/ethernet/atheros/atlx/atl1.o \
./drivers/net/ethernet/atheros/atlx/atl2.o \
./drivers/net/ethernet/atheros/atlx/atlx.o 

C_DEPS += \
./drivers/net/ethernet/atheros/atlx/atl1.d \
./drivers/net/ethernet/atheros/atlx/atl2.d \
./drivers/net/ethernet/atheros/atlx/atlx.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/atheros/atlx/%.o: ../drivers/net/ethernet/atheros/atlx/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


