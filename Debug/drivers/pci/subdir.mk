################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/pci/access.c \
../drivers/pci/ats.c \
../drivers/pci/bus.c \
../drivers/pci/hotplug-pci.c \
../drivers/pci/hotplug.c \
../drivers/pci/htirq.c \
../drivers/pci/ioapic.c \
../drivers/pci/iov.c \
../drivers/pci/irq.c \
../drivers/pci/msi.c \
../drivers/pci/of.c \
../drivers/pci/pci-acpi.c \
../drivers/pci/pci-driver.c \
../drivers/pci/pci-label.c \
../drivers/pci/pci-stub.c \
../drivers/pci/pci-sysfs.c \
../drivers/pci/pci.c \
../drivers/pci/probe.c \
../drivers/pci/proc.c \
../drivers/pci/quirks.c \
../drivers/pci/remove.c \
../drivers/pci/rom.c \
../drivers/pci/search.c \
../drivers/pci/setup-bus.c \
../drivers/pci/setup-irq.c \
../drivers/pci/setup-res.c \
../drivers/pci/slot.c \
../drivers/pci/syscall.c \
../drivers/pci/vpd.c \
../drivers/pci/xen-pcifront.c 

OBJS += \
./drivers/pci/access.o \
./drivers/pci/ats.o \
./drivers/pci/bus.o \
./drivers/pci/hotplug-pci.o \
./drivers/pci/hotplug.o \
./drivers/pci/htirq.o \
./drivers/pci/ioapic.o \
./drivers/pci/iov.o \
./drivers/pci/irq.o \
./drivers/pci/msi.o \
./drivers/pci/of.o \
./drivers/pci/pci-acpi.o \
./drivers/pci/pci-driver.o \
./drivers/pci/pci-label.o \
./drivers/pci/pci-stub.o \
./drivers/pci/pci-sysfs.o \
./drivers/pci/pci.o \
./drivers/pci/probe.o \
./drivers/pci/proc.o \
./drivers/pci/quirks.o \
./drivers/pci/remove.o \
./drivers/pci/rom.o \
./drivers/pci/search.o \
./drivers/pci/setup-bus.o \
./drivers/pci/setup-irq.o \
./drivers/pci/setup-res.o \
./drivers/pci/slot.o \
./drivers/pci/syscall.o \
./drivers/pci/vpd.o \
./drivers/pci/xen-pcifront.o 

C_DEPS += \
./drivers/pci/access.d \
./drivers/pci/ats.d \
./drivers/pci/bus.d \
./drivers/pci/hotplug-pci.d \
./drivers/pci/hotplug.d \
./drivers/pci/htirq.d \
./drivers/pci/ioapic.d \
./drivers/pci/iov.d \
./drivers/pci/irq.d \
./drivers/pci/msi.d \
./drivers/pci/of.d \
./drivers/pci/pci-acpi.d \
./drivers/pci/pci-driver.d \
./drivers/pci/pci-label.d \
./drivers/pci/pci-stub.d \
./drivers/pci/pci-sysfs.d \
./drivers/pci/pci.d \
./drivers/pci/probe.d \
./drivers/pci/proc.d \
./drivers/pci/quirks.d \
./drivers/pci/remove.d \
./drivers/pci/rom.d \
./drivers/pci/search.d \
./drivers/pci/setup-bus.d \
./drivers/pci/setup-irq.d \
./drivers/pci/setup-res.d \
./drivers/pci/slot.d \
./drivers/pci/syscall.d \
./drivers/pci/vpd.d \
./drivers/pci/xen-pcifront.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/pci/%.o: ../drivers/pci/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


