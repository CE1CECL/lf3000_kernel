################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/cpia2/cpia2_core.c \
../drivers/media/video/cpia2/cpia2_usb.c \
../drivers/media/video/cpia2/cpia2_v4l.c 

OBJS += \
./drivers/media/video/cpia2/cpia2_core.o \
./drivers/media/video/cpia2/cpia2_usb.o \
./drivers/media/video/cpia2/cpia2_v4l.o 

C_DEPS += \
./drivers/media/video/cpia2/cpia2_core.d \
./drivers/media/video/cpia2/cpia2_usb.d \
./drivers/media/video/cpia2/cpia2_v4l.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/cpia2/%.o: ../drivers/media/video/cpia2/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


