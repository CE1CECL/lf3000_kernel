################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/scsi/aic7xxx/aic7770.c \
../drivers/scsi/aic7xxx/aic7770_osm.c \
../drivers/scsi/aic7xxx/aic79xx_core.c \
../drivers/scsi/aic7xxx/aic79xx_osm.c \
../drivers/scsi/aic7xxx/aic79xx_osm_pci.c \
../drivers/scsi/aic7xxx/aic79xx_pci.c \
../drivers/scsi/aic7xxx/aic79xx_proc.c \
../drivers/scsi/aic7xxx/aic7xxx_93cx6.c \
../drivers/scsi/aic7xxx/aic7xxx_core.c \
../drivers/scsi/aic7xxx/aic7xxx_osm.c \
../drivers/scsi/aic7xxx/aic7xxx_osm_pci.c \
../drivers/scsi/aic7xxx/aic7xxx_pci.c \
../drivers/scsi/aic7xxx/aic7xxx_proc.c \
../drivers/scsi/aic7xxx/aiclib.c 

OBJS += \
./drivers/scsi/aic7xxx/aic7770.o \
./drivers/scsi/aic7xxx/aic7770_osm.o \
./drivers/scsi/aic7xxx/aic79xx_core.o \
./drivers/scsi/aic7xxx/aic79xx_osm.o \
./drivers/scsi/aic7xxx/aic79xx_osm_pci.o \
./drivers/scsi/aic7xxx/aic79xx_pci.o \
./drivers/scsi/aic7xxx/aic79xx_proc.o \
./drivers/scsi/aic7xxx/aic7xxx_93cx6.o \
./drivers/scsi/aic7xxx/aic7xxx_core.o \
./drivers/scsi/aic7xxx/aic7xxx_osm.o \
./drivers/scsi/aic7xxx/aic7xxx_osm_pci.o \
./drivers/scsi/aic7xxx/aic7xxx_pci.o \
./drivers/scsi/aic7xxx/aic7xxx_proc.o \
./drivers/scsi/aic7xxx/aiclib.o 

C_DEPS += \
./drivers/scsi/aic7xxx/aic7770.d \
./drivers/scsi/aic7xxx/aic7770_osm.d \
./drivers/scsi/aic7xxx/aic79xx_core.d \
./drivers/scsi/aic7xxx/aic79xx_osm.d \
./drivers/scsi/aic7xxx/aic79xx_osm_pci.d \
./drivers/scsi/aic7xxx/aic79xx_pci.d \
./drivers/scsi/aic7xxx/aic79xx_proc.d \
./drivers/scsi/aic7xxx/aic7xxx_93cx6.d \
./drivers/scsi/aic7xxx/aic7xxx_core.d \
./drivers/scsi/aic7xxx/aic7xxx_osm.d \
./drivers/scsi/aic7xxx/aic7xxx_osm_pci.d \
./drivers/scsi/aic7xxx/aic7xxx_pci.d \
./drivers/scsi/aic7xxx/aic7xxx_proc.d \
./drivers/scsi/aic7xxx/aiclib.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/scsi/aic7xxx/%.o: ../drivers/scsi/aic7xxx/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


