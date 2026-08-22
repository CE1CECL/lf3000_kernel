################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/soc/txx9/txx9aclc-ac97.c \
../sound/soc/txx9/txx9aclc-generic.c \
../sound/soc/txx9/txx9aclc.c 

OBJS += \
./sound/soc/txx9/txx9aclc-ac97.o \
./sound/soc/txx9/txx9aclc-generic.o \
./sound/soc/txx9/txx9aclc.o 

C_DEPS += \
./sound/soc/txx9/txx9aclc-ac97.d \
./sound/soc/txx9/txx9aclc-generic.d \
./sound/soc/txx9/txx9aclc.d 


# Each subdirectory must supply rules for building sources it contributes
sound/soc/txx9/%.o: ../sound/soc/txx9/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


