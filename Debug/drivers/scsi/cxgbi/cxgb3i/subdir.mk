################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/scsi/cxgbi/cxgb3i/cxgb3i.c 

OBJS += \
./drivers/scsi/cxgbi/cxgb3i/cxgb3i.o 

C_DEPS += \
./drivers/scsi/cxgbi/cxgb3i/cxgb3i.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/scsi/cxgbi/cxgb3i/%.o: ../drivers/scsi/cxgbi/cxgb3i/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


