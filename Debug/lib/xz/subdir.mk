################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../lib/xz/built-in.o \
../lib/xz/xz_dec.o \
../lib/xz/xz_dec_lzma2.o \
../lib/xz/xz_dec_stream.o \
../lib/xz/xz_dec_syms.o 

C_SRCS += \
../lib/xz/xz_crc32.c \
../lib/xz/xz_dec_bcj.c \
../lib/xz/xz_dec_lzma2.c \
../lib/xz/xz_dec_stream.c \
../lib/xz/xz_dec_syms.c \
../lib/xz/xz_dec_test.c 

OBJS += \
./lib/xz/xz_crc32.o \
./lib/xz/xz_dec_bcj.o \
./lib/xz/xz_dec_lzma2.o \
./lib/xz/xz_dec_stream.o \
./lib/xz/xz_dec_syms.o \
./lib/xz/xz_dec_test.o 

C_DEPS += \
./lib/xz/xz_crc32.d \
./lib/xz/xz_dec_bcj.d \
./lib/xz/xz_dec_lzma2.d \
./lib/xz/xz_dec_stream.d \
./lib/xz/xz_dec_syms.d \
./lib/xz/xz_dec_test.d 


# Each subdirectory must supply rules for building sources it contributes
lib/xz/%.o: ../lib/xz/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


