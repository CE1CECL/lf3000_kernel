################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/cdrom/built-in.o 

C_SRCS += \
../drivers/cdrom/cdrom.c \
../drivers/cdrom/gdrom.c 

OBJS += \
./drivers/cdrom/cdrom.o \
./drivers/cdrom/gdrom.o 

C_DEPS += \
./drivers/cdrom/cdrom.d \
./drivers/cdrom/gdrom.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/cdrom/%.o: ../drivers/cdrom/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


