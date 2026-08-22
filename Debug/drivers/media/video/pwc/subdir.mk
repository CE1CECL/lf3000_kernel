################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/pwc/pwc-ctrl.c \
../drivers/media/video/pwc/pwc-dec1.c \
../drivers/media/video/pwc/pwc-dec23.c \
../drivers/media/video/pwc/pwc-if.c \
../drivers/media/video/pwc/pwc-kiara.c \
../drivers/media/video/pwc/pwc-misc.c \
../drivers/media/video/pwc/pwc-timon.c \
../drivers/media/video/pwc/pwc-uncompress.c \
../drivers/media/video/pwc/pwc-v4l.c 

OBJS += \
./drivers/media/video/pwc/pwc-ctrl.o \
./drivers/media/video/pwc/pwc-dec1.o \
./drivers/media/video/pwc/pwc-dec23.o \
./drivers/media/video/pwc/pwc-if.o \
./drivers/media/video/pwc/pwc-kiara.o \
./drivers/media/video/pwc/pwc-misc.o \
./drivers/media/video/pwc/pwc-timon.o \
./drivers/media/video/pwc/pwc-uncompress.o \
./drivers/media/video/pwc/pwc-v4l.o 

C_DEPS += \
./drivers/media/video/pwc/pwc-ctrl.d \
./drivers/media/video/pwc/pwc-dec1.d \
./drivers/media/video/pwc/pwc-dec23.d \
./drivers/media/video/pwc/pwc-if.d \
./drivers/media/video/pwc/pwc-kiara.d \
./drivers/media/video/pwc/pwc-misc.d \
./drivers/media/video/pwc/pwc-timon.d \
./drivers/media/video/pwc/pwc-uncompress.d \
./drivers/media/video/pwc/pwc-v4l.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/pwc/%.o: ../drivers/media/video/pwc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


