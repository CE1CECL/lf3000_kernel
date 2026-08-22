################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/isdn/gigaset/asyncdata.c \
../drivers/isdn/gigaset/bas-gigaset.c \
../drivers/isdn/gigaset/capi.c \
../drivers/isdn/gigaset/common.c \
../drivers/isdn/gigaset/dummyll.c \
../drivers/isdn/gigaset/ev-layer.c \
../drivers/isdn/gigaset/i4l.c \
../drivers/isdn/gigaset/interface.c \
../drivers/isdn/gigaset/isocdata.c \
../drivers/isdn/gigaset/proc.c \
../drivers/isdn/gigaset/ser-gigaset.c \
../drivers/isdn/gigaset/usb-gigaset.c 

OBJS += \
./drivers/isdn/gigaset/asyncdata.o \
./drivers/isdn/gigaset/bas-gigaset.o \
./drivers/isdn/gigaset/capi.o \
./drivers/isdn/gigaset/common.o \
./drivers/isdn/gigaset/dummyll.o \
./drivers/isdn/gigaset/ev-layer.o \
./drivers/isdn/gigaset/i4l.o \
./drivers/isdn/gigaset/interface.o \
./drivers/isdn/gigaset/isocdata.o \
./drivers/isdn/gigaset/proc.o \
./drivers/isdn/gigaset/ser-gigaset.o \
./drivers/isdn/gigaset/usb-gigaset.o 

C_DEPS += \
./drivers/isdn/gigaset/asyncdata.d \
./drivers/isdn/gigaset/bas-gigaset.d \
./drivers/isdn/gigaset/capi.d \
./drivers/isdn/gigaset/common.d \
./drivers/isdn/gigaset/dummyll.d \
./drivers/isdn/gigaset/ev-layer.d \
./drivers/isdn/gigaset/i4l.d \
./drivers/isdn/gigaset/interface.d \
./drivers/isdn/gigaset/isocdata.d \
./drivers/isdn/gigaset/proc.d \
./drivers/isdn/gigaset/ser-gigaset.d \
./drivers/isdn/gigaset/usb-gigaset.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/isdn/gigaset/%.o: ../drivers/isdn/gigaset/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


