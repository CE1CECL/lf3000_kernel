################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/wireless/zd1211rw/zd_chip.c \
../drivers/net/wireless/zd1211rw/zd_mac.c \
../drivers/net/wireless/zd1211rw/zd_rf.c \
../drivers/net/wireless/zd1211rw/zd_rf_al2230.c \
../drivers/net/wireless/zd1211rw/zd_rf_al7230b.c \
../drivers/net/wireless/zd1211rw/zd_rf_rf2959.c \
../drivers/net/wireless/zd1211rw/zd_rf_uw2453.c \
../drivers/net/wireless/zd1211rw/zd_usb.c 

OBJS += \
./drivers/net/wireless/zd1211rw/zd_chip.o \
./drivers/net/wireless/zd1211rw/zd_mac.o \
./drivers/net/wireless/zd1211rw/zd_rf.o \
./drivers/net/wireless/zd1211rw/zd_rf_al2230.o \
./drivers/net/wireless/zd1211rw/zd_rf_al7230b.o \
./drivers/net/wireless/zd1211rw/zd_rf_rf2959.o \
./drivers/net/wireless/zd1211rw/zd_rf_uw2453.o \
./drivers/net/wireless/zd1211rw/zd_usb.o 

C_DEPS += \
./drivers/net/wireless/zd1211rw/zd_chip.d \
./drivers/net/wireless/zd1211rw/zd_mac.d \
./drivers/net/wireless/zd1211rw/zd_rf.d \
./drivers/net/wireless/zd1211rw/zd_rf_al2230.d \
./drivers/net/wireless/zd1211rw/zd_rf_al7230b.d \
./drivers/net/wireless/zd1211rw/zd_rf_rf2959.d \
./drivers/net/wireless/zd1211rw/zd_rf_uw2453.d \
./drivers/net/wireless/zd1211rw/zd_usb.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/wireless/zd1211rw/%.o: ../drivers/net/wireless/zd1211rw/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


