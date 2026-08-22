################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/misc/built-in.o 

C_SRCS += \
../drivers/misc/ab8500-pwm.c \
../drivers/misc/ad525x_dpot-i2c.c \
../drivers/misc/ad525x_dpot-spi.c \
../drivers/misc/ad525x_dpot.c \
../drivers/misc/akm8975.c \
../drivers/misc/apds9802als.c \
../drivers/misc/apds990x.c \
../drivers/misc/arm-charlcd.c \
../drivers/misc/atmel-ssc.c \
../drivers/misc/atmel_pwm.c \
../drivers/misc/atmel_tclib.c \
../drivers/misc/bh1770glc.c \
../drivers/misc/bh1780gli.c \
../drivers/misc/bmp085.c \
../drivers/misc/cs5535-mfgpt.c \
../drivers/misc/ds1682.c \
../drivers/misc/enclosure.c \
../drivers/misc/ep93xx_pwm.c \
../drivers/misc/es305.c \
../drivers/misc/fsa9480.c \
../drivers/misc/haptic_isa1200.c \
../drivers/misc/hmc6352.c \
../drivers/misc/hpilo.c \
../drivers/misc/ics932s401.c \
../drivers/misc/ioc4.c \
../drivers/misc/isl29003.c \
../drivers/misc/isl29020.c \
../drivers/misc/kgdbts.c \
../drivers/misc/lkdtm.c \
../drivers/misc/max8997-muic.c \
../drivers/misc/pch_phub.c \
../drivers/misc/phantom.c \
../drivers/misc/pti.c \
../drivers/misc/sec_jack.c \
../drivers/misc/spear13xx_pcie_gadget.c \
../drivers/misc/stmpe811-adc.c \
../drivers/misc/ti_dac7512.c \
../drivers/misc/tifm_7xx1.c \
../drivers/misc/tifm_core.c \
../drivers/misc/tsl2550.c \
../drivers/misc/uid_stat.c \
../drivers/misc/vmw_balloon.c \
../drivers/misc/wl127x-rfkill.c 

OBJS += \
./drivers/misc/ab8500-pwm.o \
./drivers/misc/ad525x_dpot-i2c.o \
./drivers/misc/ad525x_dpot-spi.o \
./drivers/misc/ad525x_dpot.o \
./drivers/misc/akm8975.o \
./drivers/misc/apds9802als.o \
./drivers/misc/apds990x.o \
./drivers/misc/arm-charlcd.o \
./drivers/misc/atmel-ssc.o \
./drivers/misc/atmel_pwm.o \
./drivers/misc/atmel_tclib.o \
./drivers/misc/bh1770glc.o \
./drivers/misc/bh1780gli.o \
./drivers/misc/bmp085.o \
./drivers/misc/cs5535-mfgpt.o \
./drivers/misc/ds1682.o \
./drivers/misc/enclosure.o \
./drivers/misc/ep93xx_pwm.o \
./drivers/misc/es305.o \
./drivers/misc/fsa9480.o \
./drivers/misc/haptic_isa1200.o \
./drivers/misc/hmc6352.o \
./drivers/misc/hpilo.o \
./drivers/misc/ics932s401.o \
./drivers/misc/ioc4.o \
./drivers/misc/isl29003.o \
./drivers/misc/isl29020.o \
./drivers/misc/kgdbts.o \
./drivers/misc/lkdtm.o \
./drivers/misc/max8997-muic.o \
./drivers/misc/pch_phub.o \
./drivers/misc/phantom.o \
./drivers/misc/pti.o \
./drivers/misc/sec_jack.o \
./drivers/misc/spear13xx_pcie_gadget.o \
./drivers/misc/stmpe811-adc.o \
./drivers/misc/ti_dac7512.o \
./drivers/misc/tifm_7xx1.o \
./drivers/misc/tifm_core.o \
./drivers/misc/tsl2550.o \
./drivers/misc/uid_stat.o \
./drivers/misc/vmw_balloon.o \
./drivers/misc/wl127x-rfkill.o 

C_DEPS += \
./drivers/misc/ab8500-pwm.d \
./drivers/misc/ad525x_dpot-i2c.d \
./drivers/misc/ad525x_dpot-spi.d \
./drivers/misc/ad525x_dpot.d \
./drivers/misc/akm8975.d \
./drivers/misc/apds9802als.d \
./drivers/misc/apds990x.d \
./drivers/misc/arm-charlcd.d \
./drivers/misc/atmel-ssc.d \
./drivers/misc/atmel_pwm.d \
./drivers/misc/atmel_tclib.d \
./drivers/misc/bh1770glc.d \
./drivers/misc/bh1780gli.d \
./drivers/misc/bmp085.d \
./drivers/misc/cs5535-mfgpt.d \
./drivers/misc/ds1682.d \
./drivers/misc/enclosure.d \
./drivers/misc/ep93xx_pwm.d \
./drivers/misc/es305.d \
./drivers/misc/fsa9480.d \
./drivers/misc/haptic_isa1200.d \
./drivers/misc/hmc6352.d \
./drivers/misc/hpilo.d \
./drivers/misc/ics932s401.d \
./drivers/misc/ioc4.d \
./drivers/misc/isl29003.d \
./drivers/misc/isl29020.d \
./drivers/misc/kgdbts.d \
./drivers/misc/lkdtm.d \
./drivers/misc/max8997-muic.d \
./drivers/misc/pch_phub.d \
./drivers/misc/phantom.d \
./drivers/misc/pti.d \
./drivers/misc/sec_jack.d \
./drivers/misc/spear13xx_pcie_gadget.d \
./drivers/misc/stmpe811-adc.d \
./drivers/misc/ti_dac7512.d \
./drivers/misc/tifm_7xx1.d \
./drivers/misc/tifm_core.d \
./drivers/misc/tsl2550.d \
./drivers/misc/uid_stat.d \
./drivers/misc/vmw_balloon.d \
./drivers/misc/wl127x-rfkill.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/misc/%.o: ../drivers/misc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


