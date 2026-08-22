################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/usbip/userspace/libsrc/names.c \
../drivers/staging/usbip/userspace/libsrc/usbip_common.c \
../drivers/staging/usbip/userspace/libsrc/usbip_host_driver.c \
../drivers/staging/usbip/userspace/libsrc/vhci_driver.c 

OBJS += \
./drivers/staging/usbip/userspace/libsrc/names.o \
./drivers/staging/usbip/userspace/libsrc/usbip_common.o \
./drivers/staging/usbip/userspace/libsrc/usbip_host_driver.o \
./drivers/staging/usbip/userspace/libsrc/vhci_driver.o 

C_DEPS += \
./drivers/staging/usbip/userspace/libsrc/names.d \
./drivers/staging/usbip/userspace/libsrc/usbip_common.d \
./drivers/staging/usbip/userspace/libsrc/usbip_host_driver.d \
./drivers/staging/usbip/userspace/libsrc/vhci_driver.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/usbip/userspace/libsrc/%.o: ../drivers/staging/usbip/userspace/libsrc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


