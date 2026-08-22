################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/tty/serial/jsm/jsm_driver.c \
../drivers/tty/serial/jsm/jsm_neo.c \
../drivers/tty/serial/jsm/jsm_tty.c 

OBJS += \
./drivers/tty/serial/jsm/jsm_driver.o \
./drivers/tty/serial/jsm/jsm_neo.o \
./drivers/tty/serial/jsm/jsm_tty.o 

C_DEPS += \
./drivers/tty/serial/jsm/jsm_driver.d \
./drivers/tty/serial/jsm/jsm_neo.d \
./drivers/tty/serial/jsm/jsm_tty.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/tty/serial/jsm/%.o: ../drivers/tty/serial/jsm/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


