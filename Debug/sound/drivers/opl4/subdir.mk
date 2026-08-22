################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/drivers/opl4/opl4_lib.c \
../sound/drivers/opl4/opl4_mixer.c \
../sound/drivers/opl4/opl4_proc.c \
../sound/drivers/opl4/opl4_seq.c \
../sound/drivers/opl4/opl4_synth.c \
../sound/drivers/opl4/yrw801.c 

OBJS += \
./sound/drivers/opl4/opl4_lib.o \
./sound/drivers/opl4/opl4_mixer.o \
./sound/drivers/opl4/opl4_proc.o \
./sound/drivers/opl4/opl4_seq.o \
./sound/drivers/opl4/opl4_synth.o \
./sound/drivers/opl4/yrw801.o 

C_DEPS += \
./sound/drivers/opl4/opl4_lib.d \
./sound/drivers/opl4/opl4_mixer.d \
./sound/drivers/opl4/opl4_proc.d \
./sound/drivers/opl4/opl4_seq.d \
./sound/drivers/opl4/opl4_synth.d \
./sound/drivers/opl4/yrw801.d 


# Each subdirectory must supply rules for building sources it contributes
sound/drivers/opl4/%.o: ../sound/drivers/opl4/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


