################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/sun/cassini.c \
../drivers/net/ethernet/sun/niu.c \
../drivers/net/ethernet/sun/sunbmac.c \
../drivers/net/ethernet/sun/sungem.c \
../drivers/net/ethernet/sun/sunhme.c \
../drivers/net/ethernet/sun/sunqe.c \
../drivers/net/ethernet/sun/sunvnet.c 

OBJS += \
./drivers/net/ethernet/sun/cassini.o \
./drivers/net/ethernet/sun/niu.o \
./drivers/net/ethernet/sun/sunbmac.o \
./drivers/net/ethernet/sun/sungem.o \
./drivers/net/ethernet/sun/sunhme.o \
./drivers/net/ethernet/sun/sunqe.o \
./drivers/net/ethernet/sun/sunvnet.o 

C_DEPS += \
./drivers/net/ethernet/sun/cassini.d \
./drivers/net/ethernet/sun/niu.d \
./drivers/net/ethernet/sun/sunbmac.d \
./drivers/net/ethernet/sun/sungem.d \
./drivers/net/ethernet/sun/sunhme.d \
./drivers/net/ethernet/sun/sunqe.d \
./drivers/net/ethernet/sun/sunvnet.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/sun/%.o: ../drivers/net/ethernet/sun/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


