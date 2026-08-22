################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/mips/ad1843.c \
../sound/mips/au1x00.c \
../sound/mips/hal2.c \
../sound/mips/sgio2audio.c 

OBJS += \
./sound/mips/ad1843.o \
./sound/mips/au1x00.o \
./sound/mips/hal2.o \
./sound/mips/sgio2audio.o 

C_DEPS += \
./sound/mips/ad1843.d \
./sound/mips/au1x00.d \
./sound/mips/hal2.d \
./sound/mips/sgio2audio.d 


# Each subdirectory must supply rules for building sources it contributes
sound/mips/%.o: ../sound/mips/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


