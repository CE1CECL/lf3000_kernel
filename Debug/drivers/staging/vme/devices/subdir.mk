################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/vme/devices/vme_pio2_cntr.c \
../drivers/staging/vme/devices/vme_pio2_core.c \
../drivers/staging/vme/devices/vme_pio2_gpio.c \
../drivers/staging/vme/devices/vme_user.c 

OBJS += \
./drivers/staging/vme/devices/vme_pio2_cntr.o \
./drivers/staging/vme/devices/vme_pio2_core.o \
./drivers/staging/vme/devices/vme_pio2_gpio.o \
./drivers/staging/vme/devices/vme_user.o 

C_DEPS += \
./drivers/staging/vme/devices/vme_pio2_cntr.d \
./drivers/staging/vme/devices/vme_pio2_core.d \
./drivers/staging/vme/devices/vme_pio2_gpio.d \
./drivers/staging/vme/devices/vme_user.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/vme/devices/%.o: ../drivers/staging/vme/devices/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


