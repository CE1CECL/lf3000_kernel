################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/dec/tulip/21142.c \
../drivers/net/ethernet/dec/tulip/de2104x.c \
../drivers/net/ethernet/dec/tulip/de4x5.c \
../drivers/net/ethernet/dec/tulip/dmfe.c \
../drivers/net/ethernet/dec/tulip/eeprom.c \
../drivers/net/ethernet/dec/tulip/interrupt.c \
../drivers/net/ethernet/dec/tulip/media.c \
../drivers/net/ethernet/dec/tulip/pnic.c \
../drivers/net/ethernet/dec/tulip/pnic2.c \
../drivers/net/ethernet/dec/tulip/timer.c \
../drivers/net/ethernet/dec/tulip/tulip_core.c \
../drivers/net/ethernet/dec/tulip/uli526x.c \
../drivers/net/ethernet/dec/tulip/winbond-840.c \
../drivers/net/ethernet/dec/tulip/xircom_cb.c 

OBJS += \
./drivers/net/ethernet/dec/tulip/21142.o \
./drivers/net/ethernet/dec/tulip/de2104x.o \
./drivers/net/ethernet/dec/tulip/de4x5.o \
./drivers/net/ethernet/dec/tulip/dmfe.o \
./drivers/net/ethernet/dec/tulip/eeprom.o \
./drivers/net/ethernet/dec/tulip/interrupt.o \
./drivers/net/ethernet/dec/tulip/media.o \
./drivers/net/ethernet/dec/tulip/pnic.o \
./drivers/net/ethernet/dec/tulip/pnic2.o \
./drivers/net/ethernet/dec/tulip/timer.o \
./drivers/net/ethernet/dec/tulip/tulip_core.o \
./drivers/net/ethernet/dec/tulip/uli526x.o \
./drivers/net/ethernet/dec/tulip/winbond-840.o \
./drivers/net/ethernet/dec/tulip/xircom_cb.o 

C_DEPS += \
./drivers/net/ethernet/dec/tulip/21142.d \
./drivers/net/ethernet/dec/tulip/de2104x.d \
./drivers/net/ethernet/dec/tulip/de4x5.d \
./drivers/net/ethernet/dec/tulip/dmfe.d \
./drivers/net/ethernet/dec/tulip/eeprom.d \
./drivers/net/ethernet/dec/tulip/interrupt.d \
./drivers/net/ethernet/dec/tulip/media.d \
./drivers/net/ethernet/dec/tulip/pnic.d \
./drivers/net/ethernet/dec/tulip/pnic2.d \
./drivers/net/ethernet/dec/tulip/timer.d \
./drivers/net/ethernet/dec/tulip/tulip_core.d \
./drivers/net/ethernet/dec/tulip/uli526x.d \
./drivers/net/ethernet/dec/tulip/winbond-840.d \
./drivers/net/ethernet/dec/tulip/xircom_cb.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/dec/tulip/%.o: ../drivers/net/ethernet/dec/tulip/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


