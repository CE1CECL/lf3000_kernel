################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/xen/balloon.c \
../drivers/xen/biomerge.c \
../drivers/xen/cpu_hotplug.c \
../drivers/xen/events.c \
../drivers/xen/evtchn.c \
../drivers/xen/features.c \
../drivers/xen/gntalloc.c \
../drivers/xen/gntdev.c \
../drivers/xen/grant-table.c \
../drivers/xen/manage.c \
../drivers/xen/pci.c \
../drivers/xen/platform-pci.c \
../drivers/xen/privcmd.c \
../drivers/xen/swiotlb-xen.c \
../drivers/xen/sys-hypervisor.c \
../drivers/xen/tmem.c \
../drivers/xen/xen-acpi-processor.c \
../drivers/xen/xen-balloon.c \
../drivers/xen/xen-selfballoon.c \
../drivers/xen/xencomm.c 

OBJS += \
./drivers/xen/balloon.o \
./drivers/xen/biomerge.o \
./drivers/xen/cpu_hotplug.o \
./drivers/xen/events.o \
./drivers/xen/evtchn.o \
./drivers/xen/features.o \
./drivers/xen/gntalloc.o \
./drivers/xen/gntdev.o \
./drivers/xen/grant-table.o \
./drivers/xen/manage.o \
./drivers/xen/pci.o \
./drivers/xen/platform-pci.o \
./drivers/xen/privcmd.o \
./drivers/xen/swiotlb-xen.o \
./drivers/xen/sys-hypervisor.o \
./drivers/xen/tmem.o \
./drivers/xen/xen-acpi-processor.o \
./drivers/xen/xen-balloon.o \
./drivers/xen/xen-selfballoon.o \
./drivers/xen/xencomm.o 

C_DEPS += \
./drivers/xen/balloon.d \
./drivers/xen/biomerge.d \
./drivers/xen/cpu_hotplug.d \
./drivers/xen/events.d \
./drivers/xen/evtchn.d \
./drivers/xen/features.d \
./drivers/xen/gntalloc.d \
./drivers/xen/gntdev.d \
./drivers/xen/grant-table.d \
./drivers/xen/manage.d \
./drivers/xen/pci.d \
./drivers/xen/platform-pci.d \
./drivers/xen/privcmd.d \
./drivers/xen/swiotlb-xen.d \
./drivers/xen/sys-hypervisor.d \
./drivers/xen/tmem.d \
./drivers/xen/xen-acpi-processor.d \
./drivers/xen/xen-balloon.d \
./drivers/xen/xen-selfballoon.d \
./drivers/xen/xencomm.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/xen/%.o: ../drivers/xen/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


