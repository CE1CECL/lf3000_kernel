################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/soc/jz4740/jz4740-i2s.c \
../sound/soc/jz4740/jz4740-pcm.c \
../sound/soc/jz4740/qi_lb60.c 

OBJS += \
./sound/soc/jz4740/jz4740-i2s.o \
./sound/soc/jz4740/jz4740-pcm.o \
./sound/soc/jz4740/qi_lb60.o 

C_DEPS += \
./sound/soc/jz4740/jz4740-i2s.d \
./sound/soc/jz4740/jz4740-pcm.d \
./sound/soc/jz4740/qi_lb60.d 


# Each subdirectory must supply rules for building sources it contributes
sound/soc/jz4740/%.o: ../sound/soc/jz4740/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


