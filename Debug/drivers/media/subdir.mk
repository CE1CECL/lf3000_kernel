################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/media/built-in.o 

C_SRCS += \
../drivers/media/media-device.c \
../drivers/media/media-devnode.c \
../drivers/media/media-entity.c 

OBJS += \
./drivers/media/media-device.o \
./drivers/media/media-devnode.o \
./drivers/media/media-entity.o 

C_DEPS += \
./drivers/media/media-device.d \
./drivers/media/media-devnode.d \
./drivers/media/media-entity.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/%.o: ../drivers/media/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


