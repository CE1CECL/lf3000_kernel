################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/usb/atm/cxacru.c \
../drivers/usb/atm/speedtch.c \
../drivers/usb/atm/ueagle-atm.c \
../drivers/usb/atm/usbatm.c \
../drivers/usb/atm/xusbatm.c 

OBJS += \
./drivers/usb/atm/cxacru.o \
./drivers/usb/atm/speedtch.o \
./drivers/usb/atm/ueagle-atm.o \
./drivers/usb/atm/usbatm.o \
./drivers/usb/atm/xusbatm.o 

C_DEPS += \
./drivers/usb/atm/cxacru.d \
./drivers/usb/atm/speedtch.d \
./drivers/usb/atm/ueagle-atm.d \
./drivers/usb/atm/usbatm.d \
./drivers/usb/atm/xusbatm.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/usb/atm/%.o: ../drivers/usb/atm/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


