################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/rapidio/switches/idt_gen2.c \
../drivers/rapidio/switches/idtcps.c \
../drivers/rapidio/switches/tsi500.c \
../drivers/rapidio/switches/tsi568.c \
../drivers/rapidio/switches/tsi57x.c 

OBJS += \
./drivers/rapidio/switches/idt_gen2.o \
./drivers/rapidio/switches/idtcps.o \
./drivers/rapidio/switches/tsi500.o \
./drivers/rapidio/switches/tsi568.o \
./drivers/rapidio/switches/tsi57x.o 

C_DEPS += \
./drivers/rapidio/switches/idt_gen2.d \
./drivers/rapidio/switches/idtcps.d \
./drivers/rapidio/switches/tsi500.d \
./drivers/rapidio/switches/tsi568.d \
./drivers/rapidio/switches/tsi57x.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/rapidio/switches/%.o: ../drivers/rapidio/switches/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


