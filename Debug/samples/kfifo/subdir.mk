################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../samples/kfifo/bytestream-example.c \
../samples/kfifo/dma-example.c \
../samples/kfifo/inttype-example.c \
../samples/kfifo/record-example.c 

OBJS += \
./samples/kfifo/bytestream-example.o \
./samples/kfifo/dma-example.o \
./samples/kfifo/inttype-example.o \
./samples/kfifo/record-example.o 

C_DEPS += \
./samples/kfifo/bytestream-example.d \
./samples/kfifo/dma-example.d \
./samples/kfifo/inttype-example.d \
./samples/kfifo/record-example.d 


# Each subdirectory must supply rules for building sources it contributes
samples/kfifo/%.o: ../samples/kfifo/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


