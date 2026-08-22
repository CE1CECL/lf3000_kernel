################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/scsi/mpt2sas/mpt2sas_base.c \
../drivers/scsi/mpt2sas/mpt2sas_config.c \
../drivers/scsi/mpt2sas/mpt2sas_ctl.c \
../drivers/scsi/mpt2sas/mpt2sas_scsih.c \
../drivers/scsi/mpt2sas/mpt2sas_transport.c 

OBJS += \
./drivers/scsi/mpt2sas/mpt2sas_base.o \
./drivers/scsi/mpt2sas/mpt2sas_config.o \
./drivers/scsi/mpt2sas/mpt2sas_ctl.o \
./drivers/scsi/mpt2sas/mpt2sas_scsih.o \
./drivers/scsi/mpt2sas/mpt2sas_transport.o 

C_DEPS += \
./drivers/scsi/mpt2sas/mpt2sas_base.d \
./drivers/scsi/mpt2sas/mpt2sas_config.d \
./drivers/scsi/mpt2sas/mpt2sas_ctl.d \
./drivers/scsi/mpt2sas/mpt2sas_scsih.d \
./drivers/scsi/mpt2sas/mpt2sas_transport.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/scsi/mpt2sas/%.o: ../drivers/scsi/mpt2sas/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


