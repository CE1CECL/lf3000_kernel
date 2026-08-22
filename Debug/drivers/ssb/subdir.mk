################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/ssb/b43_pci_bridge.c \
../drivers/ssb/driver_chipcommon.c \
../drivers/ssb/driver_chipcommon_pmu.c \
../drivers/ssb/driver_extif.c \
../drivers/ssb/driver_gige.c \
../drivers/ssb/driver_mipscore.c \
../drivers/ssb/driver_pcicore.c \
../drivers/ssb/embedded.c \
../drivers/ssb/main.c \
../drivers/ssb/pci.c \
../drivers/ssb/pcihost_wrapper.c \
../drivers/ssb/pcmcia.c \
../drivers/ssb/scan.c \
../drivers/ssb/sdio.c \
../drivers/ssb/sprom.c 

OBJS += \
./drivers/ssb/b43_pci_bridge.o \
./drivers/ssb/driver_chipcommon.o \
./drivers/ssb/driver_chipcommon_pmu.o \
./drivers/ssb/driver_extif.o \
./drivers/ssb/driver_gige.o \
./drivers/ssb/driver_mipscore.o \
./drivers/ssb/driver_pcicore.o \
./drivers/ssb/embedded.o \
./drivers/ssb/main.o \
./drivers/ssb/pci.o \
./drivers/ssb/pcihost_wrapper.o \
./drivers/ssb/pcmcia.o \
./drivers/ssb/scan.o \
./drivers/ssb/sdio.o \
./drivers/ssb/sprom.o 

C_DEPS += \
./drivers/ssb/b43_pci_bridge.d \
./drivers/ssb/driver_chipcommon.d \
./drivers/ssb/driver_chipcommon_pmu.d \
./drivers/ssb/driver_extif.d \
./drivers/ssb/driver_gige.d \
./drivers/ssb/driver_mipscore.d \
./drivers/ssb/driver_pcicore.d \
./drivers/ssb/embedded.d \
./drivers/ssb/main.d \
./drivers/ssb/pci.d \
./drivers/ssb/pcihost_wrapper.d \
./drivers/ssb/pcmcia.d \
./drivers/ssb/scan.d \
./drivers/ssb/sdio.d \
./drivers/ssb/sprom.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/ssb/%.o: ../drivers/ssb/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


