################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/misc/eeprom/built-in.o \
../drivers/misc/eeprom/eeprom_93cx6.mod.o \
../drivers/misc/eeprom/eeprom_93cx6.o 

C_SRCS += \
../drivers/misc/eeprom/at24.c \
../drivers/misc/eeprom/at25.c \
../drivers/misc/eeprom/digsy_mtc_eeprom.c \
../drivers/misc/eeprom/eeprom.c \
../drivers/misc/eeprom/eeprom_93cx6.c \
../drivers/misc/eeprom/eeprom_93cx6.mod.c \
../drivers/misc/eeprom/eeprom_93xx46.c \
../drivers/misc/eeprom/max6875.c 

OBJS += \
./drivers/misc/eeprom/at24.o \
./drivers/misc/eeprom/at25.o \
./drivers/misc/eeprom/digsy_mtc_eeprom.o \
./drivers/misc/eeprom/eeprom.o \
./drivers/misc/eeprom/eeprom_93cx6.o \
./drivers/misc/eeprom/eeprom_93cx6.mod.o \
./drivers/misc/eeprom/eeprom_93xx46.o \
./drivers/misc/eeprom/max6875.o 

C_DEPS += \
./drivers/misc/eeprom/at24.d \
./drivers/misc/eeprom/at25.d \
./drivers/misc/eeprom/digsy_mtc_eeprom.d \
./drivers/misc/eeprom/eeprom.d \
./drivers/misc/eeprom/eeprom_93cx6.d \
./drivers/misc/eeprom/eeprom_93cx6.mod.d \
./drivers/misc/eeprom/eeprom_93xx46.d \
./drivers/misc/eeprom/max6875.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/misc/eeprom/%.o: ../drivers/misc/eeprom/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


