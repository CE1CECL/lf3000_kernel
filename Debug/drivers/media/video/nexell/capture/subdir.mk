################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/nexell/capture/nxp-capture.c \
../drivers/media/video/nexell/capture/nxp-csi.c \
../drivers/media/video/nexell/capture/nxp-decimator.c \
../drivers/media/video/nexell/capture/nxp-vin-clipper.c 

OBJS += \
./drivers/media/video/nexell/capture/nxp-capture.o \
./drivers/media/video/nexell/capture/nxp-csi.o \
./drivers/media/video/nexell/capture/nxp-decimator.o \
./drivers/media/video/nexell/capture/nxp-vin-clipper.o 

C_DEPS += \
./drivers/media/video/nexell/capture/nxp-capture.d \
./drivers/media/video/nexell/capture/nxp-csi.d \
./drivers/media/video/nexell/capture/nxp-decimator.d \
./drivers/media/video/nexell/capture/nxp-vin-clipper.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/nexell/capture/%.o: ../drivers/media/video/nexell/capture/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


