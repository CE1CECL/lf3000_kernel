################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/firmware/google/gsmi.c \
../drivers/firmware/google/memconsole.c 

OBJS += \
./drivers/firmware/google/gsmi.o \
./drivers/firmware/google/memconsole.o 

C_DEPS += \
./drivers/firmware/google/gsmi.d \
./drivers/firmware/google/memconsole.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/firmware/google/%.o: ../drivers/firmware/google/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


