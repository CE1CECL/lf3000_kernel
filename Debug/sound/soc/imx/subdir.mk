################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/soc/imx/eukrea-tlv320.c \
../sound/soc/imx/imx-audmux.c \
../sound/soc/imx/imx-pcm-dma-mx2.c \
../sound/soc/imx/imx-pcm-fiq.c \
../sound/soc/imx/imx-pcm.c \
../sound/soc/imx/imx-ssi.c \
../sound/soc/imx/mx27vis-aic32x4.c \
../sound/soc/imx/phycore-ac97.c \
../sound/soc/imx/wm1133-ev1.c 

OBJS += \
./sound/soc/imx/eukrea-tlv320.o \
./sound/soc/imx/imx-audmux.o \
./sound/soc/imx/imx-pcm-dma-mx2.o \
./sound/soc/imx/imx-pcm-fiq.o \
./sound/soc/imx/imx-pcm.o \
./sound/soc/imx/imx-ssi.o \
./sound/soc/imx/mx27vis-aic32x4.o \
./sound/soc/imx/phycore-ac97.o \
./sound/soc/imx/wm1133-ev1.o 

C_DEPS += \
./sound/soc/imx/eukrea-tlv320.d \
./sound/soc/imx/imx-audmux.d \
./sound/soc/imx/imx-pcm-dma-mx2.d \
./sound/soc/imx/imx-pcm-fiq.d \
./sound/soc/imx/imx-pcm.d \
./sound/soc/imx/imx-ssi.d \
./sound/soc/imx/mx27vis-aic32x4.d \
./sound/soc/imx/phycore-ac97.d \
./sound/soc/imx/wm1133-ev1.d 


# Each subdirectory must supply rules for building sources it contributes
sound/soc/imx/%.o: ../sound/soc/imx/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


