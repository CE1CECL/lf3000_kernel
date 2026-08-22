################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/misc/c2port/c2port-duramar2150.c \
../drivers/misc/c2port/core.c 

OBJS += \
./drivers/misc/c2port/c2port-duramar2150.o \
./drivers/misc/c2port/core.o 

C_DEPS += \
./drivers/misc/c2port/c2port-duramar2150.d \
./drivers/misc/c2port/core.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/misc/c2port/%.o: ../drivers/misc/c2port/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


