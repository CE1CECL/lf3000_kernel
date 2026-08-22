################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/scsi/libfc/fc_disc.c \
../drivers/scsi/libfc/fc_elsct.c \
../drivers/scsi/libfc/fc_exch.c \
../drivers/scsi/libfc/fc_fcp.c \
../drivers/scsi/libfc/fc_frame.c \
../drivers/scsi/libfc/fc_libfc.c \
../drivers/scsi/libfc/fc_lport.c \
../drivers/scsi/libfc/fc_npiv.c \
../drivers/scsi/libfc/fc_rport.c 

OBJS += \
./drivers/scsi/libfc/fc_disc.o \
./drivers/scsi/libfc/fc_elsct.o \
./drivers/scsi/libfc/fc_exch.o \
./drivers/scsi/libfc/fc_fcp.o \
./drivers/scsi/libfc/fc_frame.o \
./drivers/scsi/libfc/fc_libfc.o \
./drivers/scsi/libfc/fc_lport.o \
./drivers/scsi/libfc/fc_npiv.o \
./drivers/scsi/libfc/fc_rport.o 

C_DEPS += \
./drivers/scsi/libfc/fc_disc.d \
./drivers/scsi/libfc/fc_elsct.d \
./drivers/scsi/libfc/fc_exch.d \
./drivers/scsi/libfc/fc_fcp.d \
./drivers/scsi/libfc/fc_frame.d \
./drivers/scsi/libfc/fc_libfc.d \
./drivers/scsi/libfc/fc_lport.d \
./drivers/scsi/libfc/fc_npiv.d \
./drivers/scsi/libfc/fc_rport.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/scsi/libfc/%.o: ../drivers/scsi/libfc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


