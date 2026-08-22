################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/pci/aw2/aw2-alsa.c \
../sound/pci/aw2/aw2-saa7146.c \
../sound/pci/aw2/aw2-tsl.c 

OBJS += \
./sound/pci/aw2/aw2-alsa.o \
./sound/pci/aw2/aw2-saa7146.o \
./sound/pci/aw2/aw2-tsl.o 

C_DEPS += \
./sound/pci/aw2/aw2-alsa.d \
./sound/pci/aw2/aw2-saa7146.d \
./sound/pci/aw2/aw2-tsl.d 


# Each subdirectory must supply rules for building sources it contributes
sound/pci/aw2/%.o: ../sound/pci/aw2/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


