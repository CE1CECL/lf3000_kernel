################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../net/802/built-in.o 

C_SRCS += \
../net/802/fc.c \
../net/802/fddi.c \
../net/802/garp.c \
../net/802/hippi.c \
../net/802/p8022.c \
../net/802/p8023.c \
../net/802/psnap.c \
../net/802/stp.c \
../net/802/tr.c 

OBJS += \
./net/802/fc.o \
./net/802/fddi.o \
./net/802/garp.o \
./net/802/hippi.o \
./net/802/p8022.o \
./net/802/p8023.o \
./net/802/psnap.o \
./net/802/stp.o \
./net/802/tr.o 

C_DEPS += \
./net/802/fc.d \
./net/802/fddi.d \
./net/802/garp.d \
./net/802/hippi.d \
./net/802/p8022.d \
./net/802/p8023.d \
./net/802/psnap.d \
./net/802/stp.d \
./net/802/tr.d 


# Each subdirectory must supply rules for building sources it contributes
net/802/%.o: ../net/802/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


