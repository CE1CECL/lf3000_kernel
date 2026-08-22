################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/usb/otg/ab8500-usb.c \
../drivers/usb/otg/fsl_otg.c \
../drivers/usb/otg/gpio_vbus.c \
../drivers/usb/otg/isp1301_omap.c \
../drivers/usb/otg/msm_otg.c \
../drivers/usb/otg/mv_otg.c \
../drivers/usb/otg/nop-usb-xceiv.c \
../drivers/usb/otg/otg-wakelock.c \
../drivers/usb/otg/otg.c \
../drivers/usb/otg/otg_fsm.c \
../drivers/usb/otg/twl4030-usb.c \
../drivers/usb/otg/twl6030-usb.c \
../drivers/usb/otg/ulpi.c \
../drivers/usb/otg/ulpi_viewport.c 

OBJS += \
./drivers/usb/otg/ab8500-usb.o \
./drivers/usb/otg/fsl_otg.o \
./drivers/usb/otg/gpio_vbus.o \
./drivers/usb/otg/isp1301_omap.o \
./drivers/usb/otg/msm_otg.o \
./drivers/usb/otg/mv_otg.o \
./drivers/usb/otg/nop-usb-xceiv.o \
./drivers/usb/otg/otg-wakelock.o \
./drivers/usb/otg/otg.o \
./drivers/usb/otg/otg_fsm.o \
./drivers/usb/otg/twl4030-usb.o \
./drivers/usb/otg/twl6030-usb.o \
./drivers/usb/otg/ulpi.o \
./drivers/usb/otg/ulpi_viewport.o 

C_DEPS += \
./drivers/usb/otg/ab8500-usb.d \
./drivers/usb/otg/fsl_otg.d \
./drivers/usb/otg/gpio_vbus.d \
./drivers/usb/otg/isp1301_omap.d \
./drivers/usb/otg/msm_otg.d \
./drivers/usb/otg/mv_otg.d \
./drivers/usb/otg/nop-usb-xceiv.d \
./drivers/usb/otg/otg-wakelock.d \
./drivers/usb/otg/otg.d \
./drivers/usb/otg/otg_fsm.d \
./drivers/usb/otg/twl4030-usb.d \
./drivers/usb/otg/twl6030-usb.d \
./drivers/usb/otg/ulpi.d \
./drivers/usb/otg/ulpi_viewport.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/usb/otg/%.o: ../drivers/usb/otg/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


