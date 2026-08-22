################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/nexell/out/nxp-mlc.c \
../drivers/media/video/nexell/out/nxp-out.c \
../drivers/media/video/nexell/out/nxp-resc.c 

OBJS += \
./drivers/media/video/nexell/out/nxp-mlc.o \
./drivers/media/video/nexell/out/nxp-out.o \
./drivers/media/video/nexell/out/nxp-resc.o 

C_DEPS += \
./drivers/media/video/nexell/out/nxp-mlc.d \
./drivers/media/video/nexell/out/nxp-out.d \
./drivers/media/video/nexell/out/nxp-resc.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/nexell/out/%.o: ../drivers/media/video/nexell/out/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


