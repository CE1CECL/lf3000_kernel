################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/s390/block/dasd.c \
../drivers/s390/block/dasd_3990_erp.c \
../drivers/s390/block/dasd_alias.c \
../drivers/s390/block/dasd_devmap.c \
../drivers/s390/block/dasd_diag.c \
../drivers/s390/block/dasd_eckd.c \
../drivers/s390/block/dasd_eer.c \
../drivers/s390/block/dasd_erp.c \
../drivers/s390/block/dasd_fba.c \
../drivers/s390/block/dasd_genhd.c \
../drivers/s390/block/dasd_ioctl.c \
../drivers/s390/block/dasd_proc.c \
../drivers/s390/block/dcssblk.c \
../drivers/s390/block/xpram.c 

OBJS += \
./drivers/s390/block/dasd.o \
./drivers/s390/block/dasd_3990_erp.o \
./drivers/s390/block/dasd_alias.o \
./drivers/s390/block/dasd_devmap.o \
./drivers/s390/block/dasd_diag.o \
./drivers/s390/block/dasd_eckd.o \
./drivers/s390/block/dasd_eer.o \
./drivers/s390/block/dasd_erp.o \
./drivers/s390/block/dasd_fba.o \
./drivers/s390/block/dasd_genhd.o \
./drivers/s390/block/dasd_ioctl.o \
./drivers/s390/block/dasd_proc.o \
./drivers/s390/block/dcssblk.o \
./drivers/s390/block/xpram.o 

C_DEPS += \
./drivers/s390/block/dasd.d \
./drivers/s390/block/dasd_3990_erp.d \
./drivers/s390/block/dasd_alias.d \
./drivers/s390/block/dasd_devmap.d \
./drivers/s390/block/dasd_diag.d \
./drivers/s390/block/dasd_eckd.d \
./drivers/s390/block/dasd_eer.d \
./drivers/s390/block/dasd_erp.d \
./drivers/s390/block/dasd_fba.d \
./drivers/s390/block/dasd_genhd.d \
./drivers/s390/block/dasd_ioctl.d \
./drivers/s390/block/dasd_proc.d \
./drivers/s390/block/dcssblk.d \
./drivers/s390/block/xpram.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/s390/block/%.o: ../drivers/s390/block/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


