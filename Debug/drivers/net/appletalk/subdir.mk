################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/appletalk/cops.c \
../drivers/net/appletalk/ipddp.c \
../drivers/net/appletalk/ltpc.c 

OBJS += \
./drivers/net/appletalk/cops.o \
./drivers/net/appletalk/ipddp.o \
./drivers/net/appletalk/ltpc.o 

C_DEPS += \
./drivers/net/appletalk/cops.d \
./drivers/net/appletalk/ipddp.d \
./drivers/net/appletalk/ltpc.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/appletalk/%.o: ../drivers/net/appletalk/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


