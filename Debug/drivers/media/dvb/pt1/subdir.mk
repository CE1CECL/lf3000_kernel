################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/dvb/pt1/pt1.c \
../drivers/media/dvb/pt1/va1j5jf8007s.c \
../drivers/media/dvb/pt1/va1j5jf8007t.c 

OBJS += \
./drivers/media/dvb/pt1/pt1.o \
./drivers/media/dvb/pt1/va1j5jf8007s.o \
./drivers/media/dvb/pt1/va1j5jf8007t.o 

C_DEPS += \
./drivers/media/dvb/pt1/pt1.d \
./drivers/media/dvb/pt1/va1j5jf8007s.d \
./drivers/media/dvb/pt1/va1j5jf8007t.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/dvb/pt1/%.o: ../drivers/media/dvb/pt1/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


