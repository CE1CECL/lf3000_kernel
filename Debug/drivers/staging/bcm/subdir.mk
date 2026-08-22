################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/bcm/Bcmchar.c \
../drivers/staging/bcm/Bcmnet.c \
../drivers/staging/bcm/CmHost.c \
../drivers/staging/bcm/DDRInit.c \
../drivers/staging/bcm/HandleControlPacket.c \
../drivers/staging/bcm/IPv6Protocol.c \
../drivers/staging/bcm/InterfaceDld.c \
../drivers/staging/bcm/InterfaceIdleMode.c \
../drivers/staging/bcm/InterfaceInit.c \
../drivers/staging/bcm/InterfaceIsr.c \
../drivers/staging/bcm/InterfaceMisc.c \
../drivers/staging/bcm/InterfaceRx.c \
../drivers/staging/bcm/InterfaceTx.c \
../drivers/staging/bcm/LeakyBucket.c \
../drivers/staging/bcm/Misc.c \
../drivers/staging/bcm/PHSModule.c \
../drivers/staging/bcm/Qos.c \
../drivers/staging/bcm/Transmit.c \
../drivers/staging/bcm/hostmibs.c \
../drivers/staging/bcm/led_control.c \
../drivers/staging/bcm/nvm.c \
../drivers/staging/bcm/sort.c \
../drivers/staging/bcm/vendorspecificextn.c 

OBJS += \
./drivers/staging/bcm/Bcmchar.o \
./drivers/staging/bcm/Bcmnet.o \
./drivers/staging/bcm/CmHost.o \
./drivers/staging/bcm/DDRInit.o \
./drivers/staging/bcm/HandleControlPacket.o \
./drivers/staging/bcm/IPv6Protocol.o \
./drivers/staging/bcm/InterfaceDld.o \
./drivers/staging/bcm/InterfaceIdleMode.o \
./drivers/staging/bcm/InterfaceInit.o \
./drivers/staging/bcm/InterfaceIsr.o \
./drivers/staging/bcm/InterfaceMisc.o \
./drivers/staging/bcm/InterfaceRx.o \
./drivers/staging/bcm/InterfaceTx.o \
./drivers/staging/bcm/LeakyBucket.o \
./drivers/staging/bcm/Misc.o \
./drivers/staging/bcm/PHSModule.o \
./drivers/staging/bcm/Qos.o \
./drivers/staging/bcm/Transmit.o \
./drivers/staging/bcm/hostmibs.o \
./drivers/staging/bcm/led_control.o \
./drivers/staging/bcm/nvm.o \
./drivers/staging/bcm/sort.o \
./drivers/staging/bcm/vendorspecificextn.o 

C_DEPS += \
./drivers/staging/bcm/Bcmchar.d \
./drivers/staging/bcm/Bcmnet.d \
./drivers/staging/bcm/CmHost.d \
./drivers/staging/bcm/DDRInit.d \
./drivers/staging/bcm/HandleControlPacket.d \
./drivers/staging/bcm/IPv6Protocol.d \
./drivers/staging/bcm/InterfaceDld.d \
./drivers/staging/bcm/InterfaceIdleMode.d \
./drivers/staging/bcm/InterfaceInit.d \
./drivers/staging/bcm/InterfaceIsr.d \
./drivers/staging/bcm/InterfaceMisc.d \
./drivers/staging/bcm/InterfaceRx.d \
./drivers/staging/bcm/InterfaceTx.d \
./drivers/staging/bcm/LeakyBucket.d \
./drivers/staging/bcm/Misc.d \
./drivers/staging/bcm/PHSModule.d \
./drivers/staging/bcm/Qos.d \
./drivers/staging/bcm/Transmit.d \
./drivers/staging/bcm/hostmibs.d \
./drivers/staging/bcm/led_control.d \
./drivers/staging/bcm/nvm.d \
./drivers/staging/bcm/sort.d \
./drivers/staging/bcm/vendorspecificextn.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/bcm/%.o: ../drivers/staging/bcm/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


