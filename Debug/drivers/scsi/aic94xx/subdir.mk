################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/scsi/aic94xx/aic94xx_dev.c \
../drivers/scsi/aic94xx/aic94xx_dump.c \
../drivers/scsi/aic94xx/aic94xx_hwi.c \
../drivers/scsi/aic94xx/aic94xx_init.c \
../drivers/scsi/aic94xx/aic94xx_reg.c \
../drivers/scsi/aic94xx/aic94xx_scb.c \
../drivers/scsi/aic94xx/aic94xx_sds.c \
../drivers/scsi/aic94xx/aic94xx_seq.c \
../drivers/scsi/aic94xx/aic94xx_task.c \
../drivers/scsi/aic94xx/aic94xx_tmf.c 

OBJS += \
./drivers/scsi/aic94xx/aic94xx_dev.o \
./drivers/scsi/aic94xx/aic94xx_dump.o \
./drivers/scsi/aic94xx/aic94xx_hwi.o \
./drivers/scsi/aic94xx/aic94xx_init.o \
./drivers/scsi/aic94xx/aic94xx_reg.o \
./drivers/scsi/aic94xx/aic94xx_scb.o \
./drivers/scsi/aic94xx/aic94xx_sds.o \
./drivers/scsi/aic94xx/aic94xx_seq.o \
./drivers/scsi/aic94xx/aic94xx_task.o \
./drivers/scsi/aic94xx/aic94xx_tmf.o 

C_DEPS += \
./drivers/scsi/aic94xx/aic94xx_dev.d \
./drivers/scsi/aic94xx/aic94xx_dump.d \
./drivers/scsi/aic94xx/aic94xx_hwi.d \
./drivers/scsi/aic94xx/aic94xx_init.d \
./drivers/scsi/aic94xx/aic94xx_reg.d \
./drivers/scsi/aic94xx/aic94xx_scb.d \
./drivers/scsi/aic94xx/aic94xx_sds.d \
./drivers/scsi/aic94xx/aic94xx_seq.d \
./drivers/scsi/aic94xx/aic94xx_task.d \
./drivers/scsi/aic94xx/aic94xx_tmf.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/scsi/aic94xx/%.o: ../drivers/scsi/aic94xx/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


