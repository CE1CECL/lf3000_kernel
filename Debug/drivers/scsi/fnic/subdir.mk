################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/scsi/fnic/fnic_attrs.c \
../drivers/scsi/fnic/fnic_fcs.c \
../drivers/scsi/fnic/fnic_isr.c \
../drivers/scsi/fnic/fnic_main.c \
../drivers/scsi/fnic/fnic_res.c \
../drivers/scsi/fnic/fnic_scsi.c \
../drivers/scsi/fnic/vnic_cq.c \
../drivers/scsi/fnic/vnic_dev.c \
../drivers/scsi/fnic/vnic_intr.c \
../drivers/scsi/fnic/vnic_rq.c \
../drivers/scsi/fnic/vnic_wq.c \
../drivers/scsi/fnic/vnic_wq_copy.c 

OBJS += \
./drivers/scsi/fnic/fnic_attrs.o \
./drivers/scsi/fnic/fnic_fcs.o \
./drivers/scsi/fnic/fnic_isr.o \
./drivers/scsi/fnic/fnic_main.o \
./drivers/scsi/fnic/fnic_res.o \
./drivers/scsi/fnic/fnic_scsi.o \
./drivers/scsi/fnic/vnic_cq.o \
./drivers/scsi/fnic/vnic_dev.o \
./drivers/scsi/fnic/vnic_intr.o \
./drivers/scsi/fnic/vnic_rq.o \
./drivers/scsi/fnic/vnic_wq.o \
./drivers/scsi/fnic/vnic_wq_copy.o 

C_DEPS += \
./drivers/scsi/fnic/fnic_attrs.d \
./drivers/scsi/fnic/fnic_fcs.d \
./drivers/scsi/fnic/fnic_isr.d \
./drivers/scsi/fnic/fnic_main.d \
./drivers/scsi/fnic/fnic_res.d \
./drivers/scsi/fnic/fnic_scsi.d \
./drivers/scsi/fnic/vnic_cq.d \
./drivers/scsi/fnic/vnic_dev.d \
./drivers/scsi/fnic/vnic_intr.d \
./drivers/scsi/fnic/vnic_rq.d \
./drivers/scsi/fnic/vnic_wq.d \
./drivers/scsi/fnic/vnic_wq_copy.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/scsi/fnic/%.o: ../drivers/scsi/fnic/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


