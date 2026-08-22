################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/scsi/megaraid/megaraid_mbox.c \
../drivers/scsi/megaraid/megaraid_mm.c \
../drivers/scsi/megaraid/megaraid_sas_base.c \
../drivers/scsi/megaraid/megaraid_sas_fp.c \
../drivers/scsi/megaraid/megaraid_sas_fusion.c 

OBJS += \
./drivers/scsi/megaraid/megaraid_mbox.o \
./drivers/scsi/megaraid/megaraid_mm.o \
./drivers/scsi/megaraid/megaraid_sas_base.o \
./drivers/scsi/megaraid/megaraid_sas_fp.o \
./drivers/scsi/megaraid/megaraid_sas_fusion.o 

C_DEPS += \
./drivers/scsi/megaraid/megaraid_mbox.d \
./drivers/scsi/megaraid/megaraid_mm.d \
./drivers/scsi/megaraid/megaraid_sas_base.d \
./drivers/scsi/megaraid/megaraid_sas_fp.d \
./drivers/scsi/megaraid/megaraid_sas_fusion.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/scsi/megaraid/%.o: ../drivers/scsi/megaraid/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


