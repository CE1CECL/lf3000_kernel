################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../Documentation/EDID/1024x768.S \
../Documentation/EDID/1280x1024.S \
../Documentation/EDID/1680x1050.S \
../Documentation/EDID/1920x1080.S \
../Documentation/EDID/edid.S 

OBJS += \
./Documentation/EDID/1024x768.o \
./Documentation/EDID/1280x1024.o \
./Documentation/EDID/1680x1050.o \
./Documentation/EDID/1920x1080.o \
./Documentation/EDID/edid.o 

S_UPPER_DEPS += \
./Documentation/EDID/1024x768.d \
./Documentation/EDID/1280x1024.d \
./Documentation/EDID/1680x1050.d \
./Documentation/EDID/1920x1080.d \
./Documentation/EDID/edid.d 


# Each subdirectory must supply rules for building sources it contributes
Documentation/EDID/%.o: ../Documentation/EDID/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC Assembler'
	arm-elf-gcc -x assembler-with-cpp -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


