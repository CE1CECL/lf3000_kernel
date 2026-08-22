################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/scsi/device_handler/scsi_dh.c \
../drivers/scsi/device_handler/scsi_dh_alua.c \
../drivers/scsi/device_handler/scsi_dh_emc.c \
../drivers/scsi/device_handler/scsi_dh_hp_sw.c \
../drivers/scsi/device_handler/scsi_dh_rdac.c 

OBJS += \
./drivers/scsi/device_handler/scsi_dh.o \
./drivers/scsi/device_handler/scsi_dh_alua.o \
./drivers/scsi/device_handler/scsi_dh_emc.o \
./drivers/scsi/device_handler/scsi_dh_hp_sw.o \
./drivers/scsi/device_handler/scsi_dh_rdac.o 

C_DEPS += \
./drivers/scsi/device_handler/scsi_dh.d \
./drivers/scsi/device_handler/scsi_dh_alua.d \
./drivers/scsi/device_handler/scsi_dh_emc.d \
./drivers/scsi/device_handler/scsi_dh_hp_sw.d \
./drivers/scsi/device_handler/scsi_dh_rdac.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/scsi/device_handler/%.o: ../drivers/scsi/device_handler/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


