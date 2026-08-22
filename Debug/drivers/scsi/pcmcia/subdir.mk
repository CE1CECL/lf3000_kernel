################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/scsi/pcmcia/aha152x_core.c \
../drivers/scsi/pcmcia/aha152x_stub.c \
../drivers/scsi/pcmcia/fdomain_core.c \
../drivers/scsi/pcmcia/fdomain_stub.c \
../drivers/scsi/pcmcia/nsp_cs.c \
../drivers/scsi/pcmcia/nsp_debug.c \
../drivers/scsi/pcmcia/nsp_message.c \
../drivers/scsi/pcmcia/qlogic_stub.c \
../drivers/scsi/pcmcia/sym53c500_cs.c 

OBJS += \
./drivers/scsi/pcmcia/aha152x_core.o \
./drivers/scsi/pcmcia/aha152x_stub.o \
./drivers/scsi/pcmcia/fdomain_core.o \
./drivers/scsi/pcmcia/fdomain_stub.o \
./drivers/scsi/pcmcia/nsp_cs.o \
./drivers/scsi/pcmcia/nsp_debug.o \
./drivers/scsi/pcmcia/nsp_message.o \
./drivers/scsi/pcmcia/qlogic_stub.o \
./drivers/scsi/pcmcia/sym53c500_cs.o 

C_DEPS += \
./drivers/scsi/pcmcia/aha152x_core.d \
./drivers/scsi/pcmcia/aha152x_stub.d \
./drivers/scsi/pcmcia/fdomain_core.d \
./drivers/scsi/pcmcia/fdomain_stub.d \
./drivers/scsi/pcmcia/nsp_cs.d \
./drivers/scsi/pcmcia/nsp_debug.d \
./drivers/scsi/pcmcia/nsp_message.d \
./drivers/scsi/pcmcia/qlogic_stub.d \
./drivers/scsi/pcmcia/sym53c500_cs.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/scsi/pcmcia/%.o: ../drivers/scsi/pcmcia/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


