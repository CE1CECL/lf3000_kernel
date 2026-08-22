################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/scsi/fcoe/fcoe.c \
../drivers/scsi/fcoe/fcoe_ctlr.c \
../drivers/scsi/fcoe/fcoe_transport.c 

OBJS += \
./drivers/scsi/fcoe/fcoe.o \
./drivers/scsi/fcoe/fcoe_ctlr.o \
./drivers/scsi/fcoe/fcoe_transport.o 

C_DEPS += \
./drivers/scsi/fcoe/fcoe.d \
./drivers/scsi/fcoe/fcoe_ctlr.d \
./drivers/scsi/fcoe/fcoe_transport.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/scsi/fcoe/%.o: ../drivers/scsi/fcoe/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


