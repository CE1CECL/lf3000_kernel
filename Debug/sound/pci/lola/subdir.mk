################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/pci/lola/lola.c \
../sound/pci/lola/lola_clock.c \
../sound/pci/lola/lola_mixer.c \
../sound/pci/lola/lola_pcm.c \
../sound/pci/lola/lola_proc.c 

OBJS += \
./sound/pci/lola/lola.o \
./sound/pci/lola/lola_clock.o \
./sound/pci/lola/lola_mixer.o \
./sound/pci/lola/lola_pcm.o \
./sound/pci/lola/lola_proc.o 

C_DEPS += \
./sound/pci/lola/lola.d \
./sound/pci/lola/lola_clock.d \
./sound/pci/lola/lola_mixer.d \
./sound/pci/lola/lola_pcm.d \
./sound/pci/lola/lola_proc.d 


# Each subdirectory must supply rules for building sources it contributes
sound/pci/lola/%.o: ../sound/pci/lola/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


