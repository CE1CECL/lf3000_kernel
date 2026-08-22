################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/net/ethernet/built-in.o 

C_SRCS += \
../drivers/net/ethernet/dnet.c \
../drivers/net/ethernet/ethoc.c \
../drivers/net/ethernet/fealnx.c \
../drivers/net/ethernet/jme.c \
../drivers/net/ethernet/korina.c \
../drivers/net/ethernet/lantiq_etop.c \
../drivers/net/ethernet/mipsnet.c \
../drivers/net/ethernet/netx-eth.c \
../drivers/net/ethernet/s6gmac.c 

OBJS += \
./drivers/net/ethernet/dnet.o \
./drivers/net/ethernet/ethoc.o \
./drivers/net/ethernet/fealnx.o \
./drivers/net/ethernet/jme.o \
./drivers/net/ethernet/korina.o \
./drivers/net/ethernet/lantiq_etop.o \
./drivers/net/ethernet/mipsnet.o \
./drivers/net/ethernet/netx-eth.o \
./drivers/net/ethernet/s6gmac.o 

C_DEPS += \
./drivers/net/ethernet/dnet.d \
./drivers/net/ethernet/ethoc.d \
./drivers/net/ethernet/fealnx.d \
./drivers/net/ethernet/jme.d \
./drivers/net/ethernet/korina.d \
./drivers/net/ethernet/lantiq_etop.d \
./drivers/net/ethernet/mipsnet.d \
./drivers/net/ethernet/netx-eth.d \
./drivers/net/ethernet/s6gmac.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/%.o: ../drivers/net/ethernet/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


