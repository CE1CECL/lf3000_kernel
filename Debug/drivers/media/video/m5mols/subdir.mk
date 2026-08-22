################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/m5mols/m5mols_capture.c \
../drivers/media/video/m5mols/m5mols_controls.c \
../drivers/media/video/m5mols/m5mols_core.c 

OBJS += \
./drivers/media/video/m5mols/m5mols_capture.o \
./drivers/media/video/m5mols/m5mols_controls.o \
./drivers/media/video/m5mols/m5mols_core.o 

C_DEPS += \
./drivers/media/video/m5mols/m5mols_capture.d \
./drivers/media/video/m5mols/m5mols_controls.d \
./drivers/media/video/m5mols/m5mols_core.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/m5mols/%.o: ../drivers/media/video/m5mols/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


