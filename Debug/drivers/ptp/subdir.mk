################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/ptp/ptp_chardev.c \
../drivers/ptp/ptp_clock.c \
../drivers/ptp/ptp_ixp46x.c \
../drivers/ptp/ptp_pch.c \
../drivers/ptp/ptp_sysfs.c 

OBJS += \
./drivers/ptp/ptp_chardev.o \
./drivers/ptp/ptp_clock.o \
./drivers/ptp/ptp_ixp46x.o \
./drivers/ptp/ptp_pch.o \
./drivers/ptp/ptp_sysfs.o 

C_DEPS += \
./drivers/ptp/ptp_chardev.d \
./drivers/ptp/ptp_clock.d \
./drivers/ptp/ptp_ixp46x.d \
./drivers/ptp/ptp_pch.d \
./drivers/ptp/ptp_sysfs.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/ptp/%.o: ../drivers/ptp/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


