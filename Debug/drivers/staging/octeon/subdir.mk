################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/octeon/ethernet-mdio.c \
../drivers/staging/octeon/ethernet-mem.c \
../drivers/staging/octeon/ethernet-rgmii.c \
../drivers/staging/octeon/ethernet-rx.c \
../drivers/staging/octeon/ethernet-sgmii.c \
../drivers/staging/octeon/ethernet-spi.c \
../drivers/staging/octeon/ethernet-tx.c \
../drivers/staging/octeon/ethernet-xaui.c \
../drivers/staging/octeon/ethernet.c 

OBJS += \
./drivers/staging/octeon/ethernet-mdio.o \
./drivers/staging/octeon/ethernet-mem.o \
./drivers/staging/octeon/ethernet-rgmii.o \
./drivers/staging/octeon/ethernet-rx.o \
./drivers/staging/octeon/ethernet-sgmii.o \
./drivers/staging/octeon/ethernet-spi.o \
./drivers/staging/octeon/ethernet-tx.o \
./drivers/staging/octeon/ethernet-xaui.o \
./drivers/staging/octeon/ethernet.o 

C_DEPS += \
./drivers/staging/octeon/ethernet-mdio.d \
./drivers/staging/octeon/ethernet-mem.d \
./drivers/staging/octeon/ethernet-rgmii.d \
./drivers/staging/octeon/ethernet-rx.d \
./drivers/staging/octeon/ethernet-sgmii.d \
./drivers/staging/octeon/ethernet-spi.d \
./drivers/staging/octeon/ethernet-tx.d \
./drivers/staging/octeon/ethernet-xaui.d \
./drivers/staging/octeon/ethernet.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/octeon/%.o: ../drivers/staging/octeon/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


