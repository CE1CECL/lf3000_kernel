################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/video/omap/hwa742.c \
../drivers/video/omap/lcd_ams_delta.c \
../drivers/video/omap/lcd_h3.c \
../drivers/video/omap/lcd_htcherald.c \
../drivers/video/omap/lcd_inn1510.c \
../drivers/video/omap/lcd_inn1610.c \
../drivers/video/omap/lcd_mipid.c \
../drivers/video/omap/lcd_osk.c \
../drivers/video/omap/lcd_palmte.c \
../drivers/video/omap/lcd_palmtt.c \
../drivers/video/omap/lcd_palmz71.c \
../drivers/video/omap/lcdc.c \
../drivers/video/omap/omapfb_main.c \
../drivers/video/omap/sossi.c 

OBJS += \
./drivers/video/omap/hwa742.o \
./drivers/video/omap/lcd_ams_delta.o \
./drivers/video/omap/lcd_h3.o \
./drivers/video/omap/lcd_htcherald.o \
./drivers/video/omap/lcd_inn1510.o \
./drivers/video/omap/lcd_inn1610.o \
./drivers/video/omap/lcd_mipid.o \
./drivers/video/omap/lcd_osk.o \
./drivers/video/omap/lcd_palmte.o \
./drivers/video/omap/lcd_palmtt.o \
./drivers/video/omap/lcd_palmz71.o \
./drivers/video/omap/lcdc.o \
./drivers/video/omap/omapfb_main.o \
./drivers/video/omap/sossi.o 

C_DEPS += \
./drivers/video/omap/hwa742.d \
./drivers/video/omap/lcd_ams_delta.d \
./drivers/video/omap/lcd_h3.d \
./drivers/video/omap/lcd_htcherald.d \
./drivers/video/omap/lcd_inn1510.d \
./drivers/video/omap/lcd_inn1610.d \
./drivers/video/omap/lcd_mipid.d \
./drivers/video/omap/lcd_osk.d \
./drivers/video/omap/lcd_palmte.d \
./drivers/video/omap/lcd_palmtt.d \
./drivers/video/omap/lcd_palmz71.d \
./drivers/video/omap/lcdc.d \
./drivers/video/omap/omapfb_main.d \
./drivers/video/omap/sossi.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/video/omap/%.o: ../drivers/video/omap/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


