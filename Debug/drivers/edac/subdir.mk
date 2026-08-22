################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/edac/amd64_edac.c \
../drivers/edac/amd64_edac_dbg.c \
../drivers/edac/amd64_edac_inj.c \
../drivers/edac/amd76x_edac.c \
../drivers/edac/amd8111_edac.c \
../drivers/edac/amd8131_edac.c \
../drivers/edac/cell_edac.c \
../drivers/edac/cpc925_edac.c \
../drivers/edac/e752x_edac.c \
../drivers/edac/e7xxx_edac.c \
../drivers/edac/edac_device.c \
../drivers/edac/edac_device_sysfs.c \
../drivers/edac/edac_mc.c \
../drivers/edac/edac_mc_sysfs.c \
../drivers/edac/edac_module.c \
../drivers/edac/edac_pci.c \
../drivers/edac/edac_pci_sysfs.c \
../drivers/edac/edac_stub.c \
../drivers/edac/i3000_edac.c \
../drivers/edac/i3200_edac.c \
../drivers/edac/i5000_edac.c \
../drivers/edac/i5100_edac.c \
../drivers/edac/i5400_edac.c \
../drivers/edac/i7300_edac.c \
../drivers/edac/i7core_edac.c \
../drivers/edac/i82443bxgx_edac.c \
../drivers/edac/i82860_edac.c \
../drivers/edac/i82875p_edac.c \
../drivers/edac/i82975x_edac.c \
../drivers/edac/mce_amd.c \
../drivers/edac/mce_amd_inj.c \
../drivers/edac/mpc85xx_edac.c \
../drivers/edac/mv64x60_edac.c \
../drivers/edac/pasemi_edac.c \
../drivers/edac/ppc4xx_edac.c \
../drivers/edac/r82600_edac.c \
../drivers/edac/sb_edac.c \
../drivers/edac/tile_edac.c \
../drivers/edac/x38_edac.c 

OBJS += \
./drivers/edac/amd64_edac.o \
./drivers/edac/amd64_edac_dbg.o \
./drivers/edac/amd64_edac_inj.o \
./drivers/edac/amd76x_edac.o \
./drivers/edac/amd8111_edac.o \
./drivers/edac/amd8131_edac.o \
./drivers/edac/cell_edac.o \
./drivers/edac/cpc925_edac.o \
./drivers/edac/e752x_edac.o \
./drivers/edac/e7xxx_edac.o \
./drivers/edac/edac_device.o \
./drivers/edac/edac_device_sysfs.o \
./drivers/edac/edac_mc.o \
./drivers/edac/edac_mc_sysfs.o \
./drivers/edac/edac_module.o \
./drivers/edac/edac_pci.o \
./drivers/edac/edac_pci_sysfs.o \
./drivers/edac/edac_stub.o \
./drivers/edac/i3000_edac.o \
./drivers/edac/i3200_edac.o \
./drivers/edac/i5000_edac.o \
./drivers/edac/i5100_edac.o \
./drivers/edac/i5400_edac.o \
./drivers/edac/i7300_edac.o \
./drivers/edac/i7core_edac.o \
./drivers/edac/i82443bxgx_edac.o \
./drivers/edac/i82860_edac.o \
./drivers/edac/i82875p_edac.o \
./drivers/edac/i82975x_edac.o \
./drivers/edac/mce_amd.o \
./drivers/edac/mce_amd_inj.o \
./drivers/edac/mpc85xx_edac.o \
./drivers/edac/mv64x60_edac.o \
./drivers/edac/pasemi_edac.o \
./drivers/edac/ppc4xx_edac.o \
./drivers/edac/r82600_edac.o \
./drivers/edac/sb_edac.o \
./drivers/edac/tile_edac.o \
./drivers/edac/x38_edac.o 

C_DEPS += \
./drivers/edac/amd64_edac.d \
./drivers/edac/amd64_edac_dbg.d \
./drivers/edac/amd64_edac_inj.d \
./drivers/edac/amd76x_edac.d \
./drivers/edac/amd8111_edac.d \
./drivers/edac/amd8131_edac.d \
./drivers/edac/cell_edac.d \
./drivers/edac/cpc925_edac.d \
./drivers/edac/e752x_edac.d \
./drivers/edac/e7xxx_edac.d \
./drivers/edac/edac_device.d \
./drivers/edac/edac_device_sysfs.d \
./drivers/edac/edac_mc.d \
./drivers/edac/edac_mc_sysfs.d \
./drivers/edac/edac_module.d \
./drivers/edac/edac_pci.d \
./drivers/edac/edac_pci_sysfs.d \
./drivers/edac/edac_stub.d \
./drivers/edac/i3000_edac.d \
./drivers/edac/i3200_edac.d \
./drivers/edac/i5000_edac.d \
./drivers/edac/i5100_edac.d \
./drivers/edac/i5400_edac.d \
./drivers/edac/i7300_edac.d \
./drivers/edac/i7core_edac.d \
./drivers/edac/i82443bxgx_edac.d \
./drivers/edac/i82860_edac.d \
./drivers/edac/i82875p_edac.d \
./drivers/edac/i82975x_edac.d \
./drivers/edac/mce_amd.d \
./drivers/edac/mce_amd_inj.d \
./drivers/edac/mpc85xx_edac.d \
./drivers/edac/mv64x60_edac.d \
./drivers/edac/pasemi_edac.d \
./drivers/edac/ppc4xx_edac.d \
./drivers/edac/r82600_edac.d \
./drivers/edac/sb_edac.d \
./drivers/edac/tile_edac.d \
./drivers/edac/x38_edac.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/edac/%.o: ../drivers/edac/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


