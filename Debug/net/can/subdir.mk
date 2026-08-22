################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/can/af_can.c \
../net/can/bcm.c \
../net/can/gw.c \
../net/can/proc.c \
../net/can/raw.c 

OBJS += \
./net/can/af_can.o \
./net/can/bcm.o \
./net/can/gw.o \
./net/can/proc.o \
./net/can/raw.o 

C_DEPS += \
./net/can/af_can.d \
./net/can/bcm.d \
./net/can/gw.d \
./net/can/proc.d \
./net/can/raw.d 


# Each subdirectory must supply rules for building sources it contributes
net/can/%.o: ../net/can/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


