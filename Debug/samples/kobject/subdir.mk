################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../samples/kobject/kobject-example.c \
../samples/kobject/kset-example.c 

OBJS += \
./samples/kobject/kobject-example.o \
./samples/kobject/kset-example.o 

C_DEPS += \
./samples/kobject/kobject-example.d \
./samples/kobject/kset-example.d 


# Each subdirectory must supply rules for building sources it contributes
samples/kobject/%.o: ../samples/kobject/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


