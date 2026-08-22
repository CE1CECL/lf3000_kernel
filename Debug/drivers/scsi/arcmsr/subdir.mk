################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/scsi/arcmsr/arcmsr_attr.c \
../drivers/scsi/arcmsr/arcmsr_hba.c 

OBJS += \
./drivers/scsi/arcmsr/arcmsr_attr.o \
./drivers/scsi/arcmsr/arcmsr_hba.o 

C_DEPS += \
./drivers/scsi/arcmsr/arcmsr_attr.d \
./drivers/scsi/arcmsr/arcmsr_hba.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/scsi/arcmsr/%.o: ../drivers/scsi/arcmsr/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


