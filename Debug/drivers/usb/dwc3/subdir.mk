################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/usb/dwc3/core.c \
../drivers/usb/dwc3/debugfs.c \
../drivers/usb/dwc3/dwc3-exynos.c \
../drivers/usb/dwc3/dwc3-omap.c \
../drivers/usb/dwc3/dwc3-pci.c \
../drivers/usb/dwc3/ep0.c \
../drivers/usb/dwc3/gadget.c \
../drivers/usb/dwc3/host.c 

OBJS += \
./drivers/usb/dwc3/core.o \
./drivers/usb/dwc3/debugfs.o \
./drivers/usb/dwc3/dwc3-exynos.o \
./drivers/usb/dwc3/dwc3-omap.o \
./drivers/usb/dwc3/dwc3-pci.o \
./drivers/usb/dwc3/ep0.o \
./drivers/usb/dwc3/gadget.o \
./drivers/usb/dwc3/host.o 

C_DEPS += \
./drivers/usb/dwc3/core.d \
./drivers/usb/dwc3/debugfs.d \
./drivers/usb/dwc3/dwc3-exynos.d \
./drivers/usb/dwc3/dwc3-omap.d \
./drivers/usb/dwc3/dwc3-pci.d \
./drivers/usb/dwc3/ep0.d \
./drivers/usb/dwc3/gadget.d \
./drivers/usb/dwc3/host.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/usb/dwc3/%.o: ../drivers/usb/dwc3/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


