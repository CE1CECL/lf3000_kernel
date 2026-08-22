################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/i825xx/3c505.c \
../drivers/net/ethernet/i825xx/3c507.c \
../drivers/net/ethernet/i825xx/3c523.c \
../drivers/net/ethernet/i825xx/3c527.c \
../drivers/net/ethernet/i825xx/82596.c \
../drivers/net/ethernet/i825xx/eepro.c \
../drivers/net/ethernet/i825xx/eexpress.c \
../drivers/net/ethernet/i825xx/ether1.c \
../drivers/net/ethernet/i825xx/lasi_82596.c \
../drivers/net/ethernet/i825xx/lib82596.c \
../drivers/net/ethernet/i825xx/lp486e.c \
../drivers/net/ethernet/i825xx/ni52.c \
../drivers/net/ethernet/i825xx/sni_82596.c \
../drivers/net/ethernet/i825xx/sun3_82586.c \
../drivers/net/ethernet/i825xx/znet.c 

OBJS += \
./drivers/net/ethernet/i825xx/3c505.o \
./drivers/net/ethernet/i825xx/3c507.o \
./drivers/net/ethernet/i825xx/3c523.o \
./drivers/net/ethernet/i825xx/3c527.o \
./drivers/net/ethernet/i825xx/82596.o \
./drivers/net/ethernet/i825xx/eepro.o \
./drivers/net/ethernet/i825xx/eexpress.o \
./drivers/net/ethernet/i825xx/ether1.o \
./drivers/net/ethernet/i825xx/lasi_82596.o \
./drivers/net/ethernet/i825xx/lib82596.o \
./drivers/net/ethernet/i825xx/lp486e.o \
./drivers/net/ethernet/i825xx/ni52.o \
./drivers/net/ethernet/i825xx/sni_82596.o \
./drivers/net/ethernet/i825xx/sun3_82586.o \
./drivers/net/ethernet/i825xx/znet.o 

C_DEPS += \
./drivers/net/ethernet/i825xx/3c505.d \
./drivers/net/ethernet/i825xx/3c507.d \
./drivers/net/ethernet/i825xx/3c523.d \
./drivers/net/ethernet/i825xx/3c527.d \
./drivers/net/ethernet/i825xx/82596.d \
./drivers/net/ethernet/i825xx/eepro.d \
./drivers/net/ethernet/i825xx/eexpress.d \
./drivers/net/ethernet/i825xx/ether1.d \
./drivers/net/ethernet/i825xx/lasi_82596.d \
./drivers/net/ethernet/i825xx/lib82596.d \
./drivers/net/ethernet/i825xx/lp486e.d \
./drivers/net/ethernet/i825xx/ni52.d \
./drivers/net/ethernet/i825xx/sni_82596.d \
./drivers/net/ethernet/i825xx/sun3_82586.d \
./drivers/net/ethernet/i825xx/znet.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/i825xx/%.o: ../drivers/net/ethernet/i825xx/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


