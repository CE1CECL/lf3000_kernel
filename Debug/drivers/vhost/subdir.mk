################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/vhost/net.c \
../drivers/vhost/test.c \
../drivers/vhost/vhost.c 

OBJS += \
./drivers/vhost/net.o \
./drivers/vhost/test.o \
./drivers/vhost/vhost.o 

C_DEPS += \
./drivers/vhost/net.d \
./drivers/vhost/test.d \
./drivers/vhost/vhost.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/vhost/%.o: ../drivers/vhost/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


