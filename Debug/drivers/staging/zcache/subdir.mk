################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/zcache/tmem.c \
../drivers/staging/zcache/zcache-main.c 

OBJS += \
./drivers/staging/zcache/tmem.o \
./drivers/staging/zcache/zcache-main.o 

C_DEPS += \
./drivers/staging/zcache/tmem.d \
./drivers/staging/zcache/zcache-main.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/zcache/%.o: ../drivers/staging/zcache/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


