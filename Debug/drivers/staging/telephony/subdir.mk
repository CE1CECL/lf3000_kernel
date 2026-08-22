################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/telephony/ixj.c \
../drivers/staging/telephony/ixj_pcmcia.c \
../drivers/staging/telephony/phonedev.c 

OBJS += \
./drivers/staging/telephony/ixj.o \
./drivers/staging/telephony/ixj_pcmcia.o \
./drivers/staging/telephony/phonedev.o 

C_DEPS += \
./drivers/staging/telephony/ixj.d \
./drivers/staging/telephony/ixj_pcmcia.d \
./drivers/staging/telephony/phonedev.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/telephony/%.o: ../drivers/staging/telephony/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


