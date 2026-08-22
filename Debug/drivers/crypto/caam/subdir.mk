################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/crypto/caam/caamalg.c \
../drivers/crypto/caam/ctrl.c \
../drivers/crypto/caam/error.c \
../drivers/crypto/caam/jr.c 

OBJS += \
./drivers/crypto/caam/caamalg.o \
./drivers/crypto/caam/ctrl.o \
./drivers/crypto/caam/error.o \
./drivers/crypto/caam/jr.o 

C_DEPS += \
./drivers/crypto/caam/caamalg.d \
./drivers/crypto/caam/ctrl.d \
./drivers/crypto/caam/error.d \
./drivers/crypto/caam/jr.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/crypto/caam/%.o: ../drivers/crypto/caam/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


