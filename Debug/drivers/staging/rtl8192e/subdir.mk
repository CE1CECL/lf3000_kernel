################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/rtl8192e/dot11d.c \
../drivers/staging/rtl8192e/rtl819x_BAProc.c \
../drivers/staging/rtl8192e/rtl819x_HTProc.c \
../drivers/staging/rtl8192e/rtl819x_TSProc.c \
../drivers/staging/rtl8192e/rtllib_crypt.c \
../drivers/staging/rtl8192e/rtllib_crypt_ccmp.c \
../drivers/staging/rtl8192e/rtllib_crypt_tkip.c \
../drivers/staging/rtl8192e/rtllib_crypt_wep.c \
../drivers/staging/rtl8192e/rtllib_module.c \
../drivers/staging/rtl8192e/rtllib_rx.c \
../drivers/staging/rtl8192e/rtllib_softmac.c \
../drivers/staging/rtl8192e/rtllib_softmac_wx.c \
../drivers/staging/rtl8192e/rtllib_tx.c \
../drivers/staging/rtl8192e/rtllib_wx.c 

OBJS += \
./drivers/staging/rtl8192e/dot11d.o \
./drivers/staging/rtl8192e/rtl819x_BAProc.o \
./drivers/staging/rtl8192e/rtl819x_HTProc.o \
./drivers/staging/rtl8192e/rtl819x_TSProc.o \
./drivers/staging/rtl8192e/rtllib_crypt.o \
./drivers/staging/rtl8192e/rtllib_crypt_ccmp.o \
./drivers/staging/rtl8192e/rtllib_crypt_tkip.o \
./drivers/staging/rtl8192e/rtllib_crypt_wep.o \
./drivers/staging/rtl8192e/rtllib_module.o \
./drivers/staging/rtl8192e/rtllib_rx.o \
./drivers/staging/rtl8192e/rtllib_softmac.o \
./drivers/staging/rtl8192e/rtllib_softmac_wx.o \
./drivers/staging/rtl8192e/rtllib_tx.o \
./drivers/staging/rtl8192e/rtllib_wx.o 

C_DEPS += \
./drivers/staging/rtl8192e/dot11d.d \
./drivers/staging/rtl8192e/rtl819x_BAProc.d \
./drivers/staging/rtl8192e/rtl819x_HTProc.d \
./drivers/staging/rtl8192e/rtl819x_TSProc.d \
./drivers/staging/rtl8192e/rtllib_crypt.d \
./drivers/staging/rtl8192e/rtllib_crypt_ccmp.d \
./drivers/staging/rtl8192e/rtllib_crypt_tkip.d \
./drivers/staging/rtl8192e/rtllib_crypt_wep.d \
./drivers/staging/rtl8192e/rtllib_module.d \
./drivers/staging/rtl8192e/rtllib_rx.d \
./drivers/staging/rtl8192e/rtllib_softmac.d \
./drivers/staging/rtl8192e/rtllib_softmac_wx.d \
./drivers/staging/rtl8192e/rtllib_tx.d \
./drivers/staging/rtl8192e/rtllib_wx.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/rtl8192e/%.o: ../drivers/staging/rtl8192e/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


