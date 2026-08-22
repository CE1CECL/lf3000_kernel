################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/scsi/isci/host.c \
../drivers/scsi/isci/init.c \
../drivers/scsi/isci/phy.c \
../drivers/scsi/isci/port.c \
../drivers/scsi/isci/port_config.c \
../drivers/scsi/isci/probe_roms.c \
../drivers/scsi/isci/remote_device.c \
../drivers/scsi/isci/remote_node_context.c \
../drivers/scsi/isci/remote_node_table.c \
../drivers/scsi/isci/request.c \
../drivers/scsi/isci/task.c \
../drivers/scsi/isci/unsolicited_frame_control.c 

OBJS += \
./drivers/scsi/isci/host.o \
./drivers/scsi/isci/init.o \
./drivers/scsi/isci/phy.o \
./drivers/scsi/isci/port.o \
./drivers/scsi/isci/port_config.o \
./drivers/scsi/isci/probe_roms.o \
./drivers/scsi/isci/remote_device.o \
./drivers/scsi/isci/remote_node_context.o \
./drivers/scsi/isci/remote_node_table.o \
./drivers/scsi/isci/request.o \
./drivers/scsi/isci/task.o \
./drivers/scsi/isci/unsolicited_frame_control.o 

C_DEPS += \
./drivers/scsi/isci/host.d \
./drivers/scsi/isci/init.d \
./drivers/scsi/isci/phy.d \
./drivers/scsi/isci/port.d \
./drivers/scsi/isci/port_config.d \
./drivers/scsi/isci/probe_roms.d \
./drivers/scsi/isci/remote_device.d \
./drivers/scsi/isci/remote_node_context.d \
./drivers/scsi/isci/remote_node_table.d \
./drivers/scsi/isci/request.d \
./drivers/scsi/isci/task.d \
./drivers/scsi/isci/unsolicited_frame_control.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/scsi/isci/%.o: ../drivers/scsi/isci/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


