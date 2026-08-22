################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/misc/cb710/built-in.o 

C_SRCS += \
../drivers/misc/cb710/core.c \
../drivers/misc/cb710/debug.c \
../drivers/misc/cb710/sgbuf2.c 

OBJS += \
./drivers/misc/cb710/core.o \
./drivers/misc/cb710/debug.o \
./drivers/misc/cb710/sgbuf2.o 

C_DEPS += \
./drivers/misc/cb710/core.d \
./drivers/misc/cb710/debug.d \
./drivers/misc/cb710/sgbuf2.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/misc/cb710/%.o: ../drivers/misc/cb710/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


