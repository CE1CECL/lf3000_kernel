################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/dvb/siano/sms-cards.c \
../drivers/media/dvb/siano/smscoreapi.c \
../drivers/media/dvb/siano/smsdvb.c \
../drivers/media/dvb/siano/smsendian.c \
../drivers/media/dvb/siano/smsir.c \
../drivers/media/dvb/siano/smssdio.c \
../drivers/media/dvb/siano/smsusb.c 

OBJS += \
./drivers/media/dvb/siano/sms-cards.o \
./drivers/media/dvb/siano/smscoreapi.o \
./drivers/media/dvb/siano/smsdvb.o \
./drivers/media/dvb/siano/smsendian.o \
./drivers/media/dvb/siano/smsir.o \
./drivers/media/dvb/siano/smssdio.o \
./drivers/media/dvb/siano/smsusb.o 

C_DEPS += \
./drivers/media/dvb/siano/sms-cards.d \
./drivers/media/dvb/siano/smscoreapi.d \
./drivers/media/dvb/siano/smsdvb.d \
./drivers/media/dvb/siano/smsendian.d \
./drivers/media/dvb/siano/smsir.d \
./drivers/media/dvb/siano/smssdio.d \
./drivers/media/dvb/siano/smsusb.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/dvb/siano/%.o: ../drivers/media/dvb/siano/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


