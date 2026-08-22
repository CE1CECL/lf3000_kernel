################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/scsi/be2iscsi/be_cmds.c \
../drivers/scsi/be2iscsi/be_iscsi.c \
../drivers/scsi/be2iscsi/be_main.c \
../drivers/scsi/be2iscsi/be_mgmt.c 

OBJS += \
./drivers/scsi/be2iscsi/be_cmds.o \
./drivers/scsi/be2iscsi/be_iscsi.o \
./drivers/scsi/be2iscsi/be_main.o \
./drivers/scsi/be2iscsi/be_mgmt.o 

C_DEPS += \
./drivers/scsi/be2iscsi/be_cmds.d \
./drivers/scsi/be2iscsi/be_iscsi.d \
./drivers/scsi/be2iscsi/be_main.d \
./drivers/scsi/be2iscsi/be_mgmt.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/scsi/be2iscsi/%.o: ../drivers/scsi/be2iscsi/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


