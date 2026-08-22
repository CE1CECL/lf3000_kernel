################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/s5p-fimc/fimc-capture.c \
../drivers/media/video/s5p-fimc/fimc-core.c \
../drivers/media/video/s5p-fimc/fimc-mdevice.c \
../drivers/media/video/s5p-fimc/fimc-reg.c \
../drivers/media/video/s5p-fimc/mipi-csis.c 

OBJS += \
./drivers/media/video/s5p-fimc/fimc-capture.o \
./drivers/media/video/s5p-fimc/fimc-core.o \
./drivers/media/video/s5p-fimc/fimc-mdevice.o \
./drivers/media/video/s5p-fimc/fimc-reg.o \
./drivers/media/video/s5p-fimc/mipi-csis.o 

C_DEPS += \
./drivers/media/video/s5p-fimc/fimc-capture.d \
./drivers/media/video/s5p-fimc/fimc-core.d \
./drivers/media/video/s5p-fimc/fimc-mdevice.d \
./drivers/media/video/s5p-fimc/fimc-reg.d \
./drivers/media/video/s5p-fimc/mipi-csis.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/s5p-fimc/%.o: ../drivers/media/video/s5p-fimc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


