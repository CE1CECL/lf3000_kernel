################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/cisco/enic/enic_dev.c \
../drivers/net/ethernet/cisco/enic/enic_main.c \
../drivers/net/ethernet/cisco/enic/enic_pp.c \
../drivers/net/ethernet/cisco/enic/enic_res.c \
../drivers/net/ethernet/cisco/enic/vnic_cq.c \
../drivers/net/ethernet/cisco/enic/vnic_dev.c \
../drivers/net/ethernet/cisco/enic/vnic_intr.c \
../drivers/net/ethernet/cisco/enic/vnic_rq.c \
../drivers/net/ethernet/cisco/enic/vnic_vic.c \
../drivers/net/ethernet/cisco/enic/vnic_wq.c 

OBJS += \
./drivers/net/ethernet/cisco/enic/enic_dev.o \
./drivers/net/ethernet/cisco/enic/enic_main.o \
./drivers/net/ethernet/cisco/enic/enic_pp.o \
./drivers/net/ethernet/cisco/enic/enic_res.o \
./drivers/net/ethernet/cisco/enic/vnic_cq.o \
./drivers/net/ethernet/cisco/enic/vnic_dev.o \
./drivers/net/ethernet/cisco/enic/vnic_intr.o \
./drivers/net/ethernet/cisco/enic/vnic_rq.o \
./drivers/net/ethernet/cisco/enic/vnic_vic.o \
./drivers/net/ethernet/cisco/enic/vnic_wq.o 

C_DEPS += \
./drivers/net/ethernet/cisco/enic/enic_dev.d \
./drivers/net/ethernet/cisco/enic/enic_main.d \
./drivers/net/ethernet/cisco/enic/enic_pp.d \
./drivers/net/ethernet/cisco/enic/enic_res.d \
./drivers/net/ethernet/cisco/enic/vnic_cq.d \
./drivers/net/ethernet/cisco/enic/vnic_dev.d \
./drivers/net/ethernet/cisco/enic/vnic_intr.d \
./drivers/net/ethernet/cisco/enic/vnic_rq.d \
./drivers/net/ethernet/cisco/enic/vnic_vic.d \
./drivers/net/ethernet/cisco/enic/vnic_wq.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/cisco/enic/%.o: ../drivers/net/ethernet/cisco/enic/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


