################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/dlink/de600.c \
../drivers/net/ethernet/dlink/de620.c \
../drivers/net/ethernet/dlink/dl2k.c \
../drivers/net/ethernet/dlink/sundance.c 

OBJS += \
./drivers/net/ethernet/dlink/de600.o \
./drivers/net/ethernet/dlink/de620.o \
./drivers/net/ethernet/dlink/dl2k.o \
./drivers/net/ethernet/dlink/sundance.o 

C_DEPS += \
./drivers/net/ethernet/dlink/de600.d \
./drivers/net/ethernet/dlink/de620.d \
./drivers/net/ethernet/dlink/dl2k.d \
./drivers/net/ethernet/dlink/sundance.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/dlink/%.o: ../drivers/net/ethernet/dlink/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


