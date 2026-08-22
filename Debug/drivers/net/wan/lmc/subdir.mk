################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/wan/lmc/lmc_debug.c \
../drivers/net/wan/lmc/lmc_main.c \
../drivers/net/wan/lmc/lmc_media.c \
../drivers/net/wan/lmc/lmc_proto.c 

OBJS += \
./drivers/net/wan/lmc/lmc_debug.o \
./drivers/net/wan/lmc/lmc_main.o \
./drivers/net/wan/lmc/lmc_media.o \
./drivers/net/wan/lmc/lmc_proto.o 

C_DEPS += \
./drivers/net/wan/lmc/lmc_debug.d \
./drivers/net/wan/lmc/lmc_main.d \
./drivers/net/wan/lmc/lmc_media.d \
./drivers/net/wan/lmc/lmc_proto.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/wan/lmc/%.o: ../drivers/net/wan/lmc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


