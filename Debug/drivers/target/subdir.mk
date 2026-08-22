################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/target/target_core_alua.c \
../drivers/target/target_core_cdb.c \
../drivers/target/target_core_configfs.c \
../drivers/target/target_core_device.c \
../drivers/target/target_core_fabric_configfs.c \
../drivers/target/target_core_fabric_lib.c \
../drivers/target/target_core_file.c \
../drivers/target/target_core_hba.c \
../drivers/target/target_core_iblock.c \
../drivers/target/target_core_pr.c \
../drivers/target/target_core_pscsi.c \
../drivers/target/target_core_rd.c \
../drivers/target/target_core_stat.c \
../drivers/target/target_core_tmr.c \
../drivers/target/target_core_tpg.c \
../drivers/target/target_core_transport.c \
../drivers/target/target_core_ua.c 

OBJS += \
./drivers/target/target_core_alua.o \
./drivers/target/target_core_cdb.o \
./drivers/target/target_core_configfs.o \
./drivers/target/target_core_device.o \
./drivers/target/target_core_fabric_configfs.o \
./drivers/target/target_core_fabric_lib.o \
./drivers/target/target_core_file.o \
./drivers/target/target_core_hba.o \
./drivers/target/target_core_iblock.o \
./drivers/target/target_core_pr.o \
./drivers/target/target_core_pscsi.o \
./drivers/target/target_core_rd.o \
./drivers/target/target_core_stat.o \
./drivers/target/target_core_tmr.o \
./drivers/target/target_core_tpg.o \
./drivers/target/target_core_transport.o \
./drivers/target/target_core_ua.o 

C_DEPS += \
./drivers/target/target_core_alua.d \
./drivers/target/target_core_cdb.d \
./drivers/target/target_core_configfs.d \
./drivers/target/target_core_device.d \
./drivers/target/target_core_fabric_configfs.d \
./drivers/target/target_core_fabric_lib.d \
./drivers/target/target_core_file.d \
./drivers/target/target_core_hba.d \
./drivers/target/target_core_iblock.d \
./drivers/target/target_core_pr.d \
./drivers/target/target_core_pscsi.d \
./drivers/target/target_core_rd.d \
./drivers/target/target_core_stat.d \
./drivers/target/target_core_tmr.d \
./drivers/target/target_core_tpg.d \
./drivers/target/target_core_transport.d \
./drivers/target/target_core_ua.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/target/%.o: ../drivers/target/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


