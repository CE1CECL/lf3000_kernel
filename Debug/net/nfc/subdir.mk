################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/nfc/af_nfc.c \
../net/nfc/core.c \
../net/nfc/netlink.c \
../net/nfc/rawsock.c 

OBJS += \
./net/nfc/af_nfc.o \
./net/nfc/core.o \
./net/nfc/netlink.o \
./net/nfc/rawsock.o 

C_DEPS += \
./net/nfc/af_nfc.d \
./net/nfc/core.d \
./net/nfc/netlink.d \
./net/nfc/rawsock.d 


# Each subdirectory must supply rules for building sources it contributes
net/nfc/%.o: ../net/nfc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


