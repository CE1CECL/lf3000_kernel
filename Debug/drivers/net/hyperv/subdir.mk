################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/hyperv/netvsc.c \
../drivers/net/hyperv/netvsc_drv.c \
../drivers/net/hyperv/rndis_filter.c 

OBJS += \
./drivers/net/hyperv/netvsc.o \
./drivers/net/hyperv/netvsc_drv.o \
./drivers/net/hyperv/rndis_filter.o 

C_DEPS += \
./drivers/net/hyperv/netvsc.d \
./drivers/net/hyperv/netvsc_drv.d \
./drivers/net/hyperv/rndis_filter.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/hyperv/%.o: ../drivers/net/hyperv/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


