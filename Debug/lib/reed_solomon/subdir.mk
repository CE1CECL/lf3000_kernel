################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/reed_solomon/decode_rs.c \
../lib/reed_solomon/encode_rs.c \
../lib/reed_solomon/reed_solomon.c 

OBJS += \
./lib/reed_solomon/decode_rs.o \
./lib/reed_solomon/encode_rs.o \
./lib/reed_solomon/reed_solomon.o 

C_DEPS += \
./lib/reed_solomon/decode_rs.d \
./lib/reed_solomon/encode_rs.d \
./lib/reed_solomon/reed_solomon.d 


# Each subdirectory must supply rules for building sources it contributes
lib/reed_solomon/%.o: ../lib/reed_solomon/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


