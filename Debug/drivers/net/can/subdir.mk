################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/can/at91_can.c \
../drivers/net/can/bfin_can.c \
../drivers/net/can/dev.c \
../drivers/net/can/flexcan.c \
../drivers/net/can/janz-ican3.c \
../drivers/net/can/mcp251x.c \
../drivers/net/can/pch_can.c \
../drivers/net/can/slcan.c \
../drivers/net/can/ti_hecc.c \
../drivers/net/can/vcan.c 

OBJS += \
./drivers/net/can/at91_can.o \
./drivers/net/can/bfin_can.o \
./drivers/net/can/dev.o \
./drivers/net/can/flexcan.o \
./drivers/net/can/janz-ican3.o \
./drivers/net/can/mcp251x.o \
./drivers/net/can/pch_can.o \
./drivers/net/can/slcan.o \
./drivers/net/can/ti_hecc.o \
./drivers/net/can/vcan.o 

C_DEPS += \
./drivers/net/can/at91_can.d \
./drivers/net/can/bfin_can.d \
./drivers/net/can/dev.d \
./drivers/net/can/flexcan.d \
./drivers/net/can/janz-ican3.d \
./drivers/net/can/mcp251x.d \
./drivers/net/can/pch_can.d \
./drivers/net/can/slcan.d \
./drivers/net/can/ti_hecc.d \
./drivers/net/can/vcan.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/can/%.o: ../drivers/net/can/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


