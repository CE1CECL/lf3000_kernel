################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/rtl8187se/r8180_core.c \
../drivers/staging/rtl8187se/r8180_dm.c \
../drivers/staging/rtl8187se/r8180_rtl8225z2.c \
../drivers/staging/rtl8187se/r8180_wx.c \
../drivers/staging/rtl8187se/r8185b_init.c 

OBJS += \
./drivers/staging/rtl8187se/r8180_core.o \
./drivers/staging/rtl8187se/r8180_dm.o \
./drivers/staging/rtl8187se/r8180_rtl8225z2.o \
./drivers/staging/rtl8187se/r8180_wx.o \
./drivers/staging/rtl8187se/r8185b_init.o 

C_DEPS += \
./drivers/staging/rtl8187se/r8180_core.d \
./drivers/staging/rtl8187se/r8180_dm.d \
./drivers/staging/rtl8187se/r8180_rtl8225z2.d \
./drivers/staging/rtl8187se/r8180_wx.d \
./drivers/staging/rtl8187se/r8185b_init.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/rtl8187se/%.o: ../drivers/staging/rtl8187se/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


