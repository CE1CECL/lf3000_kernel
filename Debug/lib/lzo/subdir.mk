################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../lib/lzo/built-in.o \
../lib/lzo/lzo1x_compress.o \
../lib/lzo/lzo1x_decompress.o \
../lib/lzo/lzo_compress.o \
../lib/lzo/lzo_decompress.o 

C_SRCS += \
../lib/lzo/lzo1x_compress.c \
../lib/lzo/lzo1x_decompress.c 

OBJS += \
./lib/lzo/lzo1x_compress.o \
./lib/lzo/lzo1x_decompress.o 

C_DEPS += \
./lib/lzo/lzo1x_compress.d \
./lib/lzo/lzo1x_decompress.d 


# Each subdirectory must supply rules for building sources it contributes
lib/lzo/%.o: ../lib/lzo/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


