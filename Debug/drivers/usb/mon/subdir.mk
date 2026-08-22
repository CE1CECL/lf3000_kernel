################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/usb/mon/mon_bin.c \
../drivers/usb/mon/mon_main.c \
../drivers/usb/mon/mon_stat.c \
../drivers/usb/mon/mon_text.c 

OBJS += \
./drivers/usb/mon/mon_bin.o \
./drivers/usb/mon/mon_main.o \
./drivers/usb/mon/mon_stat.o \
./drivers/usb/mon/mon_text.o 

C_DEPS += \
./drivers/usb/mon/mon_bin.d \
./drivers/usb/mon/mon_main.d \
./drivers/usb/mon/mon_stat.d \
./drivers/usb/mon/mon_text.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/usb/mon/%.o: ../drivers/usb/mon/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


