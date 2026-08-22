################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/marvell-ccic/cafe-driver.c \
../drivers/media/video/marvell-ccic/mcam-core.c \
../drivers/media/video/marvell-ccic/mmp-driver.c 

OBJS += \
./drivers/media/video/marvell-ccic/cafe-driver.o \
./drivers/media/video/marvell-ccic/mcam-core.o \
./drivers/media/video/marvell-ccic/mmp-driver.o 

C_DEPS += \
./drivers/media/video/marvell-ccic/cafe-driver.d \
./drivers/media/video/marvell-ccic/mcam-core.d \
./drivers/media/video/marvell-ccic/mmp-driver.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/marvell-ccic/%.o: ../drivers/media/video/marvell-ccic/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


