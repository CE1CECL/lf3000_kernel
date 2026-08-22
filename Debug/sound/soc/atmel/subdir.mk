################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/soc/atmel/atmel-pcm.c \
../sound/soc/atmel/atmel_ssc_dai.c \
../sound/soc/atmel/sam9g20_wm8731.c \
../sound/soc/atmel/snd-soc-afeb9260.c 

OBJS += \
./sound/soc/atmel/atmel-pcm.o \
./sound/soc/atmel/atmel_ssc_dai.o \
./sound/soc/atmel/sam9g20_wm8731.o \
./sound/soc/atmel/snd-soc-afeb9260.o 

C_DEPS += \
./sound/soc/atmel/atmel-pcm.d \
./sound/soc/atmel/atmel_ssc_dai.d \
./sound/soc/atmel/sam9g20_wm8731.d \
./sound/soc/atmel/snd-soc-afeb9260.d 


# Each subdirectory must supply rules for building sources it contributes
sound/soc/atmel/%.o: ../sound/soc/atmel/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


