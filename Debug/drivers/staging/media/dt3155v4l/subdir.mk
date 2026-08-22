################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/media/dt3155v4l/dt3155v4l.c 

OBJS += \
./drivers/staging/media/dt3155v4l/dt3155v4l.o 

C_DEPS += \
./drivers/staging/media/dt3155v4l/dt3155v4l.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/media/dt3155v4l/%.o: ../drivers/staging/media/dt3155v4l/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


