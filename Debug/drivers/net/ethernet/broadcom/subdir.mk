################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/broadcom/b44.c \
../drivers/net/ethernet/broadcom/bcm63xx_enet.c \
../drivers/net/ethernet/broadcom/bnx2.c \
../drivers/net/ethernet/broadcom/cnic.c \
../drivers/net/ethernet/broadcom/sb1250-mac.c \
../drivers/net/ethernet/broadcom/tg3.c 

OBJS += \
./drivers/net/ethernet/broadcom/b44.o \
./drivers/net/ethernet/broadcom/bcm63xx_enet.o \
./drivers/net/ethernet/broadcom/bnx2.o \
./drivers/net/ethernet/broadcom/cnic.o \
./drivers/net/ethernet/broadcom/sb1250-mac.o \
./drivers/net/ethernet/broadcom/tg3.o 

C_DEPS += \
./drivers/net/ethernet/broadcom/b44.d \
./drivers/net/ethernet/broadcom/bcm63xx_enet.d \
./drivers/net/ethernet/broadcom/bnx2.d \
./drivers/net/ethernet/broadcom/cnic.d \
./drivers/net/ethernet/broadcom/sb1250-mac.d \
./drivers/net/ethernet/broadcom/tg3.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/broadcom/%.o: ../drivers/net/ethernet/broadcom/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


