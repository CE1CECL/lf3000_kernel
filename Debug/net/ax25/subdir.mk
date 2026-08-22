################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/ax25/af_ax25.c \
../net/ax25/ax25_addr.c \
../net/ax25/ax25_dev.c \
../net/ax25/ax25_ds_in.c \
../net/ax25/ax25_ds_subr.c \
../net/ax25/ax25_ds_timer.c \
../net/ax25/ax25_iface.c \
../net/ax25/ax25_in.c \
../net/ax25/ax25_ip.c \
../net/ax25/ax25_out.c \
../net/ax25/ax25_route.c \
../net/ax25/ax25_std_in.c \
../net/ax25/ax25_std_subr.c \
../net/ax25/ax25_std_timer.c \
../net/ax25/ax25_subr.c \
../net/ax25/ax25_timer.c \
../net/ax25/ax25_uid.c \
../net/ax25/sysctl_net_ax25.c 

OBJS += \
./net/ax25/af_ax25.o \
./net/ax25/ax25_addr.o \
./net/ax25/ax25_dev.o \
./net/ax25/ax25_ds_in.o \
./net/ax25/ax25_ds_subr.o \
./net/ax25/ax25_ds_timer.o \
./net/ax25/ax25_iface.o \
./net/ax25/ax25_in.o \
./net/ax25/ax25_ip.o \
./net/ax25/ax25_out.o \
./net/ax25/ax25_route.o \
./net/ax25/ax25_std_in.o \
./net/ax25/ax25_std_subr.o \
./net/ax25/ax25_std_timer.o \
./net/ax25/ax25_subr.o \
./net/ax25/ax25_timer.o \
./net/ax25/ax25_uid.o \
./net/ax25/sysctl_net_ax25.o 

C_DEPS += \
./net/ax25/af_ax25.d \
./net/ax25/ax25_addr.d \
./net/ax25/ax25_dev.d \
./net/ax25/ax25_ds_in.d \
./net/ax25/ax25_ds_subr.d \
./net/ax25/ax25_ds_timer.d \
./net/ax25/ax25_iface.d \
./net/ax25/ax25_in.d \
./net/ax25/ax25_ip.d \
./net/ax25/ax25_out.d \
./net/ax25/ax25_route.d \
./net/ax25/ax25_std_in.d \
./net/ax25/ax25_std_subr.d \
./net/ax25/ax25_std_timer.d \
./net/ax25/ax25_subr.d \
./net/ax25/ax25_timer.d \
./net/ax25/ax25_uid.d \
./net/ax25/sysctl_net_ax25.d 


# Each subdirectory must supply rules for building sources it contributes
net/ax25/%.o: ../net/ax25/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


