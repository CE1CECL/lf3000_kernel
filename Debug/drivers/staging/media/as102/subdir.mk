################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/media/as102/as102_drv.c \
../drivers/staging/media/as102/as102_fe.c \
../drivers/staging/media/as102/as102_fw.c \
../drivers/staging/media/as102/as102_usb_drv.c \
../drivers/staging/media/as102/as10x_cmd.c \
../drivers/staging/media/as102/as10x_cmd_cfg.c \
../drivers/staging/media/as102/as10x_cmd_stream.c 

OBJS += \
./drivers/staging/media/as102/as102_drv.o \
./drivers/staging/media/as102/as102_fe.o \
./drivers/staging/media/as102/as102_fw.o \
./drivers/staging/media/as102/as102_usb_drv.o \
./drivers/staging/media/as102/as10x_cmd.o \
./drivers/staging/media/as102/as10x_cmd_cfg.o \
./drivers/staging/media/as102/as10x_cmd_stream.o 

C_DEPS += \
./drivers/staging/media/as102/as102_drv.d \
./drivers/staging/media/as102/as102_fe.d \
./drivers/staging/media/as102/as102_fw.d \
./drivers/staging/media/as102/as102_usb_drv.d \
./drivers/staging/media/as102/as10x_cmd.d \
./drivers/staging/media/as102/as10x_cmd_cfg.d \
./drivers/staging/media/as102/as10x_cmd_stream.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/media/as102/%.o: ../drivers/staging/media/as102/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


