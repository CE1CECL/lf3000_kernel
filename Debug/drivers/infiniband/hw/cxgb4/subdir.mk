################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/infiniband/hw/cxgb4/cm.c \
../drivers/infiniband/hw/cxgb4/cq.c \
../drivers/infiniband/hw/cxgb4/device.c \
../drivers/infiniband/hw/cxgb4/ev.c \
../drivers/infiniband/hw/cxgb4/mem.c \
../drivers/infiniband/hw/cxgb4/provider.c \
../drivers/infiniband/hw/cxgb4/qp.c \
../drivers/infiniband/hw/cxgb4/resource.c 

OBJS += \
./drivers/infiniband/hw/cxgb4/cm.o \
./drivers/infiniband/hw/cxgb4/cq.o \
./drivers/infiniband/hw/cxgb4/device.o \
./drivers/infiniband/hw/cxgb4/ev.o \
./drivers/infiniband/hw/cxgb4/mem.o \
./drivers/infiniband/hw/cxgb4/provider.o \
./drivers/infiniband/hw/cxgb4/qp.o \
./drivers/infiniband/hw/cxgb4/resource.o 

C_DEPS += \
./drivers/infiniband/hw/cxgb4/cm.d \
./drivers/infiniband/hw/cxgb4/cq.d \
./drivers/infiniband/hw/cxgb4/device.d \
./drivers/infiniband/hw/cxgb4/ev.d \
./drivers/infiniband/hw/cxgb4/mem.d \
./drivers/infiniband/hw/cxgb4/provider.d \
./drivers/infiniband/hw/cxgb4/qp.d \
./drivers/infiniband/hw/cxgb4/resource.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/infiniband/hw/cxgb4/%.o: ../drivers/infiniband/hw/cxgb4/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


