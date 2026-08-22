################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/pci/asihpi/asihpi.c \
../sound/pci/asihpi/hpi6000.c \
../sound/pci/asihpi/hpi6205.c \
../sound/pci/asihpi/hpicmn.c \
../sound/pci/asihpi/hpidebug.c \
../sound/pci/asihpi/hpidspcd.c \
../sound/pci/asihpi/hpifunc.c \
../sound/pci/asihpi/hpimsginit.c \
../sound/pci/asihpi/hpimsgx.c \
../sound/pci/asihpi/hpioctl.c \
../sound/pci/asihpi/hpios.c 

OBJS += \
./sound/pci/asihpi/asihpi.o \
./sound/pci/asihpi/hpi6000.o \
./sound/pci/asihpi/hpi6205.o \
./sound/pci/asihpi/hpicmn.o \
./sound/pci/asihpi/hpidebug.o \
./sound/pci/asihpi/hpidspcd.o \
./sound/pci/asihpi/hpifunc.o \
./sound/pci/asihpi/hpimsginit.o \
./sound/pci/asihpi/hpimsgx.o \
./sound/pci/asihpi/hpioctl.o \
./sound/pci/asihpi/hpios.o 

C_DEPS += \
./sound/pci/asihpi/asihpi.d \
./sound/pci/asihpi/hpi6000.d \
./sound/pci/asihpi/hpi6205.d \
./sound/pci/asihpi/hpicmn.d \
./sound/pci/asihpi/hpidebug.d \
./sound/pci/asihpi/hpidspcd.d \
./sound/pci/asihpi/hpifunc.d \
./sound/pci/asihpi/hpimsginit.d \
./sound/pci/asihpi/hpimsgx.d \
./sound/pci/asihpi/hpioctl.d \
./sound/pci/asihpi/hpios.d 


# Each subdirectory must supply rules for building sources it contributes
sound/pci/asihpi/%.o: ../sound/pci/asihpi/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


