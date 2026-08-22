################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../lib/zlib_inflate/built-in.o \
../lib/zlib_inflate/inffast.o \
../lib/zlib_inflate/inflate.o \
../lib/zlib_inflate/inflate_syms.o \
../lib/zlib_inflate/inftrees.o \
../lib/zlib_inflate/infutil.o \
../lib/zlib_inflate/zlib_inflate.o 

C_SRCS += \
../lib/zlib_inflate/inffast.c \
../lib/zlib_inflate/inflate.c \
../lib/zlib_inflate/inflate_syms.c \
../lib/zlib_inflate/inftrees.c \
../lib/zlib_inflate/infutil.c 

OBJS += \
./lib/zlib_inflate/inffast.o \
./lib/zlib_inflate/inflate.o \
./lib/zlib_inflate/inflate_syms.o \
./lib/zlib_inflate/inftrees.o \
./lib/zlib_inflate/infutil.o 

C_DEPS += \
./lib/zlib_inflate/inffast.d \
./lib/zlib_inflate/inflate.d \
./lib/zlib_inflate/inflate_syms.d \
./lib/zlib_inflate/inftrees.d \
./lib/zlib_inflate/infutil.d 


# Each subdirectory must supply rules for building sources it contributes
lib/zlib_inflate/%.o: ../lib/zlib_inflate/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


