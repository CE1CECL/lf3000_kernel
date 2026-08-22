################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/line6/audio.c \
../drivers/staging/line6/capture.c \
../drivers/staging/line6/control.c \
../drivers/staging/line6/driver.c \
../drivers/staging/line6/dumprequest.c \
../drivers/staging/line6/midi.c \
../drivers/staging/line6/midibuf.c \
../drivers/staging/line6/pcm.c \
../drivers/staging/line6/playback.c \
../drivers/staging/line6/pod.c \
../drivers/staging/line6/podhd.c \
../drivers/staging/line6/toneport.c \
../drivers/staging/line6/variax.c 

OBJS += \
./drivers/staging/line6/audio.o \
./drivers/staging/line6/capture.o \
./drivers/staging/line6/control.o \
./drivers/staging/line6/driver.o \
./drivers/staging/line6/dumprequest.o \
./drivers/staging/line6/midi.o \
./drivers/staging/line6/midibuf.o \
./drivers/staging/line6/pcm.o \
./drivers/staging/line6/playback.o \
./drivers/staging/line6/pod.o \
./drivers/staging/line6/podhd.o \
./drivers/staging/line6/toneport.o \
./drivers/staging/line6/variax.o 

C_DEPS += \
./drivers/staging/line6/audio.d \
./drivers/staging/line6/capture.d \
./drivers/staging/line6/control.d \
./drivers/staging/line6/driver.d \
./drivers/staging/line6/dumprequest.d \
./drivers/staging/line6/midi.d \
./drivers/staging/line6/midibuf.d \
./drivers/staging/line6/pcm.d \
./drivers/staging/line6/playback.d \
./drivers/staging/line6/pod.d \
./drivers/staging/line6/podhd.d \
./drivers/staging/line6/toneport.d \
./drivers/staging/line6/variax.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/line6/%.o: ../drivers/staging/line6/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


