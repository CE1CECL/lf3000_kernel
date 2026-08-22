################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../security/integrity/evm/evm_crypto.c \
../security/integrity/evm/evm_main.c \
../security/integrity/evm/evm_posix_acl.c \
../security/integrity/evm/evm_secfs.c 

OBJS += \
./security/integrity/evm/evm_crypto.o \
./security/integrity/evm/evm_main.o \
./security/integrity/evm/evm_posix_acl.o \
./security/integrity/evm/evm_secfs.o 

C_DEPS += \
./security/integrity/evm/evm_crypto.d \
./security/integrity/evm/evm_main.d \
./security/integrity/evm/evm_posix_acl.d \
./security/integrity/evm/evm_secfs.d 


# Each subdirectory must supply rules for building sources it contributes
security/integrity/evm/%.o: ../security/integrity/evm/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


