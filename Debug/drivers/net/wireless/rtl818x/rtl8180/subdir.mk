################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/wireless/rtl818x/rtl8180/dev.c \
../drivers/net/wireless/rtl818x/rtl8180/grf5101.c \
../drivers/net/wireless/rtl818x/rtl8180/max2820.c \
../drivers/net/wireless/rtl818x/rtl8180/rtl8225.c \
../drivers/net/wireless/rtl818x/rtl8180/sa2400.c 

OBJS += \
./drivers/net/wireless/rtl818x/rtl8180/dev.o \
./drivers/net/wireless/rtl818x/rtl8180/grf5101.o \
./drivers/net/wireless/rtl818x/rtl8180/max2820.o \
./drivers/net/wireless/rtl818x/rtl8180/rtl8225.o \
./drivers/net/wireless/rtl818x/rtl8180/sa2400.o 

C_DEPS += \
./drivers/net/wireless/rtl818x/rtl8180/dev.d \
./drivers/net/wireless/rtl818x/rtl8180/grf5101.d \
./drivers/net/wireless/rtl818x/rtl8180/max2820.d \
./drivers/net/wireless/rtl818x/rtl8180/rtl8225.d \
./drivers/net/wireless/rtl818x/rtl8180/sa2400.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/wireless/rtl818x/rtl8180/%.o: ../drivers/net/wireless/rtl818x/rtl8180/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


