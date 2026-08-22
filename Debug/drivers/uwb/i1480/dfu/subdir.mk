################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/uwb/i1480/dfu/dfu.c \
../drivers/uwb/i1480/dfu/mac.c \
../drivers/uwb/i1480/dfu/phy.c \
../drivers/uwb/i1480/dfu/usb.c 

OBJS += \
./drivers/uwb/i1480/dfu/dfu.o \
./drivers/uwb/i1480/dfu/mac.o \
./drivers/uwb/i1480/dfu/phy.o \
./drivers/uwb/i1480/dfu/usb.o 

C_DEPS += \
./drivers/uwb/i1480/dfu/dfu.d \
./drivers/uwb/i1480/dfu/mac.d \
./drivers/uwb/i1480/dfu/phy.d \
./drivers/uwb/i1480/dfu/usb.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/uwb/i1480/dfu/%.o: ../drivers/uwb/i1480/dfu/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


