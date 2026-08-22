################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/xen/xenfs/super.c \
../drivers/xen/xenfs/xenstored.c 

OBJS += \
./drivers/xen/xenfs/super.o \
./drivers/xen/xenfs/xenstored.o 

C_DEPS += \
./drivers/xen/xenfs/super.d \
./drivers/xen/xenfs/xenstored.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/xen/xenfs/%.o: ../drivers/xen/xenfs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


