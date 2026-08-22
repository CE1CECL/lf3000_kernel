################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/xen/xen-pciback/conf_space.c \
../drivers/xen/xen-pciback/conf_space_capability.c \
../drivers/xen/xen-pciback/conf_space_header.c \
../drivers/xen/xen-pciback/conf_space_quirks.c \
../drivers/xen/xen-pciback/passthrough.c \
../drivers/xen/xen-pciback/pci_stub.c \
../drivers/xen/xen-pciback/pciback_ops.c \
../drivers/xen/xen-pciback/vpci.c \
../drivers/xen/xen-pciback/xenbus.c 

OBJS += \
./drivers/xen/xen-pciback/conf_space.o \
./drivers/xen/xen-pciback/conf_space_capability.o \
./drivers/xen/xen-pciback/conf_space_header.o \
./drivers/xen/xen-pciback/conf_space_quirks.o \
./drivers/xen/xen-pciback/passthrough.o \
./drivers/xen/xen-pciback/pci_stub.o \
./drivers/xen/xen-pciback/pciback_ops.o \
./drivers/xen/xen-pciback/vpci.o \
./drivers/xen/xen-pciback/xenbus.o 

C_DEPS += \
./drivers/xen/xen-pciback/conf_space.d \
./drivers/xen/xen-pciback/conf_space_capability.d \
./drivers/xen/xen-pciback/conf_space_header.d \
./drivers/xen/xen-pciback/conf_space_quirks.d \
./drivers/xen/xen-pciback/passthrough.d \
./drivers/xen/xen-pciback/pci_stub.d \
./drivers/xen/xen-pciback/pciback_ops.d \
./drivers/xen/xen-pciback/vpci.d \
./drivers/xen/xen-pciback/xenbus.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/xen/xen-pciback/%.o: ../drivers/xen/xen-pciback/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


