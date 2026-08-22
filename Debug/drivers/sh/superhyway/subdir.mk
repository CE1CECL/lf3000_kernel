################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/sh/superhyway/superhyway-sysfs.c \
../drivers/sh/superhyway/superhyway.c 

OBJS += \
./drivers/sh/superhyway/superhyway-sysfs.o \
./drivers/sh/superhyway/superhyway.o 

C_DEPS += \
./drivers/sh/superhyway/superhyway-sysfs.d \
./drivers/sh/superhyway/superhyway.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/sh/superhyway/%.o: ../drivers/sh/superhyway/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


