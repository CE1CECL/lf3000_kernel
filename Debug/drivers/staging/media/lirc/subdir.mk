################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/media/lirc/lirc_bt829.c \
../drivers/staging/media/lirc/lirc_igorplugusb.c \
../drivers/staging/media/lirc/lirc_imon.c \
../drivers/staging/media/lirc/lirc_parallel.c \
../drivers/staging/media/lirc/lirc_sasem.c \
../drivers/staging/media/lirc/lirc_serial.c \
../drivers/staging/media/lirc/lirc_sir.c \
../drivers/staging/media/lirc/lirc_ttusbir.c \
../drivers/staging/media/lirc/lirc_zilog.c 

OBJS += \
./drivers/staging/media/lirc/lirc_bt829.o \
./drivers/staging/media/lirc/lirc_igorplugusb.o \
./drivers/staging/media/lirc/lirc_imon.o \
./drivers/staging/media/lirc/lirc_parallel.o \
./drivers/staging/media/lirc/lirc_sasem.o \
./drivers/staging/media/lirc/lirc_serial.o \
./drivers/staging/media/lirc/lirc_sir.o \
./drivers/staging/media/lirc/lirc_ttusbir.o \
./drivers/staging/media/lirc/lirc_zilog.o 

C_DEPS += \
./drivers/staging/media/lirc/lirc_bt829.d \
./drivers/staging/media/lirc/lirc_igorplugusb.d \
./drivers/staging/media/lirc/lirc_imon.d \
./drivers/staging/media/lirc/lirc_parallel.d \
./drivers/staging/media/lirc/lirc_sasem.d \
./drivers/staging/media/lirc/lirc_serial.d \
./drivers/staging/media/lirc/lirc_sir.d \
./drivers/staging/media/lirc/lirc_ttusbir.d \
./drivers/staging/media/lirc/lirc_zilog.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/media/lirc/%.o: ../drivers/staging/media/lirc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


