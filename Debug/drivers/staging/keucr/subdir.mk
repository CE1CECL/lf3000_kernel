################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/keucr/init.c \
../drivers/staging/keucr/scsiglue.c \
../drivers/staging/keucr/smilecc.c \
../drivers/staging/keucr/smilmain.c \
../drivers/staging/keucr/smilsub.c \
../drivers/staging/keucr/smscsi.c \
../drivers/staging/keucr/transport.c \
../drivers/staging/keucr/usb.c 

OBJS += \
./drivers/staging/keucr/init.o \
./drivers/staging/keucr/scsiglue.o \
./drivers/staging/keucr/smilecc.o \
./drivers/staging/keucr/smilmain.o \
./drivers/staging/keucr/smilsub.o \
./drivers/staging/keucr/smscsi.o \
./drivers/staging/keucr/transport.o \
./drivers/staging/keucr/usb.o 

C_DEPS += \
./drivers/staging/keucr/init.d \
./drivers/staging/keucr/scsiglue.d \
./drivers/staging/keucr/smilecc.d \
./drivers/staging/keucr/smilmain.d \
./drivers/staging/keucr/smilsub.d \
./drivers/staging/keucr/smscsi.d \
./drivers/staging/keucr/transport.d \
./drivers/staging/keucr/usb.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/keucr/%.o: ../drivers/staging/keucr/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


