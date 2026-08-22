################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/macintosh/built-in.o 

C_SRCS += \
../drivers/macintosh/adb-iop.c \
../drivers/macintosh/adb.c \
../drivers/macintosh/adbhid.c \
../drivers/macintosh/ans-lcd.c \
../drivers/macintosh/apm_emu.c \
../drivers/macintosh/mac_hid.c \
../drivers/macintosh/macio-adb.c \
../drivers/macintosh/macio_asic.c \
../drivers/macintosh/macio_sysfs.c \
../drivers/macintosh/mediabay.c \
../drivers/macintosh/nvram.c \
../drivers/macintosh/rack-meter.c \
../drivers/macintosh/smu.c \
../drivers/macintosh/therm_adt746x.c \
../drivers/macintosh/therm_pm72.c \
../drivers/macintosh/therm_windtunnel.c \
../drivers/macintosh/via-cuda.c \
../drivers/macintosh/via-macii.c \
../drivers/macintosh/via-maciisi.c \
../drivers/macintosh/via-pmu-backlight.c \
../drivers/macintosh/via-pmu-event.c \
../drivers/macintosh/via-pmu-led.c \
../drivers/macintosh/via-pmu.c \
../drivers/macintosh/via-pmu68k.c \
../drivers/macintosh/windfarm_core.c \
../drivers/macintosh/windfarm_cpufreq_clamp.c \
../drivers/macintosh/windfarm_lm75_sensor.c \
../drivers/macintosh/windfarm_max6690_sensor.c \
../drivers/macintosh/windfarm_pid.c \
../drivers/macintosh/windfarm_pm112.c \
../drivers/macintosh/windfarm_pm121.c \
../drivers/macintosh/windfarm_pm81.c \
../drivers/macintosh/windfarm_pm91.c \
../drivers/macintosh/windfarm_smu_controls.c \
../drivers/macintosh/windfarm_smu_sat.c \
../drivers/macintosh/windfarm_smu_sensors.c 

OBJS += \
./drivers/macintosh/adb-iop.o \
./drivers/macintosh/adb.o \
./drivers/macintosh/adbhid.o \
./drivers/macintosh/ans-lcd.o \
./drivers/macintosh/apm_emu.o \
./drivers/macintosh/mac_hid.o \
./drivers/macintosh/macio-adb.o \
./drivers/macintosh/macio_asic.o \
./drivers/macintosh/macio_sysfs.o \
./drivers/macintosh/mediabay.o \
./drivers/macintosh/nvram.o \
./drivers/macintosh/rack-meter.o \
./drivers/macintosh/smu.o \
./drivers/macintosh/therm_adt746x.o \
./drivers/macintosh/therm_pm72.o \
./drivers/macintosh/therm_windtunnel.o \
./drivers/macintosh/via-cuda.o \
./drivers/macintosh/via-macii.o \
./drivers/macintosh/via-maciisi.o \
./drivers/macintosh/via-pmu-backlight.o \
./drivers/macintosh/via-pmu-event.o \
./drivers/macintosh/via-pmu-led.o \
./drivers/macintosh/via-pmu.o \
./drivers/macintosh/via-pmu68k.o \
./drivers/macintosh/windfarm_core.o \
./drivers/macintosh/windfarm_cpufreq_clamp.o \
./drivers/macintosh/windfarm_lm75_sensor.o \
./drivers/macintosh/windfarm_max6690_sensor.o \
./drivers/macintosh/windfarm_pid.o \
./drivers/macintosh/windfarm_pm112.o \
./drivers/macintosh/windfarm_pm121.o \
./drivers/macintosh/windfarm_pm81.o \
./drivers/macintosh/windfarm_pm91.o \
./drivers/macintosh/windfarm_smu_controls.o \
./drivers/macintosh/windfarm_smu_sat.o \
./drivers/macintosh/windfarm_smu_sensors.o 

C_DEPS += \
./drivers/macintosh/adb-iop.d \
./drivers/macintosh/adb.d \
./drivers/macintosh/adbhid.d \
./drivers/macintosh/ans-lcd.d \
./drivers/macintosh/apm_emu.d \
./drivers/macintosh/mac_hid.d \
./drivers/macintosh/macio-adb.d \
./drivers/macintosh/macio_asic.d \
./drivers/macintosh/macio_sysfs.d \
./drivers/macintosh/mediabay.d \
./drivers/macintosh/nvram.d \
./drivers/macintosh/rack-meter.d \
./drivers/macintosh/smu.d \
./drivers/macintosh/therm_adt746x.d \
./drivers/macintosh/therm_pm72.d \
./drivers/macintosh/therm_windtunnel.d \
./drivers/macintosh/via-cuda.d \
./drivers/macintosh/via-macii.d \
./drivers/macintosh/via-maciisi.d \
./drivers/macintosh/via-pmu-backlight.d \
./drivers/macintosh/via-pmu-event.d \
./drivers/macintosh/via-pmu-led.d \
./drivers/macintosh/via-pmu.d \
./drivers/macintosh/via-pmu68k.d \
./drivers/macintosh/windfarm_core.d \
./drivers/macintosh/windfarm_cpufreq_clamp.d \
./drivers/macintosh/windfarm_lm75_sensor.d \
./drivers/macintosh/windfarm_max6690_sensor.d \
./drivers/macintosh/windfarm_pid.d \
./drivers/macintosh/windfarm_pm112.d \
./drivers/macintosh/windfarm_pm121.d \
./drivers/macintosh/windfarm_pm81.d \
./drivers/macintosh/windfarm_pm91.d \
./drivers/macintosh/windfarm_smu_controls.d \
./drivers/macintosh/windfarm_smu_sat.d \
./drivers/macintosh/windfarm_smu_sensors.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/macintosh/%.o: ../drivers/macintosh/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


