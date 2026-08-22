################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/nvec/nvec.c \
../drivers/staging/nvec/nvec_kbd.c \
../drivers/staging/nvec/nvec_leds.c \
../drivers/staging/nvec/nvec_power.c \
../drivers/staging/nvec/nvec_ps2.c 

OBJS += \
./drivers/staging/nvec/nvec.o \
./drivers/staging/nvec/nvec_kbd.o \
./drivers/staging/nvec/nvec_leds.o \
./drivers/staging/nvec/nvec_power.o \
./drivers/staging/nvec/nvec_ps2.o 

C_DEPS += \
./drivers/staging/nvec/nvec.d \
./drivers/staging/nvec/nvec_kbd.d \
./drivers/staging/nvec/nvec_leds.d \
./drivers/staging/nvec/nvec_power.d \
./drivers/staging/nvec/nvec_ps2.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/nvec/%.o: ../drivers/staging/nvec/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


