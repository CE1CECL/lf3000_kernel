################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/dvb/ttpci/av7110.c \
../drivers/media/dvb/ttpci/av7110_av.c \
../drivers/media/dvb/ttpci/av7110_ca.c \
../drivers/media/dvb/ttpci/av7110_hw.c \
../drivers/media/dvb/ttpci/av7110_ipack.c \
../drivers/media/dvb/ttpci/av7110_ir.c \
../drivers/media/dvb/ttpci/av7110_v4l.c \
../drivers/media/dvb/ttpci/budget-av.c \
../drivers/media/dvb/ttpci/budget-ci.c \
../drivers/media/dvb/ttpci/budget-core.c \
../drivers/media/dvb/ttpci/budget-patch.c \
../drivers/media/dvb/ttpci/budget.c \
../drivers/media/dvb/ttpci/ttpci-eeprom.c 

OBJS += \
./drivers/media/dvb/ttpci/av7110.o \
./drivers/media/dvb/ttpci/av7110_av.o \
./drivers/media/dvb/ttpci/av7110_ca.o \
./drivers/media/dvb/ttpci/av7110_hw.o \
./drivers/media/dvb/ttpci/av7110_ipack.o \
./drivers/media/dvb/ttpci/av7110_ir.o \
./drivers/media/dvb/ttpci/av7110_v4l.o \
./drivers/media/dvb/ttpci/budget-av.o \
./drivers/media/dvb/ttpci/budget-ci.o \
./drivers/media/dvb/ttpci/budget-core.o \
./drivers/media/dvb/ttpci/budget-patch.o \
./drivers/media/dvb/ttpci/budget.o \
./drivers/media/dvb/ttpci/ttpci-eeprom.o 

C_DEPS += \
./drivers/media/dvb/ttpci/av7110.d \
./drivers/media/dvb/ttpci/av7110_av.d \
./drivers/media/dvb/ttpci/av7110_ca.d \
./drivers/media/dvb/ttpci/av7110_hw.d \
./drivers/media/dvb/ttpci/av7110_ipack.d \
./drivers/media/dvb/ttpci/av7110_ir.d \
./drivers/media/dvb/ttpci/av7110_v4l.d \
./drivers/media/dvb/ttpci/budget-av.d \
./drivers/media/dvb/ttpci/budget-ci.d \
./drivers/media/dvb/ttpci/budget-core.d \
./drivers/media/dvb/ttpci/budget-patch.d \
./drivers/media/dvb/ttpci/budget.d \
./drivers/media/dvb/ttpci/ttpci-eeprom.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/dvb/ttpci/%.o: ../drivers/media/dvb/ttpci/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


