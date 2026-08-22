################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/video/omap2/built-in.o 

C_SRCS += \
../drivers/video/omap2/vram.c \
../drivers/video/omap2/vrfb.c 

OBJS += \
./drivers/video/omap2/vram.o \
./drivers/video/omap2/vrfb.o 

C_DEPS += \
./drivers/video/omap2/vram.d \
./drivers/video/omap2/vrfb.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/video/omap2/%.o: ../drivers/video/omap2/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


