################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/hsi/built-in.o 

C_SRCS += \
../drivers/hsi/hsi.c \
../drivers/hsi/hsi_boardinfo.c 

OBJS += \
./drivers/hsi/hsi.o \
./drivers/hsi/hsi_boardinfo.o 

C_DEPS += \
./drivers/hsi/hsi.d \
./drivers/hsi/hsi_boardinfo.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/hsi/%.o: ../drivers/hsi/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


