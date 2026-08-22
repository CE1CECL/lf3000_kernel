################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/dccp/ccids/lib/loss_interval.c \
../net/dccp/ccids/lib/packet_history.c \
../net/dccp/ccids/lib/tfrc.c \
../net/dccp/ccids/lib/tfrc_equation.c 

OBJS += \
./net/dccp/ccids/lib/loss_interval.o \
./net/dccp/ccids/lib/packet_history.o \
./net/dccp/ccids/lib/tfrc.o \
./net/dccp/ccids/lib/tfrc_equation.o 

C_DEPS += \
./net/dccp/ccids/lib/loss_interval.d \
./net/dccp/ccids/lib/packet_history.d \
./net/dccp/ccids/lib/tfrc.d \
./net/dccp/ccids/lib/tfrc_equation.d 


# Each subdirectory must supply rules for building sources it contributes
net/dccp/ccids/lib/%.o: ../net/dccp/ccids/lib/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


