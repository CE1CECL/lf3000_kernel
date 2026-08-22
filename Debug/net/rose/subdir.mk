################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/rose/af_rose.c \
../net/rose/rose_dev.c \
../net/rose/rose_in.c \
../net/rose/rose_link.c \
../net/rose/rose_loopback.c \
../net/rose/rose_out.c \
../net/rose/rose_route.c \
../net/rose/rose_subr.c \
../net/rose/rose_timer.c \
../net/rose/sysctl_net_rose.c 

OBJS += \
./net/rose/af_rose.o \
./net/rose/rose_dev.o \
./net/rose/rose_in.o \
./net/rose/rose_link.o \
./net/rose/rose_loopback.o \
./net/rose/rose_out.o \
./net/rose/rose_route.o \
./net/rose/rose_subr.o \
./net/rose/rose_timer.o \
./net/rose/sysctl_net_rose.o 

C_DEPS += \
./net/rose/af_rose.d \
./net/rose/rose_dev.d \
./net/rose/rose_in.d \
./net/rose/rose_link.d \
./net/rose/rose_loopback.d \
./net/rose/rose_out.d \
./net/rose/rose_route.d \
./net/rose/rose_subr.d \
./net/rose/rose_timer.d \
./net/rose/sysctl_net_rose.d 


# Each subdirectory must supply rules for building sources it contributes
net/rose/%.o: ../net/rose/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


