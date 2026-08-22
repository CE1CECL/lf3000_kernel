################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/usb/musb/am35x.c \
../drivers/usb/musb/blackfin.c \
../drivers/usb/musb/cppi_dma.c \
../drivers/usb/musb/da8xx.c \
../drivers/usb/musb/davinci.c \
../drivers/usb/musb/musb_core.c \
../drivers/usb/musb/musb_debugfs.c \
../drivers/usb/musb/musb_gadget.c \
../drivers/usb/musb/musb_gadget_ep0.c \
../drivers/usb/musb/musb_host.c \
../drivers/usb/musb/musb_virthub.c \
../drivers/usb/musb/musbhsdma.c \
../drivers/usb/musb/omap2430.c \
../drivers/usb/musb/tusb6010.c \
../drivers/usb/musb/tusb6010_omap.c \
../drivers/usb/musb/ux500.c \
../drivers/usb/musb/ux500_dma.c 

OBJS += \
./drivers/usb/musb/am35x.o \
./drivers/usb/musb/blackfin.o \
./drivers/usb/musb/cppi_dma.o \
./drivers/usb/musb/da8xx.o \
./drivers/usb/musb/davinci.o \
./drivers/usb/musb/musb_core.o \
./drivers/usb/musb/musb_debugfs.o \
./drivers/usb/musb/musb_gadget.o \
./drivers/usb/musb/musb_gadget_ep0.o \
./drivers/usb/musb/musb_host.o \
./drivers/usb/musb/musb_virthub.o \
./drivers/usb/musb/musbhsdma.o \
./drivers/usb/musb/omap2430.o \
./drivers/usb/musb/tusb6010.o \
./drivers/usb/musb/tusb6010_omap.o \
./drivers/usb/musb/ux500.o \
./drivers/usb/musb/ux500_dma.o 

C_DEPS += \
./drivers/usb/musb/am35x.d \
./drivers/usb/musb/blackfin.d \
./drivers/usb/musb/cppi_dma.d \
./drivers/usb/musb/da8xx.d \
./drivers/usb/musb/davinci.d \
./drivers/usb/musb/musb_core.d \
./drivers/usb/musb/musb_debugfs.d \
./drivers/usb/musb/musb_gadget.d \
./drivers/usb/musb/musb_gadget_ep0.d \
./drivers/usb/musb/musb_host.d \
./drivers/usb/musb/musb_virthub.d \
./drivers/usb/musb/musbhsdma.d \
./drivers/usb/musb/omap2430.d \
./drivers/usb/musb/tusb6010.d \
./drivers/usb/musb/tusb6010_omap.d \
./drivers/usb/musb/ux500.d \
./drivers/usb/musb/ux500_dma.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/usb/musb/%.o: ../drivers/usb/musb/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


