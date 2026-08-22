################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/pci/cs5535audio/cs5535audio.c \
../sound/pci/cs5535audio/cs5535audio_olpc.c \
../sound/pci/cs5535audio/cs5535audio_pcm.c \
../sound/pci/cs5535audio/cs5535audio_pm.c 

OBJS += \
./sound/pci/cs5535audio/cs5535audio.o \
./sound/pci/cs5535audio/cs5535audio_olpc.o \
./sound/pci/cs5535audio/cs5535audio_pcm.o \
./sound/pci/cs5535audio/cs5535audio_pm.o 

C_DEPS += \
./sound/pci/cs5535audio/cs5535audio.d \
./sound/pci/cs5535audio/cs5535audio_olpc.d \
./sound/pci/cs5535audio/cs5535audio_pcm.d \
./sound/pci/cs5535audio/cs5535audio_pm.d 


# Each subdirectory must supply rules for building sources it contributes
sound/pci/cs5535audio/%.o: ../sound/pci/cs5535audio/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


