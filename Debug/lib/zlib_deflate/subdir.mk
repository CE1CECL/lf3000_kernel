################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../lib/zlib_deflate/built-in.o \
../lib/zlib_deflate/deflate.o \
../lib/zlib_deflate/deflate_syms.o \
../lib/zlib_deflate/deftree.o \
../lib/zlib_deflate/zlib_deflate.o 

C_SRCS += \
../lib/zlib_deflate/deflate.c \
../lib/zlib_deflate/deflate_syms.c \
../lib/zlib_deflate/deftree.c 

OBJS += \
./lib/zlib_deflate/deflate.o \
./lib/zlib_deflate/deflate_syms.o \
./lib/zlib_deflate/deftree.o 

C_DEPS += \
./lib/zlib_deflate/deflate.d \
./lib/zlib_deflate/deflate_syms.d \
./lib/zlib_deflate/deftree.d 


# Each subdirectory must supply rules for building sources it contributes
lib/zlib_deflate/%.o: ../lib/zlib_deflate/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


