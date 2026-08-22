################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../net/dns_resolver/built-in.o \
../net/dns_resolver/dns_key.o \
../net/dns_resolver/dns_query.o \
../net/dns_resolver/dns_resolver.o 

C_SRCS += \
../net/dns_resolver/dns_key.c \
../net/dns_resolver/dns_query.c 

OBJS += \
./net/dns_resolver/dns_key.o \
./net/dns_resolver/dns_query.o 

C_DEPS += \
./net/dns_resolver/dns_key.d \
./net/dns_resolver/dns_query.d 


# Each subdirectory must supply rules for building sources it contributes
net/dns_resolver/%.o: ../net/dns_resolver/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


