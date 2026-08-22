################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../net/unix/af_unix.o \
../net/unix/built-in.o \
../net/unix/garbage.o \
../net/unix/sysctl_net_unix.o \
../net/unix/unix.o 

C_SRCS += \
../net/unix/af_unix.c \
../net/unix/diag.c \
../net/unix/garbage.c \
../net/unix/sysctl_net_unix.c 

OBJS += \
./net/unix/af_unix.o \
./net/unix/diag.o \
./net/unix/garbage.o \
./net/unix/sysctl_net_unix.o 

C_DEPS += \
./net/unix/af_unix.d \
./net/unix/diag.d \
./net/unix/garbage.d \
./net/unix/sysctl_net_unix.d 


# Each subdirectory must supply rules for building sources it contributes
net/unix/%.o: ../net/unix/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


