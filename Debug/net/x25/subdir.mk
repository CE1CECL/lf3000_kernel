################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/x25/af_x25.c \
../net/x25/sysctl_net_x25.c \
../net/x25/x25_dev.c \
../net/x25/x25_facilities.c \
../net/x25/x25_forward.c \
../net/x25/x25_in.c \
../net/x25/x25_link.c \
../net/x25/x25_out.c \
../net/x25/x25_proc.c \
../net/x25/x25_route.c \
../net/x25/x25_subr.c \
../net/x25/x25_timer.c 

OBJS += \
./net/x25/af_x25.o \
./net/x25/sysctl_net_x25.o \
./net/x25/x25_dev.o \
./net/x25/x25_facilities.o \
./net/x25/x25_forward.o \
./net/x25/x25_in.o \
./net/x25/x25_link.o \
./net/x25/x25_out.o \
./net/x25/x25_proc.o \
./net/x25/x25_route.o \
./net/x25/x25_subr.o \
./net/x25/x25_timer.o 

C_DEPS += \
./net/x25/af_x25.d \
./net/x25/sysctl_net_x25.d \
./net/x25/x25_dev.d \
./net/x25/x25_facilities.d \
./net/x25/x25_forward.d \
./net/x25/x25_in.d \
./net/x25/x25_link.d \
./net/x25/x25_out.d \
./net/x25/x25_proc.d \
./net/x25/x25_route.d \
./net/x25/x25_subr.d \
./net/x25/x25_timer.d 


# Each subdirectory must supply rules for building sources it contributes
net/x25/%.o: ../net/x25/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


