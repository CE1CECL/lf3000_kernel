################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../net/built-in.o \
../net/socket.o \
../net/sysctl_net.o 

C_SRCS += \
../net/activity_stats.c \
../net/compat.c \
../net/nonet.c \
../net/socket.c \
../net/sysctl_net.c 

OBJS += \
./net/activity_stats.o \
./net/compat.o \
./net/nonet.o \
./net/socket.o \
./net/sysctl_net.o 

C_DEPS += \
./net/activity_stats.d \
./net/compat.d \
./net/nonet.d \
./net/socket.d \
./net/sysctl_net.d 


# Each subdirectory must supply rules for building sources it contributes
net/%.o: ../net/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


