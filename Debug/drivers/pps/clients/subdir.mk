################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/pps/clients/pps-gpio.c \
../drivers/pps/clients/pps-ktimer.c \
../drivers/pps/clients/pps-ldisc.c \
../drivers/pps/clients/pps_parport.c 

OBJS += \
./drivers/pps/clients/pps-gpio.o \
./drivers/pps/clients/pps-ktimer.o \
./drivers/pps/clients/pps-ldisc.o \
./drivers/pps/clients/pps_parport.o 

C_DEPS += \
./drivers/pps/clients/pps-gpio.d \
./drivers/pps/clients/pps-ktimer.d \
./drivers/pps/clients/pps-ldisc.d \
./drivers/pps/clients/pps_parport.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/pps/clients/%.o: ../drivers/pps/clients/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


