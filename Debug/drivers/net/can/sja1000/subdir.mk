################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/can/sja1000/ems_pci.c \
../drivers/net/can/sja1000/ems_pcmcia.c \
../drivers/net/can/sja1000/kvaser_pci.c \
../drivers/net/can/sja1000/peak_pci.c \
../drivers/net/can/sja1000/peak_pcmcia.c \
../drivers/net/can/sja1000/plx_pci.c \
../drivers/net/can/sja1000/sja1000.c \
../drivers/net/can/sja1000/sja1000_isa.c \
../drivers/net/can/sja1000/sja1000_of_platform.c \
../drivers/net/can/sja1000/sja1000_platform.c \
../drivers/net/can/sja1000/tscan1.c 

OBJS += \
./drivers/net/can/sja1000/ems_pci.o \
./drivers/net/can/sja1000/ems_pcmcia.o \
./drivers/net/can/sja1000/kvaser_pci.o \
./drivers/net/can/sja1000/peak_pci.o \
./drivers/net/can/sja1000/peak_pcmcia.o \
./drivers/net/can/sja1000/plx_pci.o \
./drivers/net/can/sja1000/sja1000.o \
./drivers/net/can/sja1000/sja1000_isa.o \
./drivers/net/can/sja1000/sja1000_of_platform.o \
./drivers/net/can/sja1000/sja1000_platform.o \
./drivers/net/can/sja1000/tscan1.o 

C_DEPS += \
./drivers/net/can/sja1000/ems_pci.d \
./drivers/net/can/sja1000/ems_pcmcia.d \
./drivers/net/can/sja1000/kvaser_pci.d \
./drivers/net/can/sja1000/peak_pci.d \
./drivers/net/can/sja1000/peak_pcmcia.d \
./drivers/net/can/sja1000/plx_pci.d \
./drivers/net/can/sja1000/sja1000.d \
./drivers/net/can/sja1000/sja1000_isa.d \
./drivers/net/can/sja1000/sja1000_of_platform.d \
./drivers/net/can/sja1000/sja1000_platform.d \
./drivers/net/can/sja1000/tscan1.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/can/sja1000/%.o: ../drivers/net/can/sja1000/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


