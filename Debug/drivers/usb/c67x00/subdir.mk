################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/usb/c67x00/c67x00-drv.c \
../drivers/usb/c67x00/c67x00-hcd.c \
../drivers/usb/c67x00/c67x00-ll-hpi.c \
../drivers/usb/c67x00/c67x00-sched.c 

OBJS += \
./drivers/usb/c67x00/c67x00-drv.o \
./drivers/usb/c67x00/c67x00-hcd.o \
./drivers/usb/c67x00/c67x00-ll-hpi.o \
./drivers/usb/c67x00/c67x00-sched.o 

C_DEPS += \
./drivers/usb/c67x00/c67x00-drv.d \
./drivers/usb/c67x00/c67x00-hcd.d \
./drivers/usb/c67x00/c67x00-ll-hpi.d \
./drivers/usb/c67x00/c67x00-sched.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/usb/c67x00/%.o: ../drivers/usb/c67x00/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


