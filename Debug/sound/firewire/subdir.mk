################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/firewire/amdtp.c \
../sound/firewire/cmp.c \
../sound/firewire/fcp.c \
../sound/firewire/isight.c \
../sound/firewire/iso-resources.c \
../sound/firewire/lib.c \
../sound/firewire/packets-buffer.c \
../sound/firewire/speakers.c 

OBJS += \
./sound/firewire/amdtp.o \
./sound/firewire/cmp.o \
./sound/firewire/fcp.o \
./sound/firewire/isight.o \
./sound/firewire/iso-resources.o \
./sound/firewire/lib.o \
./sound/firewire/packets-buffer.o \
./sound/firewire/speakers.o 

C_DEPS += \
./sound/firewire/amdtp.d \
./sound/firewire/cmp.d \
./sound/firewire/fcp.d \
./sound/firewire/isight.d \
./sound/firewire/iso-resources.d \
./sound/firewire/lib.d \
./sound/firewire/packets-buffer.d \
./sound/firewire/speakers.d 


# Each subdirectory must supply rules for building sources it contributes
sound/firewire/%.o: ../sound/firewire/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


