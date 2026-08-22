################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/smsc/epic100.c \
../drivers/net/ethernet/smsc/smc911x.c \
../drivers/net/ethernet/smsc/smc9194.c \
../drivers/net/ethernet/smsc/smc91c92_cs.c \
../drivers/net/ethernet/smsc/smc91x.c \
../drivers/net/ethernet/smsc/smsc911x.c \
../drivers/net/ethernet/smsc/smsc9420.c 

OBJS += \
./drivers/net/ethernet/smsc/epic100.o \
./drivers/net/ethernet/smsc/smc911x.o \
./drivers/net/ethernet/smsc/smc9194.o \
./drivers/net/ethernet/smsc/smc91c92_cs.o \
./drivers/net/ethernet/smsc/smc91x.o \
./drivers/net/ethernet/smsc/smsc911x.o \
./drivers/net/ethernet/smsc/smsc9420.o 

C_DEPS += \
./drivers/net/ethernet/smsc/epic100.d \
./drivers/net/ethernet/smsc/smc911x.d \
./drivers/net/ethernet/smsc/smc9194.d \
./drivers/net/ethernet/smsc/smc91c92_cs.d \
./drivers/net/ethernet/smsc/smc91x.d \
./drivers/net/ethernet/smsc/smsc911x.d \
./drivers/net/ethernet/smsc/smsc9420.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/smsc/%.o: ../drivers/net/ethernet/smsc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


