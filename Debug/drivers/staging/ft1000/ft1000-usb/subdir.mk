################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/ft1000/ft1000-usb/ft1000_debug.c \
../drivers/staging/ft1000/ft1000-usb/ft1000_download.c \
../drivers/staging/ft1000/ft1000-usb/ft1000_hw.c \
../drivers/staging/ft1000/ft1000-usb/ft1000_proc.c \
../drivers/staging/ft1000/ft1000-usb/ft1000_usb.c 

OBJS += \
./drivers/staging/ft1000/ft1000-usb/ft1000_debug.o \
./drivers/staging/ft1000/ft1000-usb/ft1000_download.o \
./drivers/staging/ft1000/ft1000-usb/ft1000_hw.o \
./drivers/staging/ft1000/ft1000-usb/ft1000_proc.o \
./drivers/staging/ft1000/ft1000-usb/ft1000_usb.o 

C_DEPS += \
./drivers/staging/ft1000/ft1000-usb/ft1000_debug.d \
./drivers/staging/ft1000/ft1000-usb/ft1000_download.d \
./drivers/staging/ft1000/ft1000-usb/ft1000_hw.d \
./drivers/staging/ft1000/ft1000-usb/ft1000_proc.d \
./drivers/staging/ft1000/ft1000-usb/ft1000_usb.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/ft1000/ft1000-usb/%.o: ../drivers/staging/ft1000/ft1000-usb/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


