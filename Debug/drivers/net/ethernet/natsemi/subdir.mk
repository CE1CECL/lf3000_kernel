################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/natsemi/ibmlana.c \
../drivers/net/ethernet/natsemi/jazzsonic.c \
../drivers/net/ethernet/natsemi/macsonic.c \
../drivers/net/ethernet/natsemi/natsemi.c \
../drivers/net/ethernet/natsemi/ns83820.c \
../drivers/net/ethernet/natsemi/sonic.c \
../drivers/net/ethernet/natsemi/xtsonic.c 

OBJS += \
./drivers/net/ethernet/natsemi/ibmlana.o \
./drivers/net/ethernet/natsemi/jazzsonic.o \
./drivers/net/ethernet/natsemi/macsonic.o \
./drivers/net/ethernet/natsemi/natsemi.o \
./drivers/net/ethernet/natsemi/ns83820.o \
./drivers/net/ethernet/natsemi/sonic.o \
./drivers/net/ethernet/natsemi/xtsonic.o 

C_DEPS += \
./drivers/net/ethernet/natsemi/ibmlana.d \
./drivers/net/ethernet/natsemi/jazzsonic.d \
./drivers/net/ethernet/natsemi/macsonic.d \
./drivers/net/ethernet/natsemi/natsemi.d \
./drivers/net/ethernet/natsemi/ns83820.d \
./drivers/net/ethernet/natsemi/sonic.d \
./drivers/net/ethernet/natsemi/xtsonic.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/natsemi/%.o: ../drivers/net/ethernet/natsemi/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


