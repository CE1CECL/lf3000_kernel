################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/memstick/host/jmb38x_ms.c \
../drivers/memstick/host/r592.c \
../drivers/memstick/host/tifm_ms.c 

OBJS += \
./drivers/memstick/host/jmb38x_ms.o \
./drivers/memstick/host/r592.o \
./drivers/memstick/host/tifm_ms.o 

C_DEPS += \
./drivers/memstick/host/jmb38x_ms.d \
./drivers/memstick/host/r592.d \
./drivers/memstick/host/tifm_ms.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/memstick/host/%.o: ../drivers/memstick/host/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


