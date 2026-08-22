################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/media/solo6x10/core.c \
../drivers/staging/media/solo6x10/disp.c \
../drivers/staging/media/solo6x10/enc.c \
../drivers/staging/media/solo6x10/g723.c \
../drivers/staging/media/solo6x10/gpio.c \
../drivers/staging/media/solo6x10/i2c.c \
../drivers/staging/media/solo6x10/p2m.c \
../drivers/staging/media/solo6x10/tw28.c \
../drivers/staging/media/solo6x10/v4l2-enc.c \
../drivers/staging/media/solo6x10/v4l2.c 

OBJS += \
./drivers/staging/media/solo6x10/core.o \
./drivers/staging/media/solo6x10/disp.o \
./drivers/staging/media/solo6x10/enc.o \
./drivers/staging/media/solo6x10/g723.o \
./drivers/staging/media/solo6x10/gpio.o \
./drivers/staging/media/solo6x10/i2c.o \
./drivers/staging/media/solo6x10/p2m.o \
./drivers/staging/media/solo6x10/tw28.o \
./drivers/staging/media/solo6x10/v4l2-enc.o \
./drivers/staging/media/solo6x10/v4l2.o 

C_DEPS += \
./drivers/staging/media/solo6x10/core.d \
./drivers/staging/media/solo6x10/disp.d \
./drivers/staging/media/solo6x10/enc.d \
./drivers/staging/media/solo6x10/g723.d \
./drivers/staging/media/solo6x10/gpio.d \
./drivers/staging/media/solo6x10/i2c.d \
./drivers/staging/media/solo6x10/p2m.d \
./drivers/staging/media/solo6x10/tw28.d \
./drivers/staging/media/solo6x10/v4l2-enc.d \
./drivers/staging/media/solo6x10/v4l2.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/media/solo6x10/%.o: ../drivers/staging/media/solo6x10/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


