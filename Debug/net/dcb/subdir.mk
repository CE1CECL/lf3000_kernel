################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/dcb/dcbevent.c \
../net/dcb/dcbnl.c 

OBJS += \
./net/dcb/dcbevent.o \
./net/dcb/dcbnl.o 

C_DEPS += \
./net/dcb/dcbevent.d \
./net/dcb/dcbnl.d 


# Each subdirectory must supply rules for building sources it contributes
net/dcb/%.o: ../net/dcb/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


