################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/soc/nuc900/nuc900-ac97.c \
../sound/soc/nuc900/nuc900-audio.c \
../sound/soc/nuc900/nuc900-pcm.c 

OBJS += \
./sound/soc/nuc900/nuc900-ac97.o \
./sound/soc/nuc900/nuc900-audio.o \
./sound/soc/nuc900/nuc900-pcm.o 

C_DEPS += \
./sound/soc/nuc900/nuc900-ac97.d \
./sound/soc/nuc900/nuc900-audio.d \
./sound/soc/nuc900/nuc900-pcm.d 


# Each subdirectory must supply rules for building sources it contributes
sound/soc/nuc900/%.o: ../sound/soc/nuc900/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


