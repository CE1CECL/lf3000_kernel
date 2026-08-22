################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/can/softing/softing_cs.c \
../drivers/net/can/softing/softing_fw.c \
../drivers/net/can/softing/softing_main.c 

OBJS += \
./drivers/net/can/softing/softing_cs.o \
./drivers/net/can/softing/softing_fw.o \
./drivers/net/can/softing/softing_main.o 

C_DEPS += \
./drivers/net/can/softing/softing_cs.d \
./drivers/net/can/softing/softing_fw.d \
./drivers/net/can/softing/softing_main.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/can/softing/%.o: ../drivers/net/can/softing/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


