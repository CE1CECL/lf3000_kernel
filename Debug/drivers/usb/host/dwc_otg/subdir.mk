################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/usb/host/dwc_otg/dummy_audio.c \
../drivers/usb/host/dwc_otg/dwc_otg_adp.c \
../drivers/usb/host/dwc_otg/dwc_otg_attr.c \
../drivers/usb/host/dwc_otg/dwc_otg_cfi.c \
../drivers/usb/host/dwc_otg/dwc_otg_cil.c \
../drivers/usb/host/dwc_otg/dwc_otg_cil_intr.c \
../drivers/usb/host/dwc_otg/dwc_otg_driver.c \
../drivers/usb/host/dwc_otg/dwc_otg_hcd.c \
../drivers/usb/host/dwc_otg/dwc_otg_hcd_ddma.c \
../drivers/usb/host/dwc_otg/dwc_otg_hcd_intr.c \
../drivers/usb/host/dwc_otg/dwc_otg_hcd_linux.c \
../drivers/usb/host/dwc_otg/dwc_otg_hcd_queue.c \
../drivers/usb/host/dwc_otg/dwc_otg_mphi_fix.c \
../drivers/usb/host/dwc_otg/dwc_otg_pcd.c \
../drivers/usb/host/dwc_otg/dwc_otg_pcd_intr.c \
../drivers/usb/host/dwc_otg/dwc_otg_pcd_linux.c 

OBJS += \
./drivers/usb/host/dwc_otg/dummy_audio.o \
./drivers/usb/host/dwc_otg/dwc_otg_adp.o \
./drivers/usb/host/dwc_otg/dwc_otg_attr.o \
./drivers/usb/host/dwc_otg/dwc_otg_cfi.o \
./drivers/usb/host/dwc_otg/dwc_otg_cil.o \
./drivers/usb/host/dwc_otg/dwc_otg_cil_intr.o \
./drivers/usb/host/dwc_otg/dwc_otg_driver.o \
./drivers/usb/host/dwc_otg/dwc_otg_hcd.o \
./drivers/usb/host/dwc_otg/dwc_otg_hcd_ddma.o \
./drivers/usb/host/dwc_otg/dwc_otg_hcd_intr.o \
./drivers/usb/host/dwc_otg/dwc_otg_hcd_linux.o \
./drivers/usb/host/dwc_otg/dwc_otg_hcd_queue.o \
./drivers/usb/host/dwc_otg/dwc_otg_mphi_fix.o \
./drivers/usb/host/dwc_otg/dwc_otg_pcd.o \
./drivers/usb/host/dwc_otg/dwc_otg_pcd_intr.o \
./drivers/usb/host/dwc_otg/dwc_otg_pcd_linux.o 

C_DEPS += \
./drivers/usb/host/dwc_otg/dummy_audio.d \
./drivers/usb/host/dwc_otg/dwc_otg_adp.d \
./drivers/usb/host/dwc_otg/dwc_otg_attr.d \
./drivers/usb/host/dwc_otg/dwc_otg_cfi.d \
./drivers/usb/host/dwc_otg/dwc_otg_cil.d \
./drivers/usb/host/dwc_otg/dwc_otg_cil_intr.d \
./drivers/usb/host/dwc_otg/dwc_otg_driver.d \
./drivers/usb/host/dwc_otg/dwc_otg_hcd.d \
./drivers/usb/host/dwc_otg/dwc_otg_hcd_ddma.d \
./drivers/usb/host/dwc_otg/dwc_otg_hcd_intr.d \
./drivers/usb/host/dwc_otg/dwc_otg_hcd_linux.d \
./drivers/usb/host/dwc_otg/dwc_otg_hcd_queue.d \
./drivers/usb/host/dwc_otg/dwc_otg_mphi_fix.d \
./drivers/usb/host/dwc_otg/dwc_otg_pcd.d \
./drivers/usb/host/dwc_otg/dwc_otg_pcd_intr.d \
./drivers/usb/host/dwc_otg/dwc_otg_pcd_linux.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/usb/host/dwc_otg/%.o: ../drivers/usb/host/dwc_otg/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


