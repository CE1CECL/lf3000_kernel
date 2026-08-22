################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/bonding/bond_3ad.c \
../drivers/net/bonding/bond_alb.c \
../drivers/net/bonding/bond_debugfs.c \
../drivers/net/bonding/bond_main.c \
../drivers/net/bonding/bond_procfs.c \
../drivers/net/bonding/bond_sysfs.c 

OBJS += \
./drivers/net/bonding/bond_3ad.o \
./drivers/net/bonding/bond_alb.o \
./drivers/net/bonding/bond_debugfs.o \
./drivers/net/bonding/bond_main.o \
./drivers/net/bonding/bond_procfs.o \
./drivers/net/bonding/bond_sysfs.o 

C_DEPS += \
./drivers/net/bonding/bond_3ad.d \
./drivers/net/bonding/bond_alb.d \
./drivers/net/bonding/bond_debugfs.d \
./drivers/net/bonding/bond_main.d \
./drivers/net/bonding/bond_procfs.d \
./drivers/net/bonding/bond_sysfs.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/bonding/%.o: ../drivers/net/bonding/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


