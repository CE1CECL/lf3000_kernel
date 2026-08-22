################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/uwb/address.c \
../drivers/uwb/allocator.c \
../drivers/uwb/beacon.c \
../drivers/uwb/driver.c \
../drivers/uwb/drp-avail.c \
../drivers/uwb/drp-ie.c \
../drivers/uwb/drp.c \
../drivers/uwb/est.c \
../drivers/uwb/hwa-rc.c \
../drivers/uwb/ie-rcv.c \
../drivers/uwb/ie.c \
../drivers/uwb/lc-dev.c \
../drivers/uwb/lc-rc.c \
../drivers/uwb/neh.c \
../drivers/uwb/pal.c \
../drivers/uwb/radio.c \
../drivers/uwb/reset.c \
../drivers/uwb/rsv.c \
../drivers/uwb/scan.c \
../drivers/uwb/umc-bus.c \
../drivers/uwb/umc-dev.c \
../drivers/uwb/umc-drv.c \
../drivers/uwb/uwb-debug.c \
../drivers/uwb/uwbd.c \
../drivers/uwb/whc-rc.c \
../drivers/uwb/whci.c 

OBJS += \
./drivers/uwb/address.o \
./drivers/uwb/allocator.o \
./drivers/uwb/beacon.o \
./drivers/uwb/driver.o \
./drivers/uwb/drp-avail.o \
./drivers/uwb/drp-ie.o \
./drivers/uwb/drp.o \
./drivers/uwb/est.o \
./drivers/uwb/hwa-rc.o \
./drivers/uwb/ie-rcv.o \
./drivers/uwb/ie.o \
./drivers/uwb/lc-dev.o \
./drivers/uwb/lc-rc.o \
./drivers/uwb/neh.o \
./drivers/uwb/pal.o \
./drivers/uwb/radio.o \
./drivers/uwb/reset.o \
./drivers/uwb/rsv.o \
./drivers/uwb/scan.o \
./drivers/uwb/umc-bus.o \
./drivers/uwb/umc-dev.o \
./drivers/uwb/umc-drv.o \
./drivers/uwb/uwb-debug.o \
./drivers/uwb/uwbd.o \
./drivers/uwb/whc-rc.o \
./drivers/uwb/whci.o 

C_DEPS += \
./drivers/uwb/address.d \
./drivers/uwb/allocator.d \
./drivers/uwb/beacon.d \
./drivers/uwb/driver.d \
./drivers/uwb/drp-avail.d \
./drivers/uwb/drp-ie.d \
./drivers/uwb/drp.d \
./drivers/uwb/est.d \
./drivers/uwb/hwa-rc.d \
./drivers/uwb/ie-rcv.d \
./drivers/uwb/ie.d \
./drivers/uwb/lc-dev.d \
./drivers/uwb/lc-rc.d \
./drivers/uwb/neh.d \
./drivers/uwb/pal.d \
./drivers/uwb/radio.d \
./drivers/uwb/reset.d \
./drivers/uwb/rsv.d \
./drivers/uwb/scan.d \
./drivers/uwb/umc-bus.d \
./drivers/uwb/umc-dev.d \
./drivers/uwb/umc-drv.d \
./drivers/uwb/uwb-debug.d \
./drivers/uwb/uwbd.d \
./drivers/uwb/whc-rc.d \
./drivers/uwb/whci.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/uwb/%.o: ../drivers/uwb/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


