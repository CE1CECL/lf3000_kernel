################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/s5p-g2d/g2d-hw.c \
../drivers/media/video/s5p-g2d/g2d.c 

OBJS += \
./drivers/media/video/s5p-g2d/g2d-hw.o \
./drivers/media/video/s5p-g2d/g2d.o 

C_DEPS += \
./drivers/media/video/s5p-g2d/g2d-hw.d \
./drivers/media/video/s5p-g2d/g2d.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/s5p-g2d/%.o: ../drivers/media/video/s5p-g2d/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


