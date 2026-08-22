################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/pcmcia/vx/vxp_mixer.c \
../sound/pcmcia/vx/vxp_ops.c \
../sound/pcmcia/vx/vxpocket.c 

OBJS += \
./sound/pcmcia/vx/vxp_mixer.o \
./sound/pcmcia/vx/vxp_ops.o \
./sound/pcmcia/vx/vxpocket.o 

C_DEPS += \
./sound/pcmcia/vx/vxp_mixer.d \
./sound/pcmcia/vx/vxp_ops.d \
./sound/pcmcia/vx/vxpocket.d 


# Each subdirectory must supply rules for building sources it contributes
sound/pcmcia/vx/%.o: ../sound/pcmcia/vx/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


