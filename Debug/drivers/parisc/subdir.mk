################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/parisc/asp.c \
../drivers/parisc/ccio-dma.c \
../drivers/parisc/ccio-rm-dma.c \
../drivers/parisc/dino.c \
../drivers/parisc/eisa.c \
../drivers/parisc/eisa_eeprom.c \
../drivers/parisc/eisa_enumerator.c \
../drivers/parisc/gsc.c \
../drivers/parisc/hppb.c \
../drivers/parisc/iosapic.c \
../drivers/parisc/lasi.c \
../drivers/parisc/lba_pci.c \
../drivers/parisc/led.c \
../drivers/parisc/pdc_stable.c \
../drivers/parisc/power.c \
../drivers/parisc/sba_iommu.c \
../drivers/parisc/superio.c \
../drivers/parisc/wax.c 

OBJS += \
./drivers/parisc/asp.o \
./drivers/parisc/ccio-dma.o \
./drivers/parisc/ccio-rm-dma.o \
./drivers/parisc/dino.o \
./drivers/parisc/eisa.o \
./drivers/parisc/eisa_eeprom.o \
./drivers/parisc/eisa_enumerator.o \
./drivers/parisc/gsc.o \
./drivers/parisc/hppb.o \
./drivers/parisc/iosapic.o \
./drivers/parisc/lasi.o \
./drivers/parisc/lba_pci.o \
./drivers/parisc/led.o \
./drivers/parisc/pdc_stable.o \
./drivers/parisc/power.o \
./drivers/parisc/sba_iommu.o \
./drivers/parisc/superio.o \
./drivers/parisc/wax.o 

C_DEPS += \
./drivers/parisc/asp.d \
./drivers/parisc/ccio-dma.d \
./drivers/parisc/ccio-rm-dma.d \
./drivers/parisc/dino.d \
./drivers/parisc/eisa.d \
./drivers/parisc/eisa_eeprom.d \
./drivers/parisc/eisa_enumerator.d \
./drivers/parisc/gsc.d \
./drivers/parisc/hppb.d \
./drivers/parisc/iosapic.d \
./drivers/parisc/lasi.d \
./drivers/parisc/lba_pci.d \
./drivers/parisc/led.d \
./drivers/parisc/pdc_stable.d \
./drivers/parisc/power.d \
./drivers/parisc/sba_iommu.d \
./drivers/parisc/superio.d \
./drivers/parisc/wax.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/parisc/%.o: ../drivers/parisc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


