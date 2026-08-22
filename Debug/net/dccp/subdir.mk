################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/dccp/ackvec.c \
../net/dccp/ccid.c \
../net/dccp/diag.c \
../net/dccp/feat.c \
../net/dccp/input.c \
../net/dccp/ipv4.c \
../net/dccp/ipv6.c \
../net/dccp/minisocks.c \
../net/dccp/options.c \
../net/dccp/output.c \
../net/dccp/probe.c \
../net/dccp/proto.c \
../net/dccp/qpolicy.c \
../net/dccp/sysctl.c \
../net/dccp/timer.c 

OBJS += \
./net/dccp/ackvec.o \
./net/dccp/ccid.o \
./net/dccp/diag.o \
./net/dccp/feat.o \
./net/dccp/input.o \
./net/dccp/ipv4.o \
./net/dccp/ipv6.o \
./net/dccp/minisocks.o \
./net/dccp/options.o \
./net/dccp/output.o \
./net/dccp/probe.o \
./net/dccp/proto.o \
./net/dccp/qpolicy.o \
./net/dccp/sysctl.o \
./net/dccp/timer.o 

C_DEPS += \
./net/dccp/ackvec.d \
./net/dccp/ccid.d \
./net/dccp/diag.d \
./net/dccp/feat.d \
./net/dccp/input.d \
./net/dccp/ipv4.d \
./net/dccp/ipv6.d \
./net/dccp/minisocks.d \
./net/dccp/options.d \
./net/dccp/output.d \
./net/dccp/probe.d \
./net/dccp/proto.d \
./net/dccp/qpolicy.d \
./net/dccp/sysctl.d \
./net/dccp/timer.d 


# Each subdirectory must supply rules for building sources it contributes
net/dccp/%.o: ../net/dccp/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


