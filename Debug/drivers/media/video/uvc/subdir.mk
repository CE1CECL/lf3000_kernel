################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/uvc/uvc_ctrl.c \
../drivers/media/video/uvc/uvc_debugfs.c \
../drivers/media/video/uvc/uvc_driver.c \
../drivers/media/video/uvc/uvc_entity.c \
../drivers/media/video/uvc/uvc_isight.c \
../drivers/media/video/uvc/uvc_queue.c \
../drivers/media/video/uvc/uvc_status.c \
../drivers/media/video/uvc/uvc_v4l2.c \
../drivers/media/video/uvc/uvc_video.c 

OBJS += \
./drivers/media/video/uvc/uvc_ctrl.o \
./drivers/media/video/uvc/uvc_debugfs.o \
./drivers/media/video/uvc/uvc_driver.o \
./drivers/media/video/uvc/uvc_entity.o \
./drivers/media/video/uvc/uvc_isight.o \
./drivers/media/video/uvc/uvc_queue.o \
./drivers/media/video/uvc/uvc_status.o \
./drivers/media/video/uvc/uvc_v4l2.o \
./drivers/media/video/uvc/uvc_video.o 

C_DEPS += \
./drivers/media/video/uvc/uvc_ctrl.d \
./drivers/media/video/uvc/uvc_debugfs.d \
./drivers/media/video/uvc/uvc_driver.d \
./drivers/media/video/uvc/uvc_entity.d \
./drivers/media/video/uvc/uvc_isight.d \
./drivers/media/video/uvc/uvc_queue.d \
./drivers/media/video/uvc/uvc_status.d \
./drivers/media/video/uvc/uvc_v4l2.d \
./drivers/media/video/uvc/uvc_video.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/uvc/%.o: ../drivers/media/video/uvc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


