################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/soc/kirkwood/kirkwood-dma.c \
../sound/soc/kirkwood/kirkwood-i2s.c \
../sound/soc/kirkwood/kirkwood-openrd.c \
../sound/soc/kirkwood/kirkwood-t5325.c 

OBJS += \
./sound/soc/kirkwood/kirkwood-dma.o \
./sound/soc/kirkwood/kirkwood-i2s.o \
./sound/soc/kirkwood/kirkwood-openrd.o \
./sound/soc/kirkwood/kirkwood-t5325.o 

C_DEPS += \
./sound/soc/kirkwood/kirkwood-dma.d \
./sound/soc/kirkwood/kirkwood-i2s.d \
./sound/soc/kirkwood/kirkwood-openrd.d \
./sound/soc/kirkwood/kirkwood-t5325.d 


# Each subdirectory must supply rules for building sources it contributes
sound/soc/kirkwood/%.o: ../sound/soc/kirkwood/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


