################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/bcma/core.c \
../drivers/bcma/driver_chipcommon.c \
../drivers/bcma/driver_chipcommon_pmu.c \
../drivers/bcma/driver_mips.c \
../drivers/bcma/driver_pci.c \
../drivers/bcma/driver_pci_host.c \
../drivers/bcma/host_pci.c \
../drivers/bcma/host_soc.c \
../drivers/bcma/main.c \
../drivers/bcma/scan.c \
../drivers/bcma/sprom.c 

OBJS += \
./drivers/bcma/core.o \
./drivers/bcma/driver_chipcommon.o \
./drivers/bcma/driver_chipcommon_pmu.o \
./drivers/bcma/driver_mips.o \
./drivers/bcma/driver_pci.o \
./drivers/bcma/driver_pci_host.o \
./drivers/bcma/host_pci.o \
./drivers/bcma/host_soc.o \
./drivers/bcma/main.o \
./drivers/bcma/scan.o \
./drivers/bcma/sprom.o 

C_DEPS += \
./drivers/bcma/core.d \
./drivers/bcma/driver_chipcommon.d \
./drivers/bcma/driver_chipcommon_pmu.d \
./drivers/bcma/driver_mips.d \
./drivers/bcma/driver_pci.d \
./drivers/bcma/driver_pci_host.d \
./drivers/bcma/host_pci.d \
./drivers/bcma/host_soc.d \
./drivers/bcma/main.d \
./drivers/bcma/scan.d \
./drivers/bcma/sprom.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/bcma/%.o: ../drivers/bcma/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


