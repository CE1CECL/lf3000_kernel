################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/scsi/bnx2fc/bnx2fc_els.c \
../drivers/scsi/bnx2fc/bnx2fc_fcoe.c \
../drivers/scsi/bnx2fc/bnx2fc_hwi.c \
../drivers/scsi/bnx2fc/bnx2fc_io.c \
../drivers/scsi/bnx2fc/bnx2fc_tgt.c 

OBJS += \
./drivers/scsi/bnx2fc/bnx2fc_els.o \
./drivers/scsi/bnx2fc/bnx2fc_fcoe.o \
./drivers/scsi/bnx2fc/bnx2fc_hwi.o \
./drivers/scsi/bnx2fc/bnx2fc_io.o \
./drivers/scsi/bnx2fc/bnx2fc_tgt.o 

C_DEPS += \
./drivers/scsi/bnx2fc/bnx2fc_els.d \
./drivers/scsi/bnx2fc/bnx2fc_fcoe.d \
./drivers/scsi/bnx2fc/bnx2fc_hwi.d \
./drivers/scsi/bnx2fc/bnx2fc_io.d \
./drivers/scsi/bnx2fc/bnx2fc_tgt.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/scsi/bnx2fc/%.o: ../drivers/scsi/bnx2fc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


