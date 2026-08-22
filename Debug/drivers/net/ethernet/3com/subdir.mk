################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/3com/3c501.c \
../drivers/net/ethernet/3com/3c509.c \
../drivers/net/ethernet/3com/3c515.c \
../drivers/net/ethernet/3com/3c574_cs.c \
../drivers/net/ethernet/3com/3c589_cs.c \
../drivers/net/ethernet/3com/3c59x.c \
../drivers/net/ethernet/3com/typhoon.c 

OBJS += \
./drivers/net/ethernet/3com/3c501.o \
./drivers/net/ethernet/3com/3c509.o \
./drivers/net/ethernet/3com/3c515.o \
./drivers/net/ethernet/3com/3c574_cs.o \
./drivers/net/ethernet/3com/3c589_cs.o \
./drivers/net/ethernet/3com/3c59x.o \
./drivers/net/ethernet/3com/typhoon.o 

C_DEPS += \
./drivers/net/ethernet/3com/3c501.d \
./drivers/net/ethernet/3com/3c509.d \
./drivers/net/ethernet/3com/3c515.d \
./drivers/net/ethernet/3com/3c574_cs.d \
./drivers/net/ethernet/3com/3c589_cs.d \
./drivers/net/ethernet/3com/3c59x.d \
./drivers/net/ethernet/3com/typhoon.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/3com/%.o: ../drivers/net/ethernet/3com/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


