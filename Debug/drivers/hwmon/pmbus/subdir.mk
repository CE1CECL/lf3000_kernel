################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/hwmon/pmbus/adm1275.c \
../drivers/hwmon/pmbus/lm25066.c \
../drivers/hwmon/pmbus/ltc2978.c \
../drivers/hwmon/pmbus/max16064.c \
../drivers/hwmon/pmbus/max34440.c \
../drivers/hwmon/pmbus/max8688.c \
../drivers/hwmon/pmbus/pmbus.c \
../drivers/hwmon/pmbus/pmbus_core.c \
../drivers/hwmon/pmbus/ucd9000.c \
../drivers/hwmon/pmbus/ucd9200.c \
../drivers/hwmon/pmbus/zl6100.c 

OBJS += \
./drivers/hwmon/pmbus/adm1275.o \
./drivers/hwmon/pmbus/lm25066.o \
./drivers/hwmon/pmbus/ltc2978.o \
./drivers/hwmon/pmbus/max16064.o \
./drivers/hwmon/pmbus/max34440.o \
./drivers/hwmon/pmbus/max8688.o \
./drivers/hwmon/pmbus/pmbus.o \
./drivers/hwmon/pmbus/pmbus_core.o \
./drivers/hwmon/pmbus/ucd9000.o \
./drivers/hwmon/pmbus/ucd9200.o \
./drivers/hwmon/pmbus/zl6100.o 

C_DEPS += \
./drivers/hwmon/pmbus/adm1275.d \
./drivers/hwmon/pmbus/lm25066.d \
./drivers/hwmon/pmbus/ltc2978.d \
./drivers/hwmon/pmbus/max16064.d \
./drivers/hwmon/pmbus/max34440.d \
./drivers/hwmon/pmbus/max8688.d \
./drivers/hwmon/pmbus/pmbus.d \
./drivers/hwmon/pmbus/pmbus_core.d \
./drivers/hwmon/pmbus/ucd9000.d \
./drivers/hwmon/pmbus/ucd9200.d \
./drivers/hwmon/pmbus/zl6100.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/hwmon/pmbus/%.o: ../drivers/hwmon/pmbus/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


