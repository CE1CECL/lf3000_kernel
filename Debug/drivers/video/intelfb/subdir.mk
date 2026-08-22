################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/video/intelfb/intelfb_i2c.c \
../drivers/video/intelfb/intelfbdrv.c \
../drivers/video/intelfb/intelfbhw.c 

OBJS += \
./drivers/video/intelfb/intelfb_i2c.o \
./drivers/video/intelfb/intelfbdrv.o \
./drivers/video/intelfb/intelfbhw.o 

C_DEPS += \
./drivers/video/intelfb/intelfb_i2c.d \
./drivers/video/intelfb/intelfbdrv.d \
./drivers/video/intelfb/intelfbhw.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/video/intelfb/%.o: ../drivers/video/intelfb/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


