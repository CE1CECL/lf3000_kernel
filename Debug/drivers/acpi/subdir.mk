################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/acpi/ac.c \
../drivers/acpi/acpi_ipmi.c \
../drivers/acpi/acpi_memhotplug.c \
../drivers/acpi/acpi_pad.c \
../drivers/acpi/battery.c \
../drivers/acpi/bgrt.c \
../drivers/acpi/blacklist.c \
../drivers/acpi/bus.c \
../drivers/acpi/button.c \
../drivers/acpi/cm_sbs.c \
../drivers/acpi/container.c \
../drivers/acpi/custom_method.c \
../drivers/acpi/debugfs.c \
../drivers/acpi/dock.c \
../drivers/acpi/ec.c \
../drivers/acpi/ec_sys.c \
../drivers/acpi/event.c \
../drivers/acpi/fan.c \
../drivers/acpi/glue.c \
../drivers/acpi/hed.c \
../drivers/acpi/numa.c \
../drivers/acpi/nvs.c \
../drivers/acpi/osl.c \
../drivers/acpi/pci_bind.c \
../drivers/acpi/pci_irq.c \
../drivers/acpi/pci_link.c \
../drivers/acpi/pci_root.c \
../drivers/acpi/pci_slot.c \
../drivers/acpi/power.c \
../drivers/acpi/proc.c \
../drivers/acpi/processor_core.c \
../drivers/acpi/processor_driver.c \
../drivers/acpi/processor_idle.c \
../drivers/acpi/processor_perflib.c \
../drivers/acpi/processor_thermal.c \
../drivers/acpi/processor_throttling.c \
../drivers/acpi/reboot.c \
../drivers/acpi/sbs.c \
../drivers/acpi/sbshc.c \
../drivers/acpi/scan.c \
../drivers/acpi/sleep.c \
../drivers/acpi/sysfs.c \
../drivers/acpi/tables.c \
../drivers/acpi/thermal.c \
../drivers/acpi/utils.c \
../drivers/acpi/video.c \
../drivers/acpi/video_detect.c \
../drivers/acpi/wakeup.c 

OBJS += \
./drivers/acpi/ac.o \
./drivers/acpi/acpi_ipmi.o \
./drivers/acpi/acpi_memhotplug.o \
./drivers/acpi/acpi_pad.o \
./drivers/acpi/battery.o \
./drivers/acpi/bgrt.o \
./drivers/acpi/blacklist.o \
./drivers/acpi/bus.o \
./drivers/acpi/button.o \
./drivers/acpi/cm_sbs.o \
./drivers/acpi/container.o \
./drivers/acpi/custom_method.o \
./drivers/acpi/debugfs.o \
./drivers/acpi/dock.o \
./drivers/acpi/ec.o \
./drivers/acpi/ec_sys.o \
./drivers/acpi/event.o \
./drivers/acpi/fan.o \
./drivers/acpi/glue.o \
./drivers/acpi/hed.o \
./drivers/acpi/numa.o \
./drivers/acpi/nvs.o \
./drivers/acpi/osl.o \
./drivers/acpi/pci_bind.o \
./drivers/acpi/pci_irq.o \
./drivers/acpi/pci_link.o \
./drivers/acpi/pci_root.o \
./drivers/acpi/pci_slot.o \
./drivers/acpi/power.o \
./drivers/acpi/proc.o \
./drivers/acpi/processor_core.o \
./drivers/acpi/processor_driver.o \
./drivers/acpi/processor_idle.o \
./drivers/acpi/processor_perflib.o \
./drivers/acpi/processor_thermal.o \
./drivers/acpi/processor_throttling.o \
./drivers/acpi/reboot.o \
./drivers/acpi/sbs.o \
./drivers/acpi/sbshc.o \
./drivers/acpi/scan.o \
./drivers/acpi/sleep.o \
./drivers/acpi/sysfs.o \
./drivers/acpi/tables.o \
./drivers/acpi/thermal.o \
./drivers/acpi/utils.o \
./drivers/acpi/video.o \
./drivers/acpi/video_detect.o \
./drivers/acpi/wakeup.o 

C_DEPS += \
./drivers/acpi/ac.d \
./drivers/acpi/acpi_ipmi.d \
./drivers/acpi/acpi_memhotplug.d \
./drivers/acpi/acpi_pad.d \
./drivers/acpi/battery.d \
./drivers/acpi/bgrt.d \
./drivers/acpi/blacklist.d \
./drivers/acpi/bus.d \
./drivers/acpi/button.d \
./drivers/acpi/cm_sbs.d \
./drivers/acpi/container.d \
./drivers/acpi/custom_method.d \
./drivers/acpi/debugfs.d \
./drivers/acpi/dock.d \
./drivers/acpi/ec.d \
./drivers/acpi/ec_sys.d \
./drivers/acpi/event.d \
./drivers/acpi/fan.d \
./drivers/acpi/glue.d \
./drivers/acpi/hed.d \
./drivers/acpi/numa.d \
./drivers/acpi/nvs.d \
./drivers/acpi/osl.d \
./drivers/acpi/pci_bind.d \
./drivers/acpi/pci_irq.d \
./drivers/acpi/pci_link.d \
./drivers/acpi/pci_root.d \
./drivers/acpi/pci_slot.d \
./drivers/acpi/power.d \
./drivers/acpi/proc.d \
./drivers/acpi/processor_core.d \
./drivers/acpi/processor_driver.d \
./drivers/acpi/processor_idle.d \
./drivers/acpi/processor_perflib.d \
./drivers/acpi/processor_thermal.d \
./drivers/acpi/processor_throttling.d \
./drivers/acpi/reboot.d \
./drivers/acpi/sbs.d \
./drivers/acpi/sbshc.d \
./drivers/acpi/scan.d \
./drivers/acpi/sleep.d \
./drivers/acpi/sysfs.d \
./drivers/acpi/tables.d \
./drivers/acpi/thermal.d \
./drivers/acpi/utils.d \
./drivers/acpi/video.d \
./drivers/acpi/video_detect.d \
./drivers/acpi/wakeup.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/acpi/%.o: ../drivers/acpi/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


