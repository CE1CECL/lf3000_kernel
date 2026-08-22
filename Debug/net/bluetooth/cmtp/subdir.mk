################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/bluetooth/cmtp/capi.c \
../net/bluetooth/cmtp/core.c \
../net/bluetooth/cmtp/sock.c 

OBJS += \
./net/bluetooth/cmtp/capi.o \
./net/bluetooth/cmtp/core.o \
./net/bluetooth/cmtp/sock.o 

C_DEPS += \
./net/bluetooth/cmtp/capi.d \
./net/bluetooth/cmtp/core.d \
./net/bluetooth/cmtp/sock.d 


# Each subdirectory must supply rules for building sources it contributes
net/bluetooth/cmtp/%.o: ../net/bluetooth/cmtp/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


