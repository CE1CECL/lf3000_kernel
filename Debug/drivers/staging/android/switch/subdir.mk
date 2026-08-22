################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/android/switch/switch_class.c \
../drivers/staging/android/switch/switch_gpio.c 

OBJS += \
./drivers/staging/android/switch/switch_class.o \
./drivers/staging/android/switch/switch_gpio.o 

C_DEPS += \
./drivers/staging/android/switch/switch_class.d \
./drivers/staging/android/switch/switch_gpio.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/android/switch/%.o: ../drivers/staging/android/switch/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


