################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/sparc/amd7930.c \
../sound/sparc/cs4231.c \
../sound/sparc/dbri.c 

OBJS += \
./sound/sparc/amd7930.o \
./sound/sparc/cs4231.o \
./sound/sparc/dbri.o 

C_DEPS += \
./sound/sparc/amd7930.d \
./sound/sparc/cs4231.d \
./sound/sparc/dbri.d 


# Each subdirectory must supply rules for building sources it contributes
sound/sparc/%.o: ../sound/sparc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


