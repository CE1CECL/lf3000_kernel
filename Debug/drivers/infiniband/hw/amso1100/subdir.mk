################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/infiniband/hw/amso1100/c2.c \
../drivers/infiniband/hw/amso1100/c2_ae.c \
../drivers/infiniband/hw/amso1100/c2_alloc.c \
../drivers/infiniband/hw/amso1100/c2_cm.c \
../drivers/infiniband/hw/amso1100/c2_cq.c \
../drivers/infiniband/hw/amso1100/c2_intr.c \
../drivers/infiniband/hw/amso1100/c2_mm.c \
../drivers/infiniband/hw/amso1100/c2_mq.c \
../drivers/infiniband/hw/amso1100/c2_pd.c \
../drivers/infiniband/hw/amso1100/c2_provider.c \
../drivers/infiniband/hw/amso1100/c2_qp.c \
../drivers/infiniband/hw/amso1100/c2_rnic.c \
../drivers/infiniband/hw/amso1100/c2_vq.c 

OBJS += \
./drivers/infiniband/hw/amso1100/c2.o \
./drivers/infiniband/hw/amso1100/c2_ae.o \
./drivers/infiniband/hw/amso1100/c2_alloc.o \
./drivers/infiniband/hw/amso1100/c2_cm.o \
./drivers/infiniband/hw/amso1100/c2_cq.o \
./drivers/infiniband/hw/amso1100/c2_intr.o \
./drivers/infiniband/hw/amso1100/c2_mm.o \
./drivers/infiniband/hw/amso1100/c2_mq.o \
./drivers/infiniband/hw/amso1100/c2_pd.o \
./drivers/infiniband/hw/amso1100/c2_provider.o \
./drivers/infiniband/hw/amso1100/c2_qp.o \
./drivers/infiniband/hw/amso1100/c2_rnic.o \
./drivers/infiniband/hw/amso1100/c2_vq.o 

C_DEPS += \
./drivers/infiniband/hw/amso1100/c2.d \
./drivers/infiniband/hw/amso1100/c2_ae.d \
./drivers/infiniband/hw/amso1100/c2_alloc.d \
./drivers/infiniband/hw/amso1100/c2_cm.d \
./drivers/infiniband/hw/amso1100/c2_cq.d \
./drivers/infiniband/hw/amso1100/c2_intr.d \
./drivers/infiniband/hw/amso1100/c2_mm.d \
./drivers/infiniband/hw/amso1100/c2_mq.d \
./drivers/infiniband/hw/amso1100/c2_pd.d \
./drivers/infiniband/hw/amso1100/c2_provider.d \
./drivers/infiniband/hw/amso1100/c2_qp.d \
./drivers/infiniband/hw/amso1100/c2_rnic.d \
./drivers/infiniband/hw/amso1100/c2_vq.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/infiniband/hw/amso1100/%.o: ../drivers/infiniband/hw/amso1100/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


