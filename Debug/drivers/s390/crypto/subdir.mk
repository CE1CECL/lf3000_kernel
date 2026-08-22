################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/s390/crypto/ap_bus.c \
../drivers/s390/crypto/zcrypt_api.c \
../drivers/s390/crypto/zcrypt_cex2a.c \
../drivers/s390/crypto/zcrypt_pcica.c \
../drivers/s390/crypto/zcrypt_pcicc.c \
../drivers/s390/crypto/zcrypt_pcixcc.c 

OBJS += \
./drivers/s390/crypto/ap_bus.o \
./drivers/s390/crypto/zcrypt_api.o \
./drivers/s390/crypto/zcrypt_cex2a.o \
./drivers/s390/crypto/zcrypt_pcica.o \
./drivers/s390/crypto/zcrypt_pcicc.o \
./drivers/s390/crypto/zcrypt_pcixcc.o 

C_DEPS += \
./drivers/s390/crypto/ap_bus.d \
./drivers/s390/crypto/zcrypt_api.d \
./drivers/s390/crypto/zcrypt_cex2a.d \
./drivers/s390/crypto/zcrypt_pcica.d \
./drivers/s390/crypto/zcrypt_pcicc.d \
./drivers/s390/crypto/zcrypt_pcixcc.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/s390/crypto/%.o: ../drivers/s390/crypto/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


