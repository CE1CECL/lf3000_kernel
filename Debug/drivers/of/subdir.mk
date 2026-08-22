################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/of/address.c \
../drivers/of/base.c \
../drivers/of/device.c \
../drivers/of/fdt.c \
../drivers/of/gpio.c \
../drivers/of/irq.c \
../drivers/of/of_i2c.c \
../drivers/of/of_mdio.c \
../drivers/of/of_mtd.c \
../drivers/of/of_net.c \
../drivers/of/of_pci.c \
../drivers/of/of_pci_irq.c \
../drivers/of/of_spi.c \
../drivers/of/pdt.c \
../drivers/of/platform.c \
../drivers/of/selftest.c 

OBJS += \
./drivers/of/address.o \
./drivers/of/base.o \
./drivers/of/device.o \
./drivers/of/fdt.o \
./drivers/of/gpio.o \
./drivers/of/irq.o \
./drivers/of/of_i2c.o \
./drivers/of/of_mdio.o \
./drivers/of/of_mtd.o \
./drivers/of/of_net.o \
./drivers/of/of_pci.o \
./drivers/of/of_pci_irq.o \
./drivers/of/of_spi.o \
./drivers/of/pdt.o \
./drivers/of/platform.o \
./drivers/of/selftest.o 

C_DEPS += \
./drivers/of/address.d \
./drivers/of/base.d \
./drivers/of/device.d \
./drivers/of/fdt.d \
./drivers/of/gpio.d \
./drivers/of/irq.d \
./drivers/of/of_i2c.d \
./drivers/of/of_mdio.d \
./drivers/of/of_mtd.d \
./drivers/of/of_net.d \
./drivers/of/of_pci.d \
./drivers/of/of_pci_irq.d \
./drivers/of/of_spi.d \
./drivers/of/pdt.d \
./drivers/of/platform.d \
./drivers/of/selftest.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/of/%.o: ../drivers/of/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


