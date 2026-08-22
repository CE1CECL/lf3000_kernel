################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/nexell/nxp-v4l2-common.c \
../drivers/media/video/nexell/nxp-v4l2.c \
../drivers/media/video/nexell/nxp-video.c 

OBJS += \
./drivers/media/video/nexell/nxp-v4l2-common.o \
./drivers/media/video/nexell/nxp-v4l2.o \
./drivers/media/video/nexell/nxp-video.o 

C_DEPS += \
./drivers/media/video/nexell/nxp-v4l2-common.d \
./drivers/media/video/nexell/nxp-v4l2.d \
./drivers/media/video/nexell/nxp-video.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/nexell/%.o: ../drivers/media/video/nexell/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


