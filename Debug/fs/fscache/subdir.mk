################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fs/fscache/cache.c \
../fs/fscache/cookie.c \
../fs/fscache/fsdef.c \
../fs/fscache/histogram.c \
../fs/fscache/main.c \
../fs/fscache/netfs.c \
../fs/fscache/object-list.c \
../fs/fscache/object.c \
../fs/fscache/operation.c \
../fs/fscache/page.c \
../fs/fscache/proc.c \
../fs/fscache/stats.c 

OBJS += \
./fs/fscache/cache.o \
./fs/fscache/cookie.o \
./fs/fscache/fsdef.o \
./fs/fscache/histogram.o \
./fs/fscache/main.o \
./fs/fscache/netfs.o \
./fs/fscache/object-list.o \
./fs/fscache/object.o \
./fs/fscache/operation.o \
./fs/fscache/page.o \
./fs/fscache/proc.o \
./fs/fscache/stats.o 

C_DEPS += \
./fs/fscache/cache.d \
./fs/fscache/cookie.d \
./fs/fscache/fsdef.d \
./fs/fscache/histogram.d \
./fs/fscache/main.d \
./fs/fscache/netfs.d \
./fs/fscache/object-list.d \
./fs/fscache/object.d \
./fs/fscache/operation.d \
./fs/fscache/page.d \
./fs/fscache/proc.d \
./fs/fscache/stats.d 


# Each subdirectory must supply rules for building sources it contributes
fs/fscache/%.o: ../fs/fscache/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


