################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/xen-netback/interface.c \
../drivers/net/xen-netback/netback.c \
../drivers/net/xen-netback/xenbus.c 

OBJS += \
./drivers/net/xen-netback/interface.o \
./drivers/net/xen-netback/netback.o \
./drivers/net/xen-netback/xenbus.o 

C_DEPS += \
./drivers/net/xen-netback/interface.d \
./drivers/net/xen-netback/netback.d \
./drivers/net/xen-netback/xenbus.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/xen-netback/%.o: ../drivers/net/xen-netback/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


