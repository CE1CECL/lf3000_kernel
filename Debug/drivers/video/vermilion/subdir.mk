################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/video/vermilion/cr_pll.c \
../drivers/video/vermilion/vermilion.c 

OBJS += \
./drivers/video/vermilion/cr_pll.o \
./drivers/video/vermilion/vermilion.o 

C_DEPS += \
./drivers/video/vermilion/cr_pll.d \
./drivers/video/vermilion/vermilion.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/video/vermilion/%.o: ../drivers/video/vermilion/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


