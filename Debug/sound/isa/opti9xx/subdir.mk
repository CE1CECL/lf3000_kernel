################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/isa/opti9xx/miro.c \
../sound/isa/opti9xx/opti92x-ad1848.c \
../sound/isa/opti9xx/opti92x-cs4231.c \
../sound/isa/opti9xx/opti93x.c 

OBJS += \
./sound/isa/opti9xx/miro.o \
./sound/isa/opti9xx/opti92x-ad1848.o \
./sound/isa/opti9xx/opti92x-cs4231.o \
./sound/isa/opti9xx/opti93x.o 

C_DEPS += \
./sound/isa/opti9xx/miro.d \
./sound/isa/opti9xx/opti92x-ad1848.d \
./sound/isa/opti9xx/opti92x-cs4231.d \
./sound/isa/opti9xx/opti93x.d 


# Each subdirectory must supply rules for building sources it contributes
sound/isa/opti9xx/%.o: ../sound/isa/opti9xx/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


