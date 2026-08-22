################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/isdn/divert/divert_init.c \
../drivers/isdn/divert/divert_procfs.c \
../drivers/isdn/divert/isdn_divert.c 

OBJS += \
./drivers/isdn/divert/divert_init.o \
./drivers/isdn/divert/divert_procfs.o \
./drivers/isdn/divert/isdn_divert.o 

C_DEPS += \
./drivers/isdn/divert/divert_init.d \
./drivers/isdn/divert/divert_procfs.d \
./drivers/isdn/divert/isdn_divert.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/isdn/divert/%.o: ../drivers/isdn/divert/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


