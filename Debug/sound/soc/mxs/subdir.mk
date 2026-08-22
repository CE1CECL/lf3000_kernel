################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/soc/mxs/mxs-pcm.c \
../sound/soc/mxs/mxs-saif.c \
../sound/soc/mxs/mxs-sgtl5000.c 

OBJS += \
./sound/soc/mxs/mxs-pcm.o \
./sound/soc/mxs/mxs-saif.o \
./sound/soc/mxs/mxs-sgtl5000.o 

C_DEPS += \
./sound/soc/mxs/mxs-pcm.d \
./sound/soc/mxs/mxs-saif.d \
./sound/soc/mxs/mxs-sgtl5000.d 


# Each subdirectory must supply rules for building sources it contributes
sound/soc/mxs/%.o: ../sound/soc/mxs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


