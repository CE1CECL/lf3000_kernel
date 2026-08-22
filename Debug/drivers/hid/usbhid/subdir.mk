################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/hid/usbhid/hid-core.c \
../drivers/hid/usbhid/hid-pidff.c \
../drivers/hid/usbhid/hid-quirks.c \
../drivers/hid/usbhid/hiddev.c \
../drivers/hid/usbhid/usbkbd.c \
../drivers/hid/usbhid/usbmouse.c 

OBJS += \
./drivers/hid/usbhid/hid-core.o \
./drivers/hid/usbhid/hid-pidff.o \
./drivers/hid/usbhid/hid-quirks.o \
./drivers/hid/usbhid/hiddev.o \
./drivers/hid/usbhid/usbkbd.o \
./drivers/hid/usbhid/usbmouse.o 

C_DEPS += \
./drivers/hid/usbhid/hid-core.d \
./drivers/hid/usbhid/hid-pidff.d \
./drivers/hid/usbhid/hid-quirks.d \
./drivers/hid/usbhid/hiddev.d \
./drivers/hid/usbhid/usbkbd.d \
./drivers/hid/usbhid/usbmouse.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/hid/usbhid/%.o: ../drivers/hid/usbhid/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


