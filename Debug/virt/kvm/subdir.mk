################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../virt/kvm/assigned-dev.c \
../virt/kvm/async_pf.c \
../virt/kvm/coalesced_mmio.c \
../virt/kvm/eventfd.c \
../virt/kvm/ioapic.c \
../virt/kvm/iommu.c \
../virt/kvm/irq_comm.c \
../virt/kvm/kvm_main.c 

OBJS += \
./virt/kvm/assigned-dev.o \
./virt/kvm/async_pf.o \
./virt/kvm/coalesced_mmio.o \
./virt/kvm/eventfd.o \
./virt/kvm/ioapic.o \
./virt/kvm/iommu.o \
./virt/kvm/irq_comm.o \
./virt/kvm/kvm_main.o 

C_DEPS += \
./virt/kvm/assigned-dev.d \
./virt/kvm/async_pf.d \
./virt/kvm/coalesced_mmio.d \
./virt/kvm/eventfd.d \
./virt/kvm/ioapic.d \
./virt/kvm/iommu.d \
./virt/kvm/irq_comm.d \
./virt/kvm/kvm_main.d 


# Each subdirectory must supply rules for building sources it contributes
virt/kvm/%.o: ../virt/kvm/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


