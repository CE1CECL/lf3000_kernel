################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/vme/bridges/vme_ca91cx42.c \
../drivers/staging/vme/bridges/vme_tsi148.c 

OBJS += \
./drivers/staging/vme/bridges/vme_ca91cx42.o \
./drivers/staging/vme/bridges/vme_tsi148.o 

C_DEPS += \
./drivers/staging/vme/bridges/vme_ca91cx42.d \
./drivers/staging/vme/bridges/vme_tsi148.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/vme/bridges/%.o: ../drivers/staging/vme/bridges/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


