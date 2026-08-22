################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/lapb/lapb_iface.c \
../net/lapb/lapb_in.c \
../net/lapb/lapb_out.c \
../net/lapb/lapb_subr.c \
../net/lapb/lapb_timer.c 

OBJS += \
./net/lapb/lapb_iface.o \
./net/lapb/lapb_in.o \
./net/lapb/lapb_out.o \
./net/lapb/lapb_subr.o \
./net/lapb/lapb_timer.o 

C_DEPS += \
./net/lapb/lapb_iface.d \
./net/lapb/lapb_in.d \
./net/lapb/lapb_out.d \
./net/lapb/lapb_subr.d \
./net/lapb/lapb_timer.d 


# Each subdirectory must supply rules for building sources it contributes
net/lapb/%.o: ../net/lapb/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


