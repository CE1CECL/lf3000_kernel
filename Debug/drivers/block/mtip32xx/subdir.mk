################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/block/mtip32xx/mtip32xx.c 

OBJS += \
./drivers/block/mtip32xx/mtip32xx.o 

C_DEPS += \
./drivers/block/mtip32xx/mtip32xx.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/block/mtip32xx/%.o: ../drivers/block/mtip32xx/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


