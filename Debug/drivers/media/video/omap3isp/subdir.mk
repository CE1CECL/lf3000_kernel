################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/omap3isp/isp.c \
../drivers/media/video/omap3isp/ispccdc.c \
../drivers/media/video/omap3isp/ispccp2.c \
../drivers/media/video/omap3isp/ispcsi2.c \
../drivers/media/video/omap3isp/ispcsiphy.c \
../drivers/media/video/omap3isp/isph3a_aewb.c \
../drivers/media/video/omap3isp/isph3a_af.c \
../drivers/media/video/omap3isp/isphist.c \
../drivers/media/video/omap3isp/isppreview.c \
../drivers/media/video/omap3isp/ispqueue.c \
../drivers/media/video/omap3isp/ispresizer.c \
../drivers/media/video/omap3isp/ispstat.c \
../drivers/media/video/omap3isp/ispvideo.c 

OBJS += \
./drivers/media/video/omap3isp/isp.o \
./drivers/media/video/omap3isp/ispccdc.o \
./drivers/media/video/omap3isp/ispccp2.o \
./drivers/media/video/omap3isp/ispcsi2.o \
./drivers/media/video/omap3isp/ispcsiphy.o \
./drivers/media/video/omap3isp/isph3a_aewb.o \
./drivers/media/video/omap3isp/isph3a_af.o \
./drivers/media/video/omap3isp/isphist.o \
./drivers/media/video/omap3isp/isppreview.o \
./drivers/media/video/omap3isp/ispqueue.o \
./drivers/media/video/omap3isp/ispresizer.o \
./drivers/media/video/omap3isp/ispstat.o \
./drivers/media/video/omap3isp/ispvideo.o 

C_DEPS += \
./drivers/media/video/omap3isp/isp.d \
./drivers/media/video/omap3isp/ispccdc.d \
./drivers/media/video/omap3isp/ispccp2.d \
./drivers/media/video/omap3isp/ispcsi2.d \
./drivers/media/video/omap3isp/ispcsiphy.d \
./drivers/media/video/omap3isp/isph3a_aewb.d \
./drivers/media/video/omap3isp/isph3a_af.d \
./drivers/media/video/omap3isp/isphist.d \
./drivers/media/video/omap3isp/isppreview.d \
./drivers/media/video/omap3isp/ispqueue.d \
./drivers/media/video/omap3isp/ispresizer.d \
./drivers/media/video/omap3isp/ispstat.d \
./drivers/media/video/omap3isp/ispvideo.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/omap3isp/%.o: ../drivers/media/video/omap3isp/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


