################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/radio/wl128x/fmdrv_common.c \
../drivers/media/radio/wl128x/fmdrv_rx.c \
../drivers/media/radio/wl128x/fmdrv_tx.c \
../drivers/media/radio/wl128x/fmdrv_v4l2.c 

OBJS += \
./drivers/media/radio/wl128x/fmdrv_common.o \
./drivers/media/radio/wl128x/fmdrv_rx.o \
./drivers/media/radio/wl128x/fmdrv_tx.o \
./drivers/media/radio/wl128x/fmdrv_v4l2.o 

C_DEPS += \
./drivers/media/radio/wl128x/fmdrv_common.d \
./drivers/media/radio/wl128x/fmdrv_rx.d \
./drivers/media/radio/wl128x/fmdrv_tx.d \
./drivers/media/radio/wl128x/fmdrv_v4l2.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/radio/wl128x/%.o: ../drivers/media/radio/wl128x/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


