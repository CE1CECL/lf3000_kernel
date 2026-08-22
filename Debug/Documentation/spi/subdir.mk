################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Documentation/spi/spidev_fdx.c \
../Documentation/spi/spidev_test.c 

OBJS += \
./Documentation/spi/spidev_fdx.o \
./Documentation/spi/spidev_test.o 

C_DEPS += \
./Documentation/spi/spidev_fdx.d \
./Documentation/spi/spidev_test.d 


# Each subdirectory must supply rules for building sources it contributes
Documentation/spi/%.o: ../Documentation/spi/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


