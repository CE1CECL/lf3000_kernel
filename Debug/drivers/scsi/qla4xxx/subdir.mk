################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/scsi/qla4xxx/ql4_attr.c \
../drivers/scsi/qla4xxx/ql4_bsg.c \
../drivers/scsi/qla4xxx/ql4_dbg.c \
../drivers/scsi/qla4xxx/ql4_init.c \
../drivers/scsi/qla4xxx/ql4_iocb.c \
../drivers/scsi/qla4xxx/ql4_isr.c \
../drivers/scsi/qla4xxx/ql4_mbx.c \
../drivers/scsi/qla4xxx/ql4_nvram.c \
../drivers/scsi/qla4xxx/ql4_nx.c \
../drivers/scsi/qla4xxx/ql4_os.c 

OBJS += \
./drivers/scsi/qla4xxx/ql4_attr.o \
./drivers/scsi/qla4xxx/ql4_bsg.o \
./drivers/scsi/qla4xxx/ql4_dbg.o \
./drivers/scsi/qla4xxx/ql4_init.o \
./drivers/scsi/qla4xxx/ql4_iocb.o \
./drivers/scsi/qla4xxx/ql4_isr.o \
./drivers/scsi/qla4xxx/ql4_mbx.o \
./drivers/scsi/qla4xxx/ql4_nvram.o \
./drivers/scsi/qla4xxx/ql4_nx.o \
./drivers/scsi/qla4xxx/ql4_os.o 

C_DEPS += \
./drivers/scsi/qla4xxx/ql4_attr.d \
./drivers/scsi/qla4xxx/ql4_bsg.d \
./drivers/scsi/qla4xxx/ql4_dbg.d \
./drivers/scsi/qla4xxx/ql4_init.d \
./drivers/scsi/qla4xxx/ql4_iocb.d \
./drivers/scsi/qla4xxx/ql4_isr.d \
./drivers/scsi/qla4xxx/ql4_mbx.d \
./drivers/scsi/qla4xxx/ql4_nvram.d \
./drivers/scsi/qla4xxx/ql4_nx.d \
./drivers/scsi/qla4xxx/ql4_os.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/scsi/qla4xxx/%.o: ../drivers/scsi/qla4xxx/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


