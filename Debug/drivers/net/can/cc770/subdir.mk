################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/can/cc770/cc770.c \
../drivers/net/can/cc770/cc770_isa.c \
../drivers/net/can/cc770/cc770_platform.c 

OBJS += \
./drivers/net/can/cc770/cc770.o \
./drivers/net/can/cc770/cc770_isa.o \
./drivers/net/can/cc770/cc770_platform.o 

C_DEPS += \
./drivers/net/can/cc770/cc770.d \
./drivers/net/can/cc770/cc770_isa.d \
./drivers/net/can/cc770/cc770_platform.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/can/cc770/%.o: ../drivers/net/can/cc770/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


