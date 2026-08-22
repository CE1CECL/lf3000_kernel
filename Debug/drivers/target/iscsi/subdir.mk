################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/target/iscsi/iscsi_target.c \
../drivers/target/iscsi/iscsi_target_auth.c \
../drivers/target/iscsi/iscsi_target_configfs.c \
../drivers/target/iscsi/iscsi_target_datain_values.c \
../drivers/target/iscsi/iscsi_target_device.c \
../drivers/target/iscsi/iscsi_target_erl0.c \
../drivers/target/iscsi/iscsi_target_erl1.c \
../drivers/target/iscsi/iscsi_target_erl2.c \
../drivers/target/iscsi/iscsi_target_login.c \
../drivers/target/iscsi/iscsi_target_nego.c \
../drivers/target/iscsi/iscsi_target_nodeattrib.c \
../drivers/target/iscsi/iscsi_target_parameters.c \
../drivers/target/iscsi/iscsi_target_seq_pdu_list.c \
../drivers/target/iscsi/iscsi_target_stat.c \
../drivers/target/iscsi/iscsi_target_tmr.c \
../drivers/target/iscsi/iscsi_target_tpg.c \
../drivers/target/iscsi/iscsi_target_tq.c \
../drivers/target/iscsi/iscsi_target_util.c 

OBJS += \
./drivers/target/iscsi/iscsi_target.o \
./drivers/target/iscsi/iscsi_target_auth.o \
./drivers/target/iscsi/iscsi_target_configfs.o \
./drivers/target/iscsi/iscsi_target_datain_values.o \
./drivers/target/iscsi/iscsi_target_device.o \
./drivers/target/iscsi/iscsi_target_erl0.o \
./drivers/target/iscsi/iscsi_target_erl1.o \
./drivers/target/iscsi/iscsi_target_erl2.o \
./drivers/target/iscsi/iscsi_target_login.o \
./drivers/target/iscsi/iscsi_target_nego.o \
./drivers/target/iscsi/iscsi_target_nodeattrib.o \
./drivers/target/iscsi/iscsi_target_parameters.o \
./drivers/target/iscsi/iscsi_target_seq_pdu_list.o \
./drivers/target/iscsi/iscsi_target_stat.o \
./drivers/target/iscsi/iscsi_target_tmr.o \
./drivers/target/iscsi/iscsi_target_tpg.o \
./drivers/target/iscsi/iscsi_target_tq.o \
./drivers/target/iscsi/iscsi_target_util.o 

C_DEPS += \
./drivers/target/iscsi/iscsi_target.d \
./drivers/target/iscsi/iscsi_target_auth.d \
./drivers/target/iscsi/iscsi_target_configfs.d \
./drivers/target/iscsi/iscsi_target_datain_values.d \
./drivers/target/iscsi/iscsi_target_device.d \
./drivers/target/iscsi/iscsi_target_erl0.d \
./drivers/target/iscsi/iscsi_target_erl1.d \
./drivers/target/iscsi/iscsi_target_erl2.d \
./drivers/target/iscsi/iscsi_target_login.d \
./drivers/target/iscsi/iscsi_target_nego.d \
./drivers/target/iscsi/iscsi_target_nodeattrib.d \
./drivers/target/iscsi/iscsi_target_parameters.d \
./drivers/target/iscsi/iscsi_target_seq_pdu_list.d \
./drivers/target/iscsi/iscsi_target_stat.d \
./drivers/target/iscsi/iscsi_target_tmr.d \
./drivers/target/iscsi/iscsi_target_tpg.d \
./drivers/target/iscsi/iscsi_target_tq.d \
./drivers/target/iscsi/iscsi_target_util.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/target/iscsi/%.o: ../drivers/target/iscsi/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


