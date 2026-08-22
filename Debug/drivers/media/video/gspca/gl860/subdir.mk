################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/gspca/gl860/gl860-mi1320.c \
../drivers/media/video/gspca/gl860/gl860-mi2020.c \
../drivers/media/video/gspca/gl860/gl860-ov2640.c \
../drivers/media/video/gspca/gl860/gl860-ov9655.c \
../drivers/media/video/gspca/gl860/gl860.c 

OBJS += \
./drivers/media/video/gspca/gl860/gl860-mi1320.o \
./drivers/media/video/gspca/gl860/gl860-mi2020.o \
./drivers/media/video/gspca/gl860/gl860-ov2640.o \
./drivers/media/video/gspca/gl860/gl860-ov9655.o \
./drivers/media/video/gspca/gl860/gl860.o 

C_DEPS += \
./drivers/media/video/gspca/gl860/gl860-mi1320.d \
./drivers/media/video/gspca/gl860/gl860-mi2020.d \
./drivers/media/video/gspca/gl860/gl860-ov2640.d \
./drivers/media/video/gspca/gl860/gl860-ov9655.d \
./drivers/media/video/gspca/gl860/gl860.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/gspca/gl860/%.o: ../drivers/media/video/gspca/gl860/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


