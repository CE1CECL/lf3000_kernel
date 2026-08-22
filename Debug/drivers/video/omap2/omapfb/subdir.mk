################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/video/omap2/omapfb/omapfb-ioctl.c \
../drivers/video/omap2/omapfb/omapfb-main.c \
../drivers/video/omap2/omapfb/omapfb-sysfs.c 

OBJS += \
./drivers/video/omap2/omapfb/omapfb-ioctl.o \
./drivers/video/omap2/omapfb/omapfb-main.o \
./drivers/video/omap2/omapfb/omapfb-sysfs.o 

C_DEPS += \
./drivers/video/omap2/omapfb/omapfb-ioctl.d \
./drivers/video/omap2/omapfb/omapfb-main.d \
./drivers/video/omap2/omapfb/omapfb-sysfs.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/video/omap2/omapfb/%.o: ../drivers/video/omap2/omapfb/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


