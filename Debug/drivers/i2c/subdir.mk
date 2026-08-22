################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/i2c/built-in.o \
../drivers/i2c/i2c-boardinfo.o \
../drivers/i2c/i2c-core.o \
../drivers/i2c/i2c-dev.o 

C_SRCS += \
../drivers/i2c/i2c-boardinfo.c \
../drivers/i2c/i2c-core.c \
../drivers/i2c/i2c-dev.c \
../drivers/i2c/i2c-mux.c \
../drivers/i2c/i2c-smbus.c 

OBJS += \
./drivers/i2c/i2c-boardinfo.o \
./drivers/i2c/i2c-core.o \
./drivers/i2c/i2c-dev.o \
./drivers/i2c/i2c-mux.o \
./drivers/i2c/i2c-smbus.o 

C_DEPS += \
./drivers/i2c/i2c-boardinfo.d \
./drivers/i2c/i2c-core.d \
./drivers/i2c/i2c-dev.d \
./drivers/i2c/i2c-mux.d \
./drivers/i2c/i2c-smbus.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/i2c/%.o: ../drivers/i2c/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


