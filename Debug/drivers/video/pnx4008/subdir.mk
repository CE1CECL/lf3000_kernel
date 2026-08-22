################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/video/pnx4008/pnxrgbfb.c \
../drivers/video/pnx4008/sdum.c 

OBJS += \
./drivers/video/pnx4008/pnxrgbfb.o \
./drivers/video/pnx4008/sdum.o 

C_DEPS += \
./drivers/video/pnx4008/pnxrgbfb.d \
./drivers/video/pnx4008/sdum.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/video/pnx4008/%.o: ../drivers/video/pnx4008/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


