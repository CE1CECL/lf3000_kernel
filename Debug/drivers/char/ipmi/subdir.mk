################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/char/ipmi/ipmi_bt_sm.c \
../drivers/char/ipmi/ipmi_devintf.c \
../drivers/char/ipmi/ipmi_kcs_sm.c \
../drivers/char/ipmi/ipmi_msghandler.c \
../drivers/char/ipmi/ipmi_poweroff.c \
../drivers/char/ipmi/ipmi_si_intf.c \
../drivers/char/ipmi/ipmi_smic_sm.c \
../drivers/char/ipmi/ipmi_watchdog.c 

OBJS += \
./drivers/char/ipmi/ipmi_bt_sm.o \
./drivers/char/ipmi/ipmi_devintf.o \
./drivers/char/ipmi/ipmi_kcs_sm.o \
./drivers/char/ipmi/ipmi_msghandler.o \
./drivers/char/ipmi/ipmi_poweroff.o \
./drivers/char/ipmi/ipmi_si_intf.o \
./drivers/char/ipmi/ipmi_smic_sm.o \
./drivers/char/ipmi/ipmi_watchdog.o 

C_DEPS += \
./drivers/char/ipmi/ipmi_bt_sm.d \
./drivers/char/ipmi/ipmi_devintf.d \
./drivers/char/ipmi/ipmi_kcs_sm.d \
./drivers/char/ipmi/ipmi_msghandler.d \
./drivers/char/ipmi/ipmi_poweroff.d \
./drivers/char/ipmi/ipmi_si_intf.d \
./drivers/char/ipmi/ipmi_smic_sm.d \
./drivers/char/ipmi/ipmi_watchdog.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/char/ipmi/%.o: ../drivers/char/ipmi/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


