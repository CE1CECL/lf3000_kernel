################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/via/via-rhine.c \
../drivers/net/ethernet/via/via-velocity.c 

OBJS += \
./drivers/net/ethernet/via/via-rhine.o \
./drivers/net/ethernet/via/via-velocity.o 

C_DEPS += \
./drivers/net/ethernet/via/via-rhine.d \
./drivers/net/ethernet/via/via-velocity.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/via/%.o: ../drivers/net/ethernet/via/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


