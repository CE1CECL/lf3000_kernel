################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/raid6/algos.c \
../lib/raid6/mktables.c \
../lib/raid6/mmx.c \
../lib/raid6/recov.c \
../lib/raid6/sse1.c \
../lib/raid6/sse2.c 

OBJS += \
./lib/raid6/algos.o \
./lib/raid6/mktables.o \
./lib/raid6/mmx.o \
./lib/raid6/recov.o \
./lib/raid6/sse1.o \
./lib/raid6/sse2.o 

C_DEPS += \
./lib/raid6/algos.d \
./lib/raid6/mktables.d \
./lib/raid6/mmx.d \
./lib/raid6/recov.d \
./lib/raid6/sse1.d \
./lib/raid6/sse2.d 


# Each subdirectory must supply rules for building sources it contributes
lib/raid6/%.o: ../lib/raid6/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


