################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/soc/sh/dma-sh7760.c \
../sound/soc/sh/fsi-ak4642.c \
../sound/soc/sh/fsi-da7210.c \
../sound/soc/sh/fsi-hdmi.c \
../sound/soc/sh/fsi.c \
../sound/soc/sh/hac.c \
../sound/soc/sh/migor.c \
../sound/soc/sh/sh7760-ac97.c \
../sound/soc/sh/siu_dai.c \
../sound/soc/sh/siu_pcm.c \
../sound/soc/sh/ssi.c 

OBJS += \
./sound/soc/sh/dma-sh7760.o \
./sound/soc/sh/fsi-ak4642.o \
./sound/soc/sh/fsi-da7210.o \
./sound/soc/sh/fsi-hdmi.o \
./sound/soc/sh/fsi.o \
./sound/soc/sh/hac.o \
./sound/soc/sh/migor.o \
./sound/soc/sh/sh7760-ac97.o \
./sound/soc/sh/siu_dai.o \
./sound/soc/sh/siu_pcm.o \
./sound/soc/sh/ssi.o 

C_DEPS += \
./sound/soc/sh/dma-sh7760.d \
./sound/soc/sh/fsi-ak4642.d \
./sound/soc/sh/fsi-da7210.d \
./sound/soc/sh/fsi-hdmi.d \
./sound/soc/sh/fsi.d \
./sound/soc/sh/hac.d \
./sound/soc/sh/migor.d \
./sound/soc/sh/sh7760-ac97.d \
./sound/soc/sh/siu_dai.d \
./sound/soc/sh/siu_pcm.d \
./sound/soc/sh/ssi.d 


# Each subdirectory must supply rules for building sources it contributes
sound/soc/sh/%.o: ../sound/soc/sh/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


