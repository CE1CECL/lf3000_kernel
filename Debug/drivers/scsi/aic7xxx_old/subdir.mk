################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/scsi/aic7xxx_old/aic7xxx_proc.c \
../drivers/scsi/aic7xxx_old/aic7xxx_seq.c 

OBJS += \
./drivers/scsi/aic7xxx_old/aic7xxx_proc.o \
./drivers/scsi/aic7xxx_old/aic7xxx_seq.o 

C_DEPS += \
./drivers/scsi/aic7xxx_old/aic7xxx_proc.d \
./drivers/scsi/aic7xxx_old/aic7xxx_seq.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/scsi/aic7xxx_old/%.o: ../drivers/scsi/aic7xxx_old/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


