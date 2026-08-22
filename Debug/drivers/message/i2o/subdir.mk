################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/message/i2o/bus-osm.c \
../drivers/message/i2o/config-osm.c \
../drivers/message/i2o/debug.c \
../drivers/message/i2o/device.c \
../drivers/message/i2o/driver.c \
../drivers/message/i2o/exec-osm.c \
../drivers/message/i2o/i2o_block.c \
../drivers/message/i2o/i2o_config.c \
../drivers/message/i2o/i2o_proc.c \
../drivers/message/i2o/i2o_scsi.c \
../drivers/message/i2o/iop.c \
../drivers/message/i2o/memory.c \
../drivers/message/i2o/pci.c 

OBJS += \
./drivers/message/i2o/bus-osm.o \
./drivers/message/i2o/config-osm.o \
./drivers/message/i2o/debug.o \
./drivers/message/i2o/device.o \
./drivers/message/i2o/driver.o \
./drivers/message/i2o/exec-osm.o \
./drivers/message/i2o/i2o_block.o \
./drivers/message/i2o/i2o_config.o \
./drivers/message/i2o/i2o_proc.o \
./drivers/message/i2o/i2o_scsi.o \
./drivers/message/i2o/iop.o \
./drivers/message/i2o/memory.o \
./drivers/message/i2o/pci.o 

C_DEPS += \
./drivers/message/i2o/bus-osm.d \
./drivers/message/i2o/config-osm.d \
./drivers/message/i2o/debug.d \
./drivers/message/i2o/device.d \
./drivers/message/i2o/driver.d \
./drivers/message/i2o/exec-osm.d \
./drivers/message/i2o/i2o_block.d \
./drivers/message/i2o/i2o_config.d \
./drivers/message/i2o/i2o_proc.d \
./drivers/message/i2o/i2o_scsi.d \
./drivers/message/i2o/iop.d \
./drivers/message/i2o/memory.d \
./drivers/message/i2o/pci.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/message/i2o/%.o: ../drivers/message/i2o/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


