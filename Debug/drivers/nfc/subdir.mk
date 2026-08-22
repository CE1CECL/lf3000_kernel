################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/nfc/built-in.o 

C_SRCS += \
../drivers/nfc/bcm2079x-spi.c \
../drivers/nfc/nfcwilink.c \
../drivers/nfc/pn533.c \
../drivers/nfc/pn544.c 

OBJS += \
./drivers/nfc/bcm2079x-spi.o \
./drivers/nfc/nfcwilink.o \
./drivers/nfc/pn533.o \
./drivers/nfc/pn544.o 

C_DEPS += \
./drivers/nfc/bcm2079x-spi.d \
./drivers/nfc/nfcwilink.d \
./drivers/nfc/pn533.d \
./drivers/nfc/pn544.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/nfc/%.o: ../drivers/nfc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


