################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/video/mb862xx/mb862xx-i2c.c \
../drivers/video/mb862xx/mb862xxfb_accel.c \
../drivers/video/mb862xx/mb862xxfbdrv.c 

OBJS += \
./drivers/video/mb862xx/mb862xx-i2c.o \
./drivers/video/mb862xx/mb862xxfb_accel.o \
./drivers/video/mb862xx/mb862xxfbdrv.o 

C_DEPS += \
./drivers/video/mb862xx/mb862xx-i2c.d \
./drivers/video/mb862xx/mb862xxfb_accel.d \
./drivers/video/mb862xx/mb862xxfbdrv.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/video/mb862xx/%.o: ../drivers/video/mb862xx/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


