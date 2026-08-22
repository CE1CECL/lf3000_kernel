################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/xscale/ixp2000/caleb.c \
../drivers/net/ethernet/xscale/ixp2000/enp2611.c \
../drivers/net/ethernet/xscale/ixp2000/ixp2400-msf.c \
../drivers/net/ethernet/xscale/ixp2000/ixpdev.c \
../drivers/net/ethernet/xscale/ixp2000/pm3386.c 

OBJS += \
./drivers/net/ethernet/xscale/ixp2000/caleb.o \
./drivers/net/ethernet/xscale/ixp2000/enp2611.o \
./drivers/net/ethernet/xscale/ixp2000/ixp2400-msf.o \
./drivers/net/ethernet/xscale/ixp2000/ixpdev.o \
./drivers/net/ethernet/xscale/ixp2000/pm3386.o 

C_DEPS += \
./drivers/net/ethernet/xscale/ixp2000/caleb.d \
./drivers/net/ethernet/xscale/ixp2000/enp2611.d \
./drivers/net/ethernet/xscale/ixp2000/ixp2400-msf.d \
./drivers/net/ethernet/xscale/ixp2000/ixpdev.d \
./drivers/net/ethernet/xscale/ixp2000/pm3386.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/xscale/ixp2000/%.o: ../drivers/net/ethernet/xscale/ixp2000/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


