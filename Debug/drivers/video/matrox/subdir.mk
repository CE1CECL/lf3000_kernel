################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/video/matrox/g450_pll.c \
../drivers/video/matrox/i2c-matroxfb.c \
../drivers/video/matrox/matroxfb_DAC1064.c \
../drivers/video/matrox/matroxfb_Ti3026.c \
../drivers/video/matrox/matroxfb_accel.c \
../drivers/video/matrox/matroxfb_base.c \
../drivers/video/matrox/matroxfb_crtc2.c \
../drivers/video/matrox/matroxfb_g450.c \
../drivers/video/matrox/matroxfb_maven.c \
../drivers/video/matrox/matroxfb_misc.c 

OBJS += \
./drivers/video/matrox/g450_pll.o \
./drivers/video/matrox/i2c-matroxfb.o \
./drivers/video/matrox/matroxfb_DAC1064.o \
./drivers/video/matrox/matroxfb_Ti3026.o \
./drivers/video/matrox/matroxfb_accel.o \
./drivers/video/matrox/matroxfb_base.o \
./drivers/video/matrox/matroxfb_crtc2.o \
./drivers/video/matrox/matroxfb_g450.o \
./drivers/video/matrox/matroxfb_maven.o \
./drivers/video/matrox/matroxfb_misc.o 

C_DEPS += \
./drivers/video/matrox/g450_pll.d \
./drivers/video/matrox/i2c-matroxfb.d \
./drivers/video/matrox/matroxfb_DAC1064.d \
./drivers/video/matrox/matroxfb_Ti3026.d \
./drivers/video/matrox/matroxfb_accel.d \
./drivers/video/matrox/matroxfb_base.d \
./drivers/video/matrox/matroxfb_crtc2.d \
./drivers/video/matrox/matroxfb_g450.d \
./drivers/video/matrox/matroxfb_maven.d \
./drivers/video/matrox/matroxfb_misc.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/video/matrox/%.o: ../drivers/video/matrox/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


