################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/micrel/ks8695net.c \
../drivers/net/ethernet/micrel/ks8842.c \
../drivers/net/ethernet/micrel/ks8851.c \
../drivers/net/ethernet/micrel/ks8851_mll.c \
../drivers/net/ethernet/micrel/ksz884x.c 

OBJS += \
./drivers/net/ethernet/micrel/ks8695net.o \
./drivers/net/ethernet/micrel/ks8842.o \
./drivers/net/ethernet/micrel/ks8851.o \
./drivers/net/ethernet/micrel/ks8851_mll.o \
./drivers/net/ethernet/micrel/ksz884x.o 

C_DEPS += \
./drivers/net/ethernet/micrel/ks8695net.d \
./drivers/net/ethernet/micrel/ks8842.d \
./drivers/net/ethernet/micrel/ks8851.d \
./drivers/net/ethernet/micrel/ks8851_mll.d \
./drivers/net/ethernet/micrel/ksz884x.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/micrel/%.o: ../drivers/net/ethernet/micrel/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


