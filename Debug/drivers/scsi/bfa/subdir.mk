################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/scsi/bfa/bfa_core.c \
../drivers/scsi/bfa/bfa_fcbuild.c \
../drivers/scsi/bfa/bfa_fcpim.c \
../drivers/scsi/bfa/bfa_fcs.c \
../drivers/scsi/bfa/bfa_fcs_fcpim.c \
../drivers/scsi/bfa/bfa_fcs_lport.c \
../drivers/scsi/bfa/bfa_fcs_rport.c \
../drivers/scsi/bfa/bfa_hw_cb.c \
../drivers/scsi/bfa/bfa_hw_ct.c \
../drivers/scsi/bfa/bfa_ioc.c \
../drivers/scsi/bfa/bfa_ioc_cb.c \
../drivers/scsi/bfa/bfa_ioc_ct.c \
../drivers/scsi/bfa/bfa_port.c \
../drivers/scsi/bfa/bfa_svc.c \
../drivers/scsi/bfa/bfad.c \
../drivers/scsi/bfa/bfad_attr.c \
../drivers/scsi/bfa/bfad_bsg.c \
../drivers/scsi/bfa/bfad_debugfs.c \
../drivers/scsi/bfa/bfad_im.c 

OBJS += \
./drivers/scsi/bfa/bfa_core.o \
./drivers/scsi/bfa/bfa_fcbuild.o \
./drivers/scsi/bfa/bfa_fcpim.o \
./drivers/scsi/bfa/bfa_fcs.o \
./drivers/scsi/bfa/bfa_fcs_fcpim.o \
./drivers/scsi/bfa/bfa_fcs_lport.o \
./drivers/scsi/bfa/bfa_fcs_rport.o \
./drivers/scsi/bfa/bfa_hw_cb.o \
./drivers/scsi/bfa/bfa_hw_ct.o \
./drivers/scsi/bfa/bfa_ioc.o \
./drivers/scsi/bfa/bfa_ioc_cb.o \
./drivers/scsi/bfa/bfa_ioc_ct.o \
./drivers/scsi/bfa/bfa_port.o \
./drivers/scsi/bfa/bfa_svc.o \
./drivers/scsi/bfa/bfad.o \
./drivers/scsi/bfa/bfad_attr.o \
./drivers/scsi/bfa/bfad_bsg.o \
./drivers/scsi/bfa/bfad_debugfs.o \
./drivers/scsi/bfa/bfad_im.o 

C_DEPS += \
./drivers/scsi/bfa/bfa_core.d \
./drivers/scsi/bfa/bfa_fcbuild.d \
./drivers/scsi/bfa/bfa_fcpim.d \
./drivers/scsi/bfa/bfa_fcs.d \
./drivers/scsi/bfa/bfa_fcs_fcpim.d \
./drivers/scsi/bfa/bfa_fcs_lport.d \
./drivers/scsi/bfa/bfa_fcs_rport.d \
./drivers/scsi/bfa/bfa_hw_cb.d \
./drivers/scsi/bfa/bfa_hw_ct.d \
./drivers/scsi/bfa/bfa_ioc.d \
./drivers/scsi/bfa/bfa_ioc_cb.d \
./drivers/scsi/bfa/bfa_ioc_ct.d \
./drivers/scsi/bfa/bfa_port.d \
./drivers/scsi/bfa/bfa_svc.d \
./drivers/scsi/bfa/bfad.d \
./drivers/scsi/bfa/bfad_attr.d \
./drivers/scsi/bfa/bfad_bsg.d \
./drivers/scsi/bfa/bfad_debugfs.d \
./drivers/scsi/bfa/bfad_im.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/scsi/bfa/%.o: ../drivers/scsi/bfa/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


