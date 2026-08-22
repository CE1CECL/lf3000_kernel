################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/scsi/lpfc/lpfc_attr.c \
../drivers/scsi/lpfc/lpfc_bsg.c \
../drivers/scsi/lpfc/lpfc_ct.c \
../drivers/scsi/lpfc/lpfc_debugfs.c \
../drivers/scsi/lpfc/lpfc_els.c \
../drivers/scsi/lpfc/lpfc_hbadisc.c \
../drivers/scsi/lpfc/lpfc_init.c \
../drivers/scsi/lpfc/lpfc_mbox.c \
../drivers/scsi/lpfc/lpfc_mem.c \
../drivers/scsi/lpfc/lpfc_nportdisc.c \
../drivers/scsi/lpfc/lpfc_scsi.c \
../drivers/scsi/lpfc/lpfc_sli.c \
../drivers/scsi/lpfc/lpfc_vport.c 

OBJS += \
./drivers/scsi/lpfc/lpfc_attr.o \
./drivers/scsi/lpfc/lpfc_bsg.o \
./drivers/scsi/lpfc/lpfc_ct.o \
./drivers/scsi/lpfc/lpfc_debugfs.o \
./drivers/scsi/lpfc/lpfc_els.o \
./drivers/scsi/lpfc/lpfc_hbadisc.o \
./drivers/scsi/lpfc/lpfc_init.o \
./drivers/scsi/lpfc/lpfc_mbox.o \
./drivers/scsi/lpfc/lpfc_mem.o \
./drivers/scsi/lpfc/lpfc_nportdisc.o \
./drivers/scsi/lpfc/lpfc_scsi.o \
./drivers/scsi/lpfc/lpfc_sli.o \
./drivers/scsi/lpfc/lpfc_vport.o 

C_DEPS += \
./drivers/scsi/lpfc/lpfc_attr.d \
./drivers/scsi/lpfc/lpfc_bsg.d \
./drivers/scsi/lpfc/lpfc_ct.d \
./drivers/scsi/lpfc/lpfc_debugfs.d \
./drivers/scsi/lpfc/lpfc_els.d \
./drivers/scsi/lpfc/lpfc_hbadisc.d \
./drivers/scsi/lpfc/lpfc_init.d \
./drivers/scsi/lpfc/lpfc_mbox.d \
./drivers/scsi/lpfc/lpfc_mem.d \
./drivers/scsi/lpfc/lpfc_nportdisc.d \
./drivers/scsi/lpfc/lpfc_scsi.d \
./drivers/scsi/lpfc/lpfc_sli.d \
./drivers/scsi/lpfc/lpfc_vport.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/scsi/lpfc/%.o: ../drivers/scsi/lpfc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


