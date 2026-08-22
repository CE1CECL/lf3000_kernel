################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/media/easycap/easycap_ioctl.c \
../drivers/staging/media/easycap/easycap_low.c \
../drivers/staging/media/easycap/easycap_main.c \
../drivers/staging/media/easycap/easycap_settings.c \
../drivers/staging/media/easycap/easycap_sound.c \
../drivers/staging/media/easycap/easycap_testcard.c 

OBJS += \
./drivers/staging/media/easycap/easycap_ioctl.o \
./drivers/staging/media/easycap/easycap_low.o \
./drivers/staging/media/easycap/easycap_main.o \
./drivers/staging/media/easycap/easycap_settings.o \
./drivers/staging/media/easycap/easycap_sound.o \
./drivers/staging/media/easycap/easycap_testcard.o 

C_DEPS += \
./drivers/staging/media/easycap/easycap_ioctl.d \
./drivers/staging/media/easycap/easycap_low.d \
./drivers/staging/media/easycap/easycap_main.d \
./drivers/staging/media/easycap/easycap_settings.d \
./drivers/staging/media/easycap/easycap_sound.d \
./drivers/staging/media/easycap/easycap_testcard.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/media/easycap/%.o: ../drivers/staging/media/easycap/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


