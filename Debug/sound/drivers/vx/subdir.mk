################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/drivers/vx/vx_cmd.c \
../sound/drivers/vx/vx_core.c \
../sound/drivers/vx/vx_hwdep.c \
../sound/drivers/vx/vx_mixer.c \
../sound/drivers/vx/vx_pcm.c \
../sound/drivers/vx/vx_uer.c 

OBJS += \
./sound/drivers/vx/vx_cmd.o \
./sound/drivers/vx/vx_core.o \
./sound/drivers/vx/vx_hwdep.o \
./sound/drivers/vx/vx_mixer.o \
./sound/drivers/vx/vx_pcm.o \
./sound/drivers/vx/vx_uer.o 

C_DEPS += \
./sound/drivers/vx/vx_cmd.d \
./sound/drivers/vx/vx_core.d \
./sound/drivers/vx/vx_hwdep.d \
./sound/drivers/vx/vx_mixer.d \
./sound/drivers/vx/vx_pcm.d \
./sound/drivers/vx/vx_uer.d 


# Each subdirectory must supply rules for building sources it contributes
sound/drivers/vx/%.o: ../sound/drivers/vx/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


