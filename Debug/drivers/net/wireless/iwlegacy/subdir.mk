################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/wireless/iwlegacy/3945-debug.c \
../drivers/net/wireless/iwlegacy/3945-mac.c \
../drivers/net/wireless/iwlegacy/3945-rs.c \
../drivers/net/wireless/iwlegacy/3945.c \
../drivers/net/wireless/iwlegacy/4965-calib.c \
../drivers/net/wireless/iwlegacy/4965-debug.c \
../drivers/net/wireless/iwlegacy/4965-mac.c \
../drivers/net/wireless/iwlegacy/4965-rs.c \
../drivers/net/wireless/iwlegacy/4965.c \
../drivers/net/wireless/iwlegacy/common.c \
../drivers/net/wireless/iwlegacy/debug.c 

OBJS += \
./drivers/net/wireless/iwlegacy/3945-debug.o \
./drivers/net/wireless/iwlegacy/3945-mac.o \
./drivers/net/wireless/iwlegacy/3945-rs.o \
./drivers/net/wireless/iwlegacy/3945.o \
./drivers/net/wireless/iwlegacy/4965-calib.o \
./drivers/net/wireless/iwlegacy/4965-debug.o \
./drivers/net/wireless/iwlegacy/4965-mac.o \
./drivers/net/wireless/iwlegacy/4965-rs.o \
./drivers/net/wireless/iwlegacy/4965.o \
./drivers/net/wireless/iwlegacy/common.o \
./drivers/net/wireless/iwlegacy/debug.o 

C_DEPS += \
./drivers/net/wireless/iwlegacy/3945-debug.d \
./drivers/net/wireless/iwlegacy/3945-mac.d \
./drivers/net/wireless/iwlegacy/3945-rs.d \
./drivers/net/wireless/iwlegacy/3945.d \
./drivers/net/wireless/iwlegacy/4965-calib.d \
./drivers/net/wireless/iwlegacy/4965-debug.d \
./drivers/net/wireless/iwlegacy/4965-mac.d \
./drivers/net/wireless/iwlegacy/4965-rs.d \
./drivers/net/wireless/iwlegacy/4965.d \
./drivers/net/wireless/iwlegacy/common.d \
./drivers/net/wireless/iwlegacy/debug.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/wireless/iwlegacy/%.o: ../drivers/net/wireless/iwlegacy/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


