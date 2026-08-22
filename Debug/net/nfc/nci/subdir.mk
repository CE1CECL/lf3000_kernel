################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/nfc/nci/core.c \
../net/nfc/nci/data.c \
../net/nfc/nci/lib.c \
../net/nfc/nci/ntf.c \
../net/nfc/nci/rsp.c 

OBJS += \
./net/nfc/nci/core.o \
./net/nfc/nci/data.o \
./net/nfc/nci/lib.o \
./net/nfc/nci/ntf.o \
./net/nfc/nci/rsp.o 

C_DEPS += \
./net/nfc/nci/core.d \
./net/nfc/nci/data.d \
./net/nfc/nci/lib.d \
./net/nfc/nci/ntf.d \
./net/nfc/nci/rsp.d 


# Each subdirectory must supply rules for building sources it contributes
net/nfc/nci/%.o: ../net/nfc/nci/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


