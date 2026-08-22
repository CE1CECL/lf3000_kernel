################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/rtl8192e/rtl8192e/r8190P_rtl8256.c \
../drivers/staging/rtl8192e/rtl8192e/r8192E_cmdpkt.c \
../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c \
../drivers/staging/rtl8192e/rtl8192e/r8192E_firmware.c \
../drivers/staging/rtl8192e/rtl8192e/r8192E_hwimg.c \
../drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c \
../drivers/staging/rtl8192e/rtl8192e/rtl_cam.c \
../drivers/staging/rtl8192e/rtl8192e/rtl_core.c \
../drivers/staging/rtl8192e/rtl8192e/rtl_debug.c \
../drivers/staging/rtl8192e/rtl8192e/rtl_dm.c \
../drivers/staging/rtl8192e/rtl8192e/rtl_eeprom.c \
../drivers/staging/rtl8192e/rtl8192e/rtl_ethtool.c \
../drivers/staging/rtl8192e/rtl8192e/rtl_pci.c \
../drivers/staging/rtl8192e/rtl8192e/rtl_pm.c \
../drivers/staging/rtl8192e/rtl8192e/rtl_ps.c \
../drivers/staging/rtl8192e/rtl8192e/rtl_wx.c 

OBJS += \
./drivers/staging/rtl8192e/rtl8192e/r8190P_rtl8256.o \
./drivers/staging/rtl8192e/rtl8192e/r8192E_cmdpkt.o \
./drivers/staging/rtl8192e/rtl8192e/r8192E_dev.o \
./drivers/staging/rtl8192e/rtl8192e/r8192E_firmware.o \
./drivers/staging/rtl8192e/rtl8192e/r8192E_hwimg.o \
./drivers/staging/rtl8192e/rtl8192e/r8192E_phy.o \
./drivers/staging/rtl8192e/rtl8192e/rtl_cam.o \
./drivers/staging/rtl8192e/rtl8192e/rtl_core.o \
./drivers/staging/rtl8192e/rtl8192e/rtl_debug.o \
./drivers/staging/rtl8192e/rtl8192e/rtl_dm.o \
./drivers/staging/rtl8192e/rtl8192e/rtl_eeprom.o \
./drivers/staging/rtl8192e/rtl8192e/rtl_ethtool.o \
./drivers/staging/rtl8192e/rtl8192e/rtl_pci.o \
./drivers/staging/rtl8192e/rtl8192e/rtl_pm.o \
./drivers/staging/rtl8192e/rtl8192e/rtl_ps.o \
./drivers/staging/rtl8192e/rtl8192e/rtl_wx.o 

C_DEPS += \
./drivers/staging/rtl8192e/rtl8192e/r8190P_rtl8256.d \
./drivers/staging/rtl8192e/rtl8192e/r8192E_cmdpkt.d \
./drivers/staging/rtl8192e/rtl8192e/r8192E_dev.d \
./drivers/staging/rtl8192e/rtl8192e/r8192E_firmware.d \
./drivers/staging/rtl8192e/rtl8192e/r8192E_hwimg.d \
./drivers/staging/rtl8192e/rtl8192e/r8192E_phy.d \
./drivers/staging/rtl8192e/rtl8192e/rtl_cam.d \
./drivers/staging/rtl8192e/rtl8192e/rtl_core.d \
./drivers/staging/rtl8192e/rtl8192e/rtl_debug.d \
./drivers/staging/rtl8192e/rtl8192e/rtl_dm.d \
./drivers/staging/rtl8192e/rtl8192e/rtl_eeprom.d \
./drivers/staging/rtl8192e/rtl8192e/rtl_ethtool.d \
./drivers/staging/rtl8192e/rtl8192e/rtl_pci.d \
./drivers/staging/rtl8192e/rtl8192e/rtl_pm.d \
./drivers/staging/rtl8192e/rtl8192e/rtl_ps.d \
./drivers/staging/rtl8192e/rtl8192e/rtl_wx.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/rtl8192e/rtl8192e/%.o: ../drivers/staging/rtl8192e/rtl8192e/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


