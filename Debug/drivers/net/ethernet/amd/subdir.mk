################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/amd/7990.c \
../drivers/net/ethernet/amd/a2065.c \
../drivers/net/ethernet/amd/am79c961a.c \
../drivers/net/ethernet/amd/amd8111e.c \
../drivers/net/ethernet/amd/ariadne.c \
../drivers/net/ethernet/amd/atarilance.c \
../drivers/net/ethernet/amd/au1000_eth.c \
../drivers/net/ethernet/amd/declance.c \
../drivers/net/ethernet/amd/depca.c \
../drivers/net/ethernet/amd/hplance.c \
../drivers/net/ethernet/amd/lance.c \
../drivers/net/ethernet/amd/mvme147.c \
../drivers/net/ethernet/amd/ni65.c \
../drivers/net/ethernet/amd/nmclan_cs.c \
../drivers/net/ethernet/amd/pcnet32.c \
../drivers/net/ethernet/amd/sun3lance.c \
../drivers/net/ethernet/amd/sunlance.c 

OBJS += \
./drivers/net/ethernet/amd/7990.o \
./drivers/net/ethernet/amd/a2065.o \
./drivers/net/ethernet/amd/am79c961a.o \
./drivers/net/ethernet/amd/amd8111e.o \
./drivers/net/ethernet/amd/ariadne.o \
./drivers/net/ethernet/amd/atarilance.o \
./drivers/net/ethernet/amd/au1000_eth.o \
./drivers/net/ethernet/amd/declance.o \
./drivers/net/ethernet/amd/depca.o \
./drivers/net/ethernet/amd/hplance.o \
./drivers/net/ethernet/amd/lance.o \
./drivers/net/ethernet/amd/mvme147.o \
./drivers/net/ethernet/amd/ni65.o \
./drivers/net/ethernet/amd/nmclan_cs.o \
./drivers/net/ethernet/amd/pcnet32.o \
./drivers/net/ethernet/amd/sun3lance.o \
./drivers/net/ethernet/amd/sunlance.o 

C_DEPS += \
./drivers/net/ethernet/amd/7990.d \
./drivers/net/ethernet/amd/a2065.d \
./drivers/net/ethernet/amd/am79c961a.d \
./drivers/net/ethernet/amd/amd8111e.d \
./drivers/net/ethernet/amd/ariadne.d \
./drivers/net/ethernet/amd/atarilance.d \
./drivers/net/ethernet/amd/au1000_eth.d \
./drivers/net/ethernet/amd/declance.d \
./drivers/net/ethernet/amd/depca.d \
./drivers/net/ethernet/amd/hplance.d \
./drivers/net/ethernet/amd/lance.d \
./drivers/net/ethernet/amd/mvme147.d \
./drivers/net/ethernet/amd/ni65.d \
./drivers/net/ethernet/amd/nmclan_cs.d \
./drivers/net/ethernet/amd/pcnet32.d \
./drivers/net/ethernet/amd/sun3lance.d \
./drivers/net/ethernet/amd/sunlance.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/amd/%.o: ../drivers/net/ethernet/amd/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


