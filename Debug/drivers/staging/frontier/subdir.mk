################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/frontier/alphatrack.c \
../drivers/staging/frontier/tranzport.c 

OBJS += \
./drivers/staging/frontier/alphatrack.o \
./drivers/staging/frontier/tranzport.o 

C_DEPS += \
./drivers/staging/frontier/alphatrack.d \
./drivers/staging/frontier/tranzport.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/frontier/%.o: ../drivers/staging/frontier/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


