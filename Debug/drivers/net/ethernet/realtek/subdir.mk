################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/realtek/8139cp.c \
../drivers/net/ethernet/realtek/8139too.c \
../drivers/net/ethernet/realtek/atp.c \
../drivers/net/ethernet/realtek/r8169.c 

OBJS += \
./drivers/net/ethernet/realtek/8139cp.o \
./drivers/net/ethernet/realtek/8139too.o \
./drivers/net/ethernet/realtek/atp.o \
./drivers/net/ethernet/realtek/r8169.o 

C_DEPS += \
./drivers/net/ethernet/realtek/8139cp.d \
./drivers/net/ethernet/realtek/8139too.d \
./drivers/net/ethernet/realtek/atp.d \
./drivers/net/ethernet/realtek/r8169.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/realtek/%.o: ../drivers/net/ethernet/realtek/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


