################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/wimax/debugfs.c \
../net/wimax/id-table.c \
../net/wimax/op-msg.c \
../net/wimax/op-reset.c \
../net/wimax/op-rfkill.c \
../net/wimax/op-state-get.c \
../net/wimax/stack.c 

OBJS += \
./net/wimax/debugfs.o \
./net/wimax/id-table.o \
./net/wimax/op-msg.o \
./net/wimax/op-reset.o \
./net/wimax/op-rfkill.o \
./net/wimax/op-state-get.o \
./net/wimax/stack.o 

C_DEPS += \
./net/wimax/debugfs.d \
./net/wimax/id-table.d \
./net/wimax/op-msg.d \
./net/wimax/op-reset.d \
./net/wimax/op-rfkill.d \
./net/wimax/op-state-get.d \
./net/wimax/stack.d 


# Each subdirectory must supply rules for building sources it contributes
net/wimax/%.o: ../net/wimax/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


