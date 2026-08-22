################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/wireless/ipw2x00/ipw2100.c \
../drivers/net/wireless/ipw2x00/ipw2200.c \
../drivers/net/wireless/ipw2x00/libipw_geo.c \
../drivers/net/wireless/ipw2x00/libipw_module.c \
../drivers/net/wireless/ipw2x00/libipw_rx.c \
../drivers/net/wireless/ipw2x00/libipw_tx.c \
../drivers/net/wireless/ipw2x00/libipw_wx.c 

OBJS += \
./drivers/net/wireless/ipw2x00/ipw2100.o \
./drivers/net/wireless/ipw2x00/ipw2200.o \
./drivers/net/wireless/ipw2x00/libipw_geo.o \
./drivers/net/wireless/ipw2x00/libipw_module.o \
./drivers/net/wireless/ipw2x00/libipw_rx.o \
./drivers/net/wireless/ipw2x00/libipw_tx.o \
./drivers/net/wireless/ipw2x00/libipw_wx.o 

C_DEPS += \
./drivers/net/wireless/ipw2x00/ipw2100.d \
./drivers/net/wireless/ipw2x00/ipw2200.d \
./drivers/net/wireless/ipw2x00/libipw_geo.d \
./drivers/net/wireless/ipw2x00/libipw_module.d \
./drivers/net/wireless/ipw2x00/libipw_rx.d \
./drivers/net/wireless/ipw2x00/libipw_tx.d \
./drivers/net/wireless/ipw2x00/libipw_wx.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/wireless/ipw2x00/%.o: ../drivers/net/wireless/ipw2x00/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


